// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_episodes_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllEpisodesStateLoadingImpl _$$AllEpisodesStateLoadingImplFromJson(
        Map<String, dynamic> json) =>
    _$AllEpisodesStateLoadingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AllEpisodesStateLoadingImplToJson(
        _$AllEpisodesStateLoadingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AllEpisodesStateLoadedImpl _$$AllEpisodesStateLoadedImplFromJson(
        Map<String, dynamic> json) =>
    _$AllEpisodesStateLoadedImpl(
      episode: json['episode'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AllEpisodesStateLoadedImplToJson(
        _$AllEpisodesStateLoadedImpl instance) =>
    <String, dynamic>{
      'episode': instance.episode,
      'runtimeType': instance.$type,
    };

_$AllEpisodesStateErrorImpl _$$AllEpisodesStateErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$AllEpisodesStateErrorImpl(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AllEpisodesStateErrorImplToJson(
        _$AllEpisodesStateErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
