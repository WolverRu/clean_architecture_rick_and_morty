// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PersonListEvent {
  String get name => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int page) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int page)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int page)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonListEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonListEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonListEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PersonListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonListEventCopyWith<PersonListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonListEventCopyWith<$Res> {
  factory $PersonListEventCopyWith(
          PersonListEvent value, $Res Function(PersonListEvent) then) =
      _$PersonListEventCopyWithImpl<$Res, PersonListEvent>;
  @useResult
  $Res call({String name, int page});
}

/// @nodoc
class _$PersonListEventCopyWithImpl<$Res, $Val extends PersonListEvent>
    implements $PersonListEventCopyWith<$Res> {
  _$PersonListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonListEventFetchImplCopyWith<$Res>
    implements $PersonListEventCopyWith<$Res> {
  factory _$$PersonListEventFetchImplCopyWith(_$PersonListEventFetchImpl value,
          $Res Function(_$PersonListEventFetchImpl) then) =
      __$$PersonListEventFetchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int page});
}

/// @nodoc
class __$$PersonListEventFetchImplCopyWithImpl<$Res>
    extends _$PersonListEventCopyWithImpl<$Res, _$PersonListEventFetchImpl>
    implements _$$PersonListEventFetchImplCopyWith<$Res> {
  __$$PersonListEventFetchImplCopyWithImpl(_$PersonListEventFetchImpl _value,
      $Res Function(_$PersonListEventFetchImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? page = null,
  }) {
    return _then(_$PersonListEventFetchImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PersonListEventFetchImpl implements PersonListEventFetch {
  const _$PersonListEventFetchImpl({required this.name, required this.page});

  @override
  final String name;
  @override
  final int page;

  @override
  String toString() {
    return 'PersonListEvent.fetch(name: $name, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonListEventFetchImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, page);

  /// Create a copy of PersonListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonListEventFetchImplCopyWith<_$PersonListEventFetchImpl>
      get copyWith =>
          __$$PersonListEventFetchImplCopyWithImpl<_$PersonListEventFetchImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int page) fetch,
  }) {
    return fetch(name, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int page)? fetch,
  }) {
    return fetch?.call(name, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int page)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(name, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonListEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonListEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonListEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class PersonListEventFetch implements PersonListEvent {
  const factory PersonListEventFetch(
      {required final String name,
      required final int page}) = _$PersonListEventFetchImpl;

  @override
  String get name;
  @override
  int get page;

  /// Create a copy of PersonListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonListEventFetchImplCopyWith<_$PersonListEventFetchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PersonListState _$PersonListStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return PersonListStateLoading.fromJson(json);
    case 'loaded':
      return PersonListStateLoaded.fromJson(json);
    case 'error':
      return PersonListStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PersonListState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PersonListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic person) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic person)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic person)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonListStateLoading value) loading,
    required TResult Function(PersonListStateLoaded value) loaded,
    required TResult Function(PersonListStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonListStateLoading value)? loading,
    TResult? Function(PersonListStateLoaded value)? loaded,
    TResult? Function(PersonListStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonListStateLoading value)? loading,
    TResult Function(PersonListStateLoaded value)? loaded,
    TResult Function(PersonListStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PersonListState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonListStateCopyWith<$Res> {
  factory $PersonListStateCopyWith(
          PersonListState value, $Res Function(PersonListState) then) =
      _$PersonListStateCopyWithImpl<$Res, PersonListState>;
}

/// @nodoc
class _$PersonListStateCopyWithImpl<$Res, $Val extends PersonListState>
    implements $PersonListStateCopyWith<$Res> {
  _$PersonListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PersonListStateLoadingImplCopyWith<$Res> {
  factory _$$PersonListStateLoadingImplCopyWith(
          _$PersonListStateLoadingImpl value,
          $Res Function(_$PersonListStateLoadingImpl) then) =
      __$$PersonListStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PersonListStateLoadingImplCopyWithImpl<$Res>
    extends _$PersonListStateCopyWithImpl<$Res, _$PersonListStateLoadingImpl>
    implements _$$PersonListStateLoadingImplCopyWith<$Res> {
  __$$PersonListStateLoadingImplCopyWithImpl(
      _$PersonListStateLoadingImpl _value,
      $Res Function(_$PersonListStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$PersonListStateLoadingImpl implements PersonListStateLoading {
  const _$PersonListStateLoadingImpl({final String? $type})
      : $type = $type ?? 'loading';

  factory _$PersonListStateLoadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonListStateLoadingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PersonListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonListStateLoadingImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic person) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic person)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic person)? loaded,
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
    required TResult Function(PersonListStateLoading value) loading,
    required TResult Function(PersonListStateLoaded value) loaded,
    required TResult Function(PersonListStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonListStateLoading value)? loading,
    TResult? Function(PersonListStateLoaded value)? loaded,
    TResult? Function(PersonListStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonListStateLoading value)? loading,
    TResult Function(PersonListStateLoaded value)? loaded,
    TResult Function(PersonListStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonListStateLoadingImplToJson(
      this,
    );
  }
}

abstract class PersonListStateLoading implements PersonListState {
  const factory PersonListStateLoading() = _$PersonListStateLoadingImpl;

  factory PersonListStateLoading.fromJson(Map<String, dynamic> json) =
      _$PersonListStateLoadingImpl.fromJson;
}

/// @nodoc
abstract class _$$PersonListStateLoadedImplCopyWith<$Res> {
  factory _$$PersonListStateLoadedImplCopyWith(
          _$PersonListStateLoadedImpl value,
          $Res Function(_$PersonListStateLoadedImpl) then) =
      __$$PersonListStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic person});
}

/// @nodoc
class __$$PersonListStateLoadedImplCopyWithImpl<$Res>
    extends _$PersonListStateCopyWithImpl<$Res, _$PersonListStateLoadedImpl>
    implements _$$PersonListStateLoadedImplCopyWith<$Res> {
  __$$PersonListStateLoadedImplCopyWithImpl(_$PersonListStateLoadedImpl _value,
      $Res Function(_$PersonListStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = freezed,
  }) {
    return _then(_$PersonListStateLoadedImpl(
      person: freezed == person ? _value.person! : person,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonListStateLoadedImpl implements PersonListStateLoaded {
  const _$PersonListStateLoadedImpl({this.person, final String? $type})
      : $type = $type ?? 'loaded';

  factory _$PersonListStateLoadedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonListStateLoadedImplFromJson(json);

  @override
  final dynamic person;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PersonListState.loaded(person: $person)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonListStateLoadedImpl &&
            const DeepCollectionEquality().equals(other.person, person));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(person));

  /// Create a copy of PersonListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonListStateLoadedImplCopyWith<_$PersonListStateLoadedImpl>
      get copyWith => __$$PersonListStateLoadedImplCopyWithImpl<
          _$PersonListStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic person) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(person);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic person)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(person);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic person)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(person);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonListStateLoading value) loading,
    required TResult Function(PersonListStateLoaded value) loaded,
    required TResult Function(PersonListStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonListStateLoading value)? loading,
    TResult? Function(PersonListStateLoaded value)? loaded,
    TResult? Function(PersonListStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonListStateLoading value)? loading,
    TResult Function(PersonListStateLoaded value)? loaded,
    TResult Function(PersonListStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonListStateLoadedImplToJson(
      this,
    );
  }
}

