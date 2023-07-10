// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LinkHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllLinkDetails,
    required TResult Function(LinkDetails linkDetails) storeLinkDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllLinkDetails,
    TResult? Function(LinkDetails linkDetails)? storeLinkDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllLinkDetails,
    TResult Function(LinkDetails linkDetails)? storeLinkDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllLinkDetailsEvent value) getAllLinkDetails,
    required TResult Function(_StoreLinkDetailsEvent value) storeLinkDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllLinkDetailsEvent value)? getAllLinkDetails,
    TResult? Function(_StoreLinkDetailsEvent value)? storeLinkDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllLinkDetailsEvent value)? getAllLinkDetails,
    TResult Function(_StoreLinkDetailsEvent value)? storeLinkDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkHomeEventCopyWith<$Res> {
  factory $LinkHomeEventCopyWith(
          LinkHomeEvent value, $Res Function(LinkHomeEvent) then) =
      _$LinkHomeEventCopyWithImpl<$Res, LinkHomeEvent>;
}

/// @nodoc
class _$LinkHomeEventCopyWithImpl<$Res, $Val extends LinkHomeEvent>
    implements $LinkHomeEventCopyWith<$Res> {
  _$LinkHomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetAllLinkDetailsEventCopyWith<$Res> {
  factory _$$_GetAllLinkDetailsEventCopyWith(_$_GetAllLinkDetailsEvent value,
          $Res Function(_$_GetAllLinkDetailsEvent) then) =
      __$$_GetAllLinkDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllLinkDetailsEventCopyWithImpl<$Res>
    extends _$LinkHomeEventCopyWithImpl<$Res, _$_GetAllLinkDetailsEvent>
    implements _$$_GetAllLinkDetailsEventCopyWith<$Res> {
  __$$_GetAllLinkDetailsEventCopyWithImpl(_$_GetAllLinkDetailsEvent _value,
      $Res Function(_$_GetAllLinkDetailsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAllLinkDetailsEvent implements _GetAllLinkDetailsEvent {
  const _$_GetAllLinkDetailsEvent();

  @override
  String toString() {
    return 'LinkHomeEvent.getAllLinkDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllLinkDetailsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllLinkDetails,
    required TResult Function(LinkDetails linkDetails) storeLinkDetails,
  }) {
    return getAllLinkDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllLinkDetails,
    TResult? Function(LinkDetails linkDetails)? storeLinkDetails,
  }) {
    return getAllLinkDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllLinkDetails,
    TResult Function(LinkDetails linkDetails)? storeLinkDetails,
    required TResult orElse(),
  }) {
    if (getAllLinkDetails != null) {
      return getAllLinkDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllLinkDetailsEvent value) getAllLinkDetails,
    required TResult Function(_StoreLinkDetailsEvent value) storeLinkDetails,
  }) {
    return getAllLinkDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllLinkDetailsEvent value)? getAllLinkDetails,
    TResult? Function(_StoreLinkDetailsEvent value)? storeLinkDetails,
  }) {
    return getAllLinkDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllLinkDetailsEvent value)? getAllLinkDetails,
    TResult Function(_StoreLinkDetailsEvent value)? storeLinkDetails,
    required TResult orElse(),
  }) {
    if (getAllLinkDetails != null) {
      return getAllLinkDetails(this);
    }
    return orElse();
  }
}

abstract class _GetAllLinkDetailsEvent implements LinkHomeEvent {
  const factory _GetAllLinkDetailsEvent() = _$_GetAllLinkDetailsEvent;
}

/// @nodoc
abstract class _$$_StoreLinkDetailsEventCopyWith<$Res> {
  factory _$$_StoreLinkDetailsEventCopyWith(_$_StoreLinkDetailsEvent value,
          $Res Function(_$_StoreLinkDetailsEvent) then) =
      __$$_StoreLinkDetailsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({LinkDetails linkDetails});
}

