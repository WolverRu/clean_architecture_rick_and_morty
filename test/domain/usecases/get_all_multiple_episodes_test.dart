import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_and_morty/feature/domain/entities/all_episode_entity.dart';
import 'package:rick_and_morty/feature/domain/usecases/get_multiple_episodes.dart';
import 'get_all_episodes_test.dart';

void main() {
  late final MockPersonRepository mockPersonRepository;
  late final GetMultipleEpisodes getMultipleEpisodes;

  setUp(
    () {
      mockPersonRepository = MockPersonRepository();
      getMultipleEpisodes =
          GetMultipleEpisodes(personRepository: mockPersonRepository);
    },
  );

  final testResults = [
    EpisodeEntity(
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
    )
  ];

  test('should get multiple episodes from the repository', () async {
    //arrange
    when(
      () => mockPersonRepository.getMultipleEpisodes(['1', '2', '3']),
    ).thenAnswer((_) async => Right(testResults));

    //act
    final result = await getMultipleEpisodes.call(
      GetMultipleEpisodesParams(episodes: ['1', '2', '3']),
    );

    //assert
    expect(result, Right(testResults));
  });
}
