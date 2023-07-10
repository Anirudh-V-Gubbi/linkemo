part of 'link_home_bloc.dart';

@freezed
class LinkHomeEvent with _$LinkHomeEvent{
  const factory LinkHomeEvent.getAllLinkDetails() = _GetAllLinkDetailsEvent;
  const factory LinkHomeEvent.storeLinkDetails(LinkDetails linkDetails) = _StoreLinkDetailsEvent;
}