/// @nodoc
class __$$_StoreLinkDetailsEventCopyWithImpl<$Res>
    extends _$LinkHomeEventCopyWithImpl<$Res, _$_StoreLinkDetailsEvent>
    implements _$$_StoreLinkDetailsEventCopyWith<$Res> {
  __$$_StoreLinkDetailsEventCopyWithImpl(_$_StoreLinkDetailsEvent _value,
      $Res Function(_$_StoreLinkDetailsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkDetails = null,
  }) {
    return _then(_$_StoreLinkDetailsEvent(
      null == linkDetails
          ? _value.linkDetails
          : linkDetails // ignore: cast_nullable_to_non_nullable
              as LinkDetails,
    ));
  }
}

/// @nodoc

class _$_StoreLinkDetailsEvent implements _StoreLinkDetailsEvent {
  const _$_StoreLinkDetailsEvent(this.linkDetails);

  @override
  final LinkDetails linkDetails;

  @override
  String toString() {
    return 'LinkHomeEvent.storeLinkDetails(linkDetails: $linkDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoreLinkDetailsEvent &&
            (identical(other.linkDetails, linkDetails) ||
                other.linkDetails == linkDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, linkDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreLinkDetailsEventCopyWith<_$_StoreLinkDetailsEvent> get copyWith =>
      __$$_StoreLinkDetailsEventCopyWithImpl<_$_StoreLinkDetailsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllLinkDetails,
    required TResult Function(LinkDetails linkDetails) storeLinkDetails,
  }) {
    return storeLinkDetails(linkDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllLinkDetails,
    TResult? Function(LinkDetails linkDetails)? storeLinkDetails,
  }) {
    return storeLinkDetails?.call(linkDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllLinkDetails,
    TResult Function(LinkDetails linkDetails)? storeLinkDetails,
    required TResult orElse(),
  }) {
    if (storeLinkDetails != null) {
      return storeLinkDetails(linkDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllLinkDetailsEvent value) getAllLinkDetails,
    required TResult Function(_StoreLinkDetailsEvent value) storeLinkDetails,
  }) {
    return storeLinkDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllLinkDetailsEvent value)? getAllLinkDetails,
    TResult? Function(_StoreLinkDetailsEvent value)? storeLinkDetails,
  }) {
    return storeLinkDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllLinkDetailsEvent value)? getAllLinkDetails,
    TResult Function(_StoreLinkDetailsEvent value)? storeLinkDetails,
    required TResult orElse(),
  }) {
    if (storeLinkDetails != null) {
      return storeLinkDetails(this);
    }
    return orElse();
  }
}

abstract class _StoreLinkDetailsEvent implements LinkHomeEvent {
  const factory _StoreLinkDetailsEvent(final LinkDetails linkDetails) =
      _$_StoreLinkDetailsEvent;

  LinkDetails get linkDetails;
  @JsonKey(ignore: true)
  _$$_StoreLinkDetailsEventCopyWith<_$_StoreLinkDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LinkHomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<LinkDetails> linkDetails)
        fetchedAllLinkDetials,
    required TResult Function() storedLinkDetails,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<LinkDetails> linkDetails)? fetchedAllLinkDetials,
    TResult? Function()? storedLinkDetails,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<LinkDetails> linkDetails)? fetchedAllLinkDetials,
    TResult Function()? storedLinkDetails,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_FetchedAllLinkDetailsState value)
        fetchedAllLinkDetials,
    required TResult Function(_StoredLinkDetailsState value) storedLinkDetails,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_FetchedAllLinkDetailsState value)? fetchedAllLinkDetials,
    TResult? Function(_StoredLinkDetailsState value)? storedLinkDetails,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_FetchedAllLinkDetailsState value)? fetchedAllLinkDetials,
    TResult Function(_StoredLinkDetailsState value)? storedLinkDetails,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkHomeStateCopyWith<$Res> {
  factory $LinkHomeStateCopyWith(
          LinkHomeState value, $Res Function(LinkHomeState) then) =
      _$LinkHomeStateCopyWithImpl<$Res, LinkHomeState>;
}

