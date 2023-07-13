import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linkemo/features/home/data/model/tag_model.dart';
import 'package:linkemo/features/home/domain/entity/link_details.dart';
import 'package:linkemo/features/home/domain/entity/tag.dart';
import 'package:linkemo/features/home/domain/usecase/get_all_link_details.dart';
import 'package:linkemo/features/home/domain/usecase/get_all_tags.dart';
import 'package:linkemo/features/home/domain/usecase/store_link_details.dart';
import 'package:linkemo/features/home/domain/usecase/store_tag.dart';

part 'link_home_event.dart';
part 'link_home_state.dart';
part 'link_home_bloc.freezed.dart';

class LinkHomeBloc extends Bloc<LinkHomeEvent, LinkHomeState> {
  final GetAllLinkDetails getAllLinkDetails;
  final StoreLinkDetails storeLinkDetails;
  final GetAllTags getAllTags;
  final StoreTag storeTag;

  List<Tag> tags = [];

  LinkHomeBloc({
    required this.getAllLinkDetails,
    required this.storeLinkDetails,
    required this.getAllTags,
    required this.storeTag,
  }) : super(const LinkHomeState.loading()) {
    on<_GetAllLinkDetailsEvent>(_GetAllLinkDetailsEventHandler);
    on<_StoreLinkDetailsEvent>(_StoreLinkDetailsEventHandler);
  }

  Future<void> _GetAllLinkDetailsEventHandler(
      _GetAllLinkDetailsEvent event, Emitter<LinkHomeState> emit) async {
    emit(const LinkHomeState.loading());

    final result = await getAllLinkDetails();

    await result.fold(
      (failure) {
        emit(LinkHomeState.error(failure));
      },
      (linkDetails) async {
        final tagResult = await getAllTags();

        tagResult.fold((failure) {
          emit(LinkHomeState.error(failure));
        }, (tags) {
          this.tags = tags;
          emit(LinkHomeState.fetchedAllLinkDetials(linkDetails, tags));
        });
      },
    );
  }

  Future<void> _StoreLinkDetailsEventHandler(
      _StoreLinkDetailsEvent event, Emitter<LinkHomeState> emit) async {
    await storeLinkDetails(event.linkDetails);

    final List<Tag> newTags = List.from(event.linkDetails.tags ?? []);
    newTags.removeWhere((ele) => tags.contains(ele));
    if (newTags.isNotEmpty) {
      await storeTag(newTags);
    }

    emit(const LinkHomeState.storedLinkDetails());
  }
}
