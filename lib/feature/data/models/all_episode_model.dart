// ignore_for_file: invalid_annotation_target

import 'package:rick_and_morty/feature/domain/entities/all_episode_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_episode_model.freezed.dart';
part 'all_episode_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class AllEpisodeModel extends AllEpisodeEntity with _$AllEpisodeModel {
  const factory AllEpisodeModel({
    required InfoModel info,
    required List<EpisodeModel> results,
  }) = _AllEpisodeModel;

  @JsonSerializable(explicitToJson: true)
  factory AllEpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$AllEpisodeModelFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
class InfoModel extends InfoEpisode with _$InfoModel {
  const factory InfoModel({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _InfoModel;

  factory InfoModel.fromJson(Map<String, dynamic> json) =>
      _$InfoModelFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
class EpisodeModel extends EpisodeEntity with _$EpisodeModel {
  const factory EpisodeModel({
    required int id,
    required String name,
    @JsonKey(name: 'air_date') required String airDate,
    required String episode,
    required List<String> characters,
    required String url,
    required DateTime created,
  }) = _EpisodeModel;

  factory EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelFromJson(json);
}