/// @nodoc
class _$LinkHomeStateCopyWithImpl<$Res, $Val extends LinkHomeState>
    implements $LinkHomeStateCopyWith<$Res> {
  _$LinkHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$LinkHomeStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'LinkHomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<LinkDetails> linkDetails)
        fetchedAllLinkDetials,
    required TResult Function() storedLinkDetails,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<LinkDetails> linkDetails)? fetchedAllLinkDetials,
    TResult? Function()? storedLinkDetails,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<LinkDetails> linkDetails)? fetchedAllLinkDetials,
    TResult Function()? storedLinkDetails,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_FetchedAllLinkDetailsState value)
        fetchedAllLinkDetials,
    required TResult Function(_StoredLinkDetailsState value) storedLinkDetails,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_FetchedAllLinkDetailsState value)? fetchedAllLinkDetials,
    TResult? Function(_StoredLinkDetailsState value)? storedLinkDetails,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_FetchedAllLinkDetailsState value)? fetchedAllLinkDetials,
    TResult Function(_StoredLinkDetailsState value)? storedLinkDetails,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements LinkHomeState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_FetchedAllLinkDetailsStateCopyWith<$Res> {
  factory _$$_FetchedAllLinkDetailsStateCopyWith(
          _$_FetchedAllLinkDetailsState value,
          $Res Function(_$_FetchedAllLinkDetailsState) then) =
      __$$_FetchedAllLinkDetailsStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LinkDetails> linkDetails});
}

/// @nodoc
class __$$_FetchedAllLinkDetailsStateCopyWithImpl<$Res>
    extends _$LinkHomeStateCopyWithImpl<$Res, _$_FetchedAllLinkDetailsState>
    implements _$$_FetchedAllLinkDetailsStateCopyWith<$Res> {
  __$$_FetchedAllLinkDetailsStateCopyWithImpl(
      _$_FetchedAllLinkDetailsState _value,
      $Res Function(_$_FetchedAllLinkDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkDetails = null,
  }) {
    return _then(_$_FetchedAllLinkDetailsState(
      null == linkDetails
          ? _value._linkDetails
          : linkDetails // ignore: cast_nullable_to_non_nullable
              as List<LinkDetails>,
    ));
  }
}

/// @nodoc

class _$_FetchedAllLinkDetailsState implements _FetchedAllLinkDetailsState {
  const _$_FetchedAllLinkDetailsState(final List<LinkDetails> linkDetails)
      : _linkDetails = linkDetails;

  final List<LinkDetails> _linkDetails;
  @override
  List<LinkDetails> get linkDetails {
    if (_linkDetails is EqualUnmodifiableListView) return _linkDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_linkDetails);
  }

  @override
  String toString() {
    return 'LinkHomeState.fetchedAllLinkDetials(linkDetails: $linkDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchedAllLinkDetailsState &&
            const DeepCollectionEquality()
                .equals(other._linkDetails, _linkDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_linkDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchedAllLinkDetailsStateCopyWith<_$_FetchedAllLinkDetailsState>
      get copyWith => __$$_FetchedAllLinkDetailsStateCopyWithImpl<
          _$_FetchedAllLinkDetailsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<LinkDetails> linkDetails)
        fetchedAllLinkDetials,
    required TResult Function() storedLinkDetails,
    required TResult Function(String message) error,
  }) {
    return fetchedAllLinkDetials(linkDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<LinkDetails> linkDetails)? fetchedAllLinkDetials,
    TResult? Function()? storedLinkDetails,
    TResult? Function(String message)? error,
  }) {
    return fetchedAllLinkDetials?.call(linkDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<LinkDetails> linkDetails)? fetchedAllLinkDetials,
    TResult Function()? storedLinkDetails,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (fetchedAllLinkDetials != null) {
      return fetchedAllLinkDetials(linkDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_FetchedAllLinkDetailsState value)
        fetchedAllLinkDetials,
    required TResult Function(_StoredLinkDetailsState value) storedLinkDetails,
    required TResult Function(_ErrorState value) error,
  }) {
    return fetchedAllLinkDetials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_FetchedAllLinkDetailsState value)? fetchedAllLinkDetials,
    TResult? Function(_StoredLinkDetailsState value)? storedLinkDetails,
    TResult? Function(_ErrorState value)? error,
  }) {
    return fetchedAllLinkDetials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_FetchedAllLinkDetailsState value)? fetchedAllLinkDetials,
    TResult Function(_StoredLinkDetailsState value)? storedLinkDetails,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (fetchedAllLinkDetials != null) {
      return fetchedAllLinkDetials(this);
    }
    return orElse();
  }
}

