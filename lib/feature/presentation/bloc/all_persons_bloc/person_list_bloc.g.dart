// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_list_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonListStateLoadingImpl _$$PersonListStateLoadingImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonListStateLoadingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PersonListStateLoadingImplToJson(
        _$PersonListStateLoadingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$PersonListStateLoadedImpl _$$PersonListStateLoadedImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonListStateLoadedImpl(
      person: json['person'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PersonListStateLoadedImplToJson(
        _$PersonListStateLoadedImpl instance) =>
    <String, dynamic>{
      'person': instance.person,
      'runtimeType': instance.$type,
    };

_$PersonListStateErrorImpl _$$PersonListStateErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonListStateErrorImpl(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PersonListStateErrorImplToJson(
        _$PersonListStateErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
