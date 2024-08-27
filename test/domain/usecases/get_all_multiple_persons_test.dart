import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_and_morty/feature/domain/entities/location_entity.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';
import 'package:rick_and_morty/feature/domain/usecases/get_multiple_persons.dart';

import 'get_all_episodes_test.dart';

void main() {
  late final MockPersonRepository mockPersonRepository;
  late final GetMultiplePersons getMultiplePersons;

  setUp(() {
    mockPersonRepository = MockPersonRepository();
    getMultiplePersons =
        GetMultiplePersons(personRepository: mockPersonRepository);
  });

  const List<String> persons = ['1', '2', '3'];

  final origin = LocationEntity(
    name: "Earth",
    url: "https://rickandmortyapi.com/api/location/1",
  );
  final location = LocationEntity(
    name: "Earth",
    url: "https://rickandmortyapi.com/api/location/20",
  );

  final List<ResultsPerson> testResults = [
    ResultsPerson(
      id: 1,
      name: "Rick Sanchez",
      status: "Alive",
      species: "Human",
      type: "",
      gender: "Male",
      origin: origin,
      location: location,
      image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
      episode: [
        "https://rickandmortyapi.com/api/episode/1",
        "https://rickandmortyapi.com/api/episode/2",
        // ...
      ],
      url: "https://rickandmortyapi.com/api/character/1",
      created: DateTime.parse("2017-11-04T18:48:46.250Z"),
    )
  ];

  test(
    'should return multiple persons from repository',
    () async {
      //arrange
      when(
        () => mockPersonRepository.getMultiplePersons(persons),
      ).thenAnswer((_) async => Right(testResults));

      //act
      final result = await getMultiplePersons.call(
        GetMultiplePersonsParams(persons: persons),
      );

      //assert
      expect(result, Right(testResults));
    },
  );
}
