import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_home_event.dart';
part 'link_home_state.dart';
part 'link_home_bloc.freezed.dart';

class LinkHomeBloc extends Bloc<LinkHomeEvent, LinkHomeState> {
  LinkHomeBloc() : super(const LinkHomeState.loading());

  Stream<LinkHomeState> mapEventToState(LinkHomeEvent event) async*{
    if(event is _GetAllLinkDetailsEvent) {
      yield const LinkHomeState.loading();
    }
  }

}