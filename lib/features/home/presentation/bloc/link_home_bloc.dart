import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linkemo/features/home/domain/entity/link_details.dart';
import 'package:linkemo/features/home/domain/usecase/get_all_link_details.dart';
import 'package:linkemo/features/home/domain/usecase/store_link_details.dart';

part 'link_home_event.dart';
part 'link_home_state.dart';
part 'link_home_bloc.freezed.dart';

class LinkHomeBloc extends Bloc<LinkHomeEvent, LinkHomeState> {
  final GetAllLinkDetails getAllLinkDetails;
  final StoreLinkDetails storeLinkDetails;

  LinkHomeBloc({
    required this.getAllLinkDetails,
    required this.storeLinkDetails,
  }) : super(const LinkHomeState.loading()) {
    on<_GetAllLinkDetailsEvent>(_GetAllLinkDetailsEventHandler);
    on<_StoreLinkDetailsEvent>(_StoreLinkDetailsEventHandler);
  }

  Future<void> _GetAllLinkDetailsEventHandler(
      _GetAllLinkDetailsEvent event, Emitter<LinkHomeState> emit) async {
    emit(const LinkHomeState.loading());

    final result = await getAllLinkDetails();

    result.fold(
      (failure) {
        emit(LinkHomeState.error(failure));
      },
      (linkDetails) {
        emit(LinkHomeState.fetchedAllLinkDetials(linkDetails));
      },
    );
  }

  Future<void> _StoreLinkDetailsEventHandler(
      _StoreLinkDetailsEvent event, Emitter<LinkHomeState> emit) async {
    await storeLinkDetails(event.linkDetails);
    
    emit(const LinkHomeState.storedLinkDetails());
  }
}
