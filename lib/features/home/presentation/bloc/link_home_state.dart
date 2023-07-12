part of 'link_home_bloc.dart';

@freezed
class LinkHomeState with _$LinkHomeState{
  const factory LinkHomeState.loading() = _LoadingState;
  const factory LinkHomeState.fetchedAllLinkDetials(List<LinkDetails> linkDetails, List<Tag> tags) = _FetchedAllLinkDetailsState;
  const factory LinkHomeState.storedLinkDetails() = _StoredLinkDetailsState;
  const factory LinkHomeState.error(String message) = _ErrorState;
}