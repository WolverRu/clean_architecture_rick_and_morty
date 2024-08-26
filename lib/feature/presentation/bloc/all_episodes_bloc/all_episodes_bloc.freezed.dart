// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_episodes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllEpisodesEvent {
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllEpisodesEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllEpisodesEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllEpisodesEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AllEpisodesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllEpisodesEventCopyWith<AllEpisodesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllEpisodesEventCopyWith<$Res> {
  factory $AllEpisodesEventCopyWith(
          AllEpisodesEvent value, $Res Function(AllEpisodesEvent) then) =
      _$AllEpisodesEventCopyWithImpl<$Res, AllEpisodesEvent>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class _$AllEpisodesEventCopyWithImpl<$Res, $Val extends AllEpisodesEvent>
    implements $AllEpisodesEventCopyWith<$Res> {
  _$AllEpisodesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllEpisodesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllEpisodesEventFetchImplCopyWith<$Res>
    implements $AllEpisodesEventCopyWith<$Res> {
  factory _$$AllEpisodesEventFetchImplCopyWith(
          _$AllEpisodesEventFetchImpl value,
          $Res Function(_$AllEpisodesEventFetchImpl) then) =
      __$$AllEpisodesEventFetchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$AllEpisodesEventFetchImplCopyWithImpl<$Res>
    extends _$AllEpisodesEventCopyWithImpl<$Res, _$AllEpisodesEventFetchImpl>
    implements _$$AllEpisodesEventFetchImplCopyWith<$Res> {
  __$$AllEpisodesEventFetchImplCopyWithImpl(_$AllEpisodesEventFetchImpl _value,
      $Res Function(_$AllEpisodesEventFetchImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllEpisodesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$AllEpisodesEventFetchImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AllEpisodesEventFetchImpl implements AllEpisodesEventFetch {
  const _$AllEpisodesEventFetchImpl({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'AllEpisodesEvent.fetch(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllEpisodesEventFetchImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  /// Create a copy of AllEpisodesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllEpisodesEventFetchImplCopyWith<_$AllEpisodesEventFetchImpl>
      get copyWith => __$$AllEpisodesEventFetchImplCopyWithImpl<
          _$AllEpisodesEventFetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetch,
  }) {
    return fetch(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? fetch,
  }) {
    return fetch?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllEpisodesEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllEpisodesEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllEpisodesEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class AllEpisodesEventFetch implements AllEpisodesEvent {
  const factory AllEpisodesEventFetch({required final int page}) =
      _$AllEpisodesEventFetchImpl;

  @override
  int get page;

  /// Create a copy of AllEpisodesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllEpisodesEventFetchImplCopyWith<_$AllEpisodesEventFetchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AllEpisodesState _$AllEpisodesStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return AllEpisodesStateLoading.fromJson(json);
    case 'loaded':
      return AllEpisodesStateLoaded.fromJson(json);
    case 'error':
      return AllEpisodesStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AllEpisodesState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AllEpisodesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic episode) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic episode)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic episode)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllEpisodesStateLoading value) loading,
    required TResult Function(AllEpisodesStateLoaded value) loaded,
    required TResult Function(AllEpisodesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllEpisodesStateLoading value)? loading,
    TResult? Function(AllEpisodesStateLoaded value)? loaded,
    TResult? Function(AllEpisodesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllEpisodesStateLoading value)? loading,
    TResult Function(AllEpisodesStateLoaded value)? loaded,
    TResult Function(AllEpisodesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AllEpisodesState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllEpisodesStateCopyWith<$Res> {
  factory $AllEpisodesStateCopyWith(
          AllEpisodesState value, $Res Function(AllEpisodesState) then) =
      _$AllEpisodesStateCopyWithImpl<$Res, AllEpisodesState>;
}

/// @nodoc
class _$AllEpisodesStateCopyWithImpl<$Res, $Val extends AllEpisodesState>
    implements $AllEpisodesStateCopyWith<$Res> {
  _$AllEpisodesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllEpisodesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AllEpisodesStateLoadingImplCopyWith<$Res> {
  factory _$$AllEpisodesStateLoadingImplCopyWith(
          _$AllEpisodesStateLoadingImpl value,
          $Res Function(_$AllEpisodesStateLoadingImpl) then) =
      __$$AllEpisodesStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllEpisodesStateLoadingImplCopyWithImpl<$Res>
    extends _$AllEpisodesStateCopyWithImpl<$Res, _$AllEpisodesStateLoadingImpl>
    implements _$$AllEpisodesStateLoadingImplCopyWith<$Res> {
  __$$AllEpisodesStateLoadingImplCopyWithImpl(
      _$AllEpisodesStateLoadingImpl _value,
      $Res Function(_$AllEpisodesStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllEpisodesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$AllEpisodesStateLoadingImpl implements AllEpisodesStateLoading {
  const _$AllEpisodesStateLoadingImpl({final String? $type})
      : $type = $type ?? 'loading';

  factory _$AllEpisodesStateLoadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllEpisodesStateLoadingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AllEpisodesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllEpisodesStateLoadingImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic episode) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic episode)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic episode)? loaded,
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
    required TResult Function(AllEpisodesStateLoading value) loading,
    required TResult Function(AllEpisodesStateLoaded value) loaded,
    required TResult Function(AllEpisodesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllEpisodesStateLoading value)? loading,
    TResult? Function(AllEpisodesStateLoaded value)? loaded,
    TResult? Function(AllEpisodesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllEpisodesStateLoading value)? loading,
    TResult Function(AllEpisodesStateLoaded value)? loaded,
    TResult Function(AllEpisodesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AllEpisodesStateLoadingImplToJson(
      this,
    );
  }
}

abstract class AllEpisodesStateLoading implements AllEpisodesState {
  const factory AllEpisodesStateLoading() = _$AllEpisodesStateLoadingImpl;

  factory AllEpisodesStateLoading.fromJson(Map<String, dynamic> json) =
      _$AllEpisodesStateLoadingImpl.fromJson;
}

/// @nodoc
abstract class _$$AllEpisodesStateLoadedImplCopyWith<$Res> {
  factory _$$AllEpisodesStateLoadedImplCopyWith(
          _$AllEpisodesStateLoadedImpl value,
          $Res Function(_$AllEpisodesStateLoadedImpl) then) =
      __$$AllEpisodesStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic episode});
}

/// @nodoc
class __$$AllEpisodesStateLoadedImplCopyWithImpl<$Res>
    extends _$AllEpisodesStateCopyWithImpl<$Res, _$AllEpisodesStateLoadedImpl>
    implements _$$AllEpisodesStateLoadedImplCopyWith<$Res> {
  __$$AllEpisodesStateLoadedImplCopyWithImpl(
      _$AllEpisodesStateLoadedImpl _value,
      $Res Function(_$AllEpisodesStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllEpisodesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episode = freezed,
  }) {
    return _then(_$AllEpisodesStateLoadedImpl(
      episode: freezed == episode ? _value.episode! : episode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllEpisodesStateLoadedImpl implements AllEpisodesStateLoaded {
  const _$AllEpisodesStateLoadedImpl({this.episode, final String? $type})
      : $type = $type ?? 'loaded';

  factory _$AllEpisodesStateLoadedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllEpisodesStateLoadedImplFromJson(json);

  @override
  final dynamic episode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AllEpisodesState.loaded(episode: $episode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllEpisodesStateLoadedImpl &&
            const DeepCollectionEquality().equals(other.episode, episode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(episode));

  /// Create a copy of AllEpisodesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllEpisodesStateLoadedImplCopyWith<_$AllEpisodesStateLoadedImpl>
      get copyWith => __$$AllEpisodesStateLoadedImplCopyWithImpl<
          _$AllEpisodesStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic episode) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(episode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic episode)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(episode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic episode)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(episode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllEpisodesStateLoading value) loading,
    required TResult Function(AllEpisodesStateLoaded value) loaded,
    required TResult Function(AllEpisodesStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllEpisodesStateLoading value)? loading,
    TResult? Function(AllEpisodesStateLoaded value)? loaded,
    TResult? Function(AllEpisodesStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllEpisodesStateLoading value)? loading,
    TResult Function(AllEpisodesStateLoaded value)? loaded,
    TResult Function(AllEpisodesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AllEpisodesStateLoadedImplToJson(
      this,
    );
  }
}

abstract class AllEpisodesStateLoaded implements AllEpisodesState {
  const factory AllEpisodesStateLoaded({final dynamic episode}) =
      _$AllEpisodesStateLoadedImpl;

  factory AllEpisodesStateLoaded.fromJson(Map<String, dynamic> json) =
      _$AllEpisodesStateLoadedImpl.fromJson;

  dynamic get episode;

  /// Create a copy of AllEpisodesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllEpisodesStateLoadedImplCopyWith<_$AllEpisodesStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllEpisodesStateErrorImplCopyWith<$Res> {
  factory _$$AllEpisodesStateErrorImplCopyWith(
          _$AllEpisodesStateErrorImpl value,
          $Res Function(_$AllEpisodesStateErrorImpl) then) =
      __$$AllEpisodesStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AllEpisodesStateErrorImplCopyWithImpl<$Res>
    extends _$AllEpisodesStateCopyWithImpl<$Res, _$AllEpisodesStateErrorImpl>
    implements _$$AllEpisodesStateErrorImplCopyWith<$Res> {
  __$$AllEpisodesStateErrorImplCopyWithImpl(_$AllEpisodesStateErrorImpl _value,
      $Res Function(_$AllEpisodesStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllEpisodesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AllEpisodesStateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllEpisodesStateErrorImpl implements AllEpisodesStateError {
  const _$AllEpisodesStateErrorImpl(
      {required this.message, final String? $type})
      : $type = $type ?? 'error';

  factory _$AllEpisodesStateErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllEpisodesStateErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AllEpisodesState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllEpisodesStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AllEpisodesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllEpisodesStateErrorImplCopyWith<_$AllEpisodesStateErrorImpl>
      get copyWith => __$$AllEpisodesStateErrorImplCopyWithImpl<
          _$AllEpisodesStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic episode) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic episode)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic episode)? loaded,
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
    required TResult Function(AllEpisodesStateLoading value) loading,
    required TResult Function(AllEpisodesStateLoaded value) loaded,
    required TResult Function(AllEpisodesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllEpisodesStateLoading value)? loading,
    TResult? Function(AllEpisodesStateLoaded value)? loaded,
    TResult? Function(AllEpisodesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllEpisodesStateLoading value)? loading,
    TResult Function(AllEpisodesStateLoaded value)? loaded,
    TResult Function(AllEpisodesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AllEpisodesStateErrorImplToJson(
      this,
    );
  }
}

abstract class AllEpisodesStateError implements AllEpisodesState {
  const factory AllEpisodesStateError({required final String message}) =
      _$AllEpisodesStateErrorImpl;

  factory AllEpisodesStateError.fromJson(Map<String, dynamic> json) =
      _$AllEpisodesStateErrorImpl.fromJson;

  String get message;

  /// Create a copy of AllEpisodesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllEpisodesStateErrorImplCopyWith<_$AllEpisodesStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