abstract class _FetchedAllLinkDetailsState implements LinkHomeState {
  const factory _FetchedAllLinkDetailsState(
      final List<LinkDetails> linkDetails) = _$_FetchedAllLinkDetailsState;

  List<LinkDetails> get linkDetails;
  @JsonKey(ignore: true)
  _$$_FetchedAllLinkDetailsStateCopyWith<_$_FetchedAllLinkDetailsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StoredLinkDetailsStateCopyWith<$Res> {
  factory _$$_StoredLinkDetailsStateCopyWith(_$_StoredLinkDetailsState value,
          $Res Function(_$_StoredLinkDetailsState) then) =
      __$$_StoredLinkDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StoredLinkDetailsStateCopyWithImpl<$Res>
    extends _$LinkHomeStateCopyWithImpl<$Res, _$_StoredLinkDetailsState>
    implements _$$_StoredLinkDetailsStateCopyWith<$Res> {
  __$$_StoredLinkDetailsStateCopyWithImpl(_$_StoredLinkDetailsState _value,
      $Res Function(_$_StoredLinkDetailsState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StoredLinkDetailsState implements _StoredLinkDetailsState {
  const _$_StoredLinkDetailsState();

  @override
  String toString() {
    return 'LinkHomeState.storedLinkDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoredLinkDetailsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<LinkDetails> linkDetails)
        fetchedAllLinkDetials,
    required TResult Function() storedLinkDetails,
    required TResult Function(String message) error,
  }) {
    return storedLinkDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<LinkDetails> linkDetails)? fetchedAllLinkDetials,
    TResult? Function()? storedLinkDetails,
    TResult? Function(String message)? error,
  }) {
    return storedLinkDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<LinkDetails> linkDetails)? fetchedAllLinkDetials,
    TResult Function()? storedLinkDetails,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (storedLinkDetails != null) {
      return storedLinkDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_FetchedAllLinkDetailsState value)
        fetchedAllLinkDetials,
    required TResult Function(_StoredLinkDetailsState value) storedLinkDetails,
    required TResult Function(_ErrorState value) error,
  }) {
    return storedLinkDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_FetchedAllLinkDetailsState value)? fetchedAllLinkDetials,
    TResult? Function(_StoredLinkDetailsState value)? storedLinkDetails,
    TResult? Function(_ErrorState value)? error,
  }) {
    return storedLinkDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_FetchedAllLinkDetailsState value)? fetchedAllLinkDetials,
    TResult Function(_StoredLinkDetailsState value)? storedLinkDetails,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (storedLinkDetails != null) {
      return storedLinkDetails(this);
    }
    return orElse();
  }
}

abstract class _StoredLinkDetailsState implements LinkHomeState {
  const factory _StoredLinkDetailsState() = _$_StoredLinkDetailsState;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$LinkHomeStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorState implements _ErrorState {
  const _$_ErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LinkHomeState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<LinkDetails> linkDetails)
        fetchedAllLinkDetials,
    required TResult Function() storedLinkDetails,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<LinkDetails> linkDetails)? fetchedAllLinkDetials,
    TResult? Function()? storedLinkDetails,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<LinkDetails> linkDetails)? fetchedAllLinkDetials,
    TResult Function()? storedLinkDetails,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_FetchedAllLinkDetailsState value)
        fetchedAllLinkDetials,
    required TResult Function(_StoredLinkDetailsState value) storedLinkDetails,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_FetchedAllLinkDetailsState value)? fetchedAllLinkDetials,
    TResult? Function(_StoredLinkDetailsState value)? storedLinkDetails,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_FetchedAllLinkDetailsState value)? fetchedAllLinkDetials,
    TResult Function(_StoredLinkDetailsState value)? storedLinkDetails,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements LinkHomeState {
  const factory _ErrorState(final String message) = _$_ErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
