import 'package:rick_and_morty/feature/data/models/location_model.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_model.freezed.dart';
part 'person_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class PersonModel extends PersonEntity with _$PersonModel {
  factory PersonModel({
    required InfoModel info,
    required List<ResultsModelPerson> results,
  }) = _PersonModel;

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
class InfoModel extends InfoPerson with _$InfoModel {
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
class ResultsModelPerson extends ResultsPerson with _$ResultsModelPerson {
  const factory ResultsModelPerson({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required LocationModel origin,
    required LocationModel location,
    required String image,
    required List<String> episode,
    required String url,
    required DateTime created,
  }) = _ResultsModelPerson;

  factory ResultsModelPerson.fromJson(Map<String, dynamic> json) =>
      _$ResultsModelPersonFromJson(json);
}
