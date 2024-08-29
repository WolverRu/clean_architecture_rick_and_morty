import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_and_morty/core/platform/network_info.dart';
import 'package:rick_and_morty/feature/data/datasources/person_local_data_source.dart';
import 'package:rick_and_morty/feature/data/datasources/person_remote_data_source.dart';
import 'package:rick_and_morty/feature/data/models/all_episode_model.dart';
import 'package:rick_and_morty/feature/data/repositories/person_repository_impl.dart';
import 'package:rick_and_morty/feature/domain/entities/all_episode_entity.dart';

class MockPersonRemoteDataSource extends Mock
    implements PersonRemoteDataSource {}

class MockPersonLocalDataSource extends Mock implements PersonLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late MockPersonRemoteDataSource mockPersonRemoteDataSource;

  late MockPersonLocalDataSource mockPersonLocalDataSource;

  late MockNetworkInfo mockNetworkInfo;

  late PersonRepositoryImpl personRepositoryImpl;

  setUp(() {
    mockPersonRemoteDataSource = MockPersonRemoteDataSource();

    mockPersonLocalDataSource = MockPersonLocalDataSource();

    mockNetworkInfo = MockNetworkInfo();

    personRepositoryImpl = PersonRepositoryImpl(
      remoteDataSource: mockPersonRemoteDataSource,
      localDataSource: mockPersonLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  const int page = 1;
  const String name = 'Rick Sanchez';

  const testInfoModel = InfoModel(
    count: 51,
    pages: 3,
  );

  final List<EpisodeModel> testResultsModel = [
    EpisodeModel(
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

  final testAllEpisodeModel =
      AllEpisodeModel(info: testInfoModel, results: testResultsModel);

  final testInfoEntity = InfoEpisode(
    count: 51,
    pages: 3,
  );

  final List<EpisodeEntity> testResultsEntity = [
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

  final testEpisodeEntity = AllEpisodeEntity(
    info: testInfoEntity,
    results: testResultsEntity,
  );

  group('get all episodes', () {
    test('should return episodes when a call to datasourse is successful',
        () async {
      //arrange
      when(() => mockPersonRemoteDataSource.getAllEpisodes(page))
          .thenAnswer((_) async => testAllEpisodeModel);
      //act
      final result = await personRepositoryImpl.getAllEpisodes(page);

      //assert
      expect(result, equals(Right(testEpisodeEntity)));
    });
  });
}
