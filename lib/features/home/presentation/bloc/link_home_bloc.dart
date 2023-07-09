import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
  }) : super(const LinkHomeState.loading());

  Stream<LinkHomeState> mapEventToState(LinkHomeEvent event) async* {
    if (event is _GetAllLinkDetailsEvent) {
      yield const LinkHomeState.loading();
    }
  }
}