abstract class PersonListStateLoaded implements PersonListState {
  const factory PersonListStateLoaded({final dynamic person}) =
      _$PersonListStateLoadedImpl;

  factory PersonListStateLoaded.fromJson(Map<String, dynamic> json) =
      _$PersonListStateLoadedImpl.fromJson;

  dynamic get person;

  /// Create a copy of PersonListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonListStateLoadedImplCopyWith<_$PersonListStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PersonListStateErrorImplCopyWith<$Res> {
  factory _$$PersonListStateErrorImplCopyWith(_$PersonListStateErrorImpl value,
          $Res Function(_$PersonListStateErrorImpl) then) =
      __$$PersonListStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PersonListStateErrorImplCopyWithImpl<$Res>
    extends _$PersonListStateCopyWithImpl<$Res, _$PersonListStateErrorImpl>
    implements _$$PersonListStateErrorImplCopyWith<$Res> {
  __$$PersonListStateErrorImplCopyWithImpl(_$PersonListStateErrorImpl _value,
      $Res Function(_$PersonListStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PersonListStateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonListStateErrorImpl implements PersonListStateError {
  const _$PersonListStateErrorImpl({required this.message, final String? $type})
      : $type = $type ?? 'error';

  factory _$PersonListStateErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonListStateErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PersonListState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonListStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PersonListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonListStateErrorImplCopyWith<_$PersonListStateErrorImpl>
      get copyWith =>
          __$$PersonListStateErrorImplCopyWithImpl<_$PersonListStateErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic person) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic person)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic person)? loaded,
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
    required TResult Function(PersonListStateLoading value) loading,
    required TResult Function(PersonListStateLoaded value) loaded,
    required TResult Function(PersonListStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonListStateLoading value)? loading,
    TResult? Function(PersonListStateLoaded value)? loaded,
    TResult? Function(PersonListStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonListStateLoading value)? loading,
    TResult Function(PersonListStateLoaded value)? loaded,
    TResult Function(PersonListStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonListStateErrorImplToJson(
      this,
    );
  }
}

abstract class PersonListStateError implements PersonListState {
  const factory PersonListStateError({required final String message}) =
      _$PersonListStateErrorImpl;

  factory PersonListStateError.fromJson(Map<String, dynamic> json) =
      _$PersonListStateErrorImpl.fromJson;

  String get message;

  /// Create a copy of PersonListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonListStateErrorImplCopyWith<_$PersonListStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
