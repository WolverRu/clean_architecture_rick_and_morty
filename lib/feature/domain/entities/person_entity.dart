import 'package:rick_and_morty/feature/domain/entities/location_entity.dart';

class PersonEntity {
  final InfoPerson info;
  final List<ResultsPerson> results;

  PersonEntity({
    required this.info,
    required this.results,
  });
}

class InfoPerson {
  final int count;
  final int pages;
  final String? next;
  final String? prev;

  InfoPerson({
    required this.count,
    required this.pages,
    this.next,
    this.prev,
  });
}

class ResultsPerson {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final LocationEntity origin;
  final LocationEntity location;
  final String image;
  final List<String> episode;
  final String url;
  final DateTime created;

  ResultsPerson({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });
}
