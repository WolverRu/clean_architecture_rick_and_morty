import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_and_morty/feature/domain/entities/all_episode_entity.dart';
import 'package:rick_and_morty/feature/domain/repositores/person_repository.dart';
import 'package:rick_and_morty/feature/domain/usecases/get_all_episodes.dart';

class MockPersonRepository extends Mock implements PersonRepository {}

void main() async {
  late final GetAllEpisodes getAllEpisodes;
  late final MockPersonRepository mockPersonRepository;

  setUp(() {
    mockPersonRepository = MockPersonRepository();
    getAllEpisodes = GetAllEpisodes(personRepository: mockPersonRepository);
  });

  final testInfo = InfoEpisode(
    count: 51,
    pages: 3,
  );

  final testResults = EpisodeEntity(
    id: 1,
    name: "Pilot",
    airDate: "December 2, 2013",
    episode: "S01E01",
    characters: [
      "https://rickandmortyapi.com/api/character/1",
      "https://rickandmortyapi.com/api/character/2",
      //...
    ],
    url: "https://rickandmortyapi.com/api/episode/1",
    created: DateTime.parse('2017-11-10T12:56:33.798Z'),
  );

  final testEpisodeDetail = AllEpisodeEntity(
    info: testInfo,
    results: [testResults],
  );

  const int page = 1;

  test('should get all episodes from the repository', () async {
    //arrange
    when(() => mockPersonRepository.getAllEpisodes(page))
        .thenAnswer((_) async => Right(testEpisodeDetail));

    //act
    final result = await getAllEpisodes.call(
      PageEpisodesParams(page: page),
    );

    //assert
    expect(result, Right(testEpisodeDetail));
  });
}
