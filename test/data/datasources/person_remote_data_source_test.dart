import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/feature/data/datasources/person_remote_data_source_impl.dart';
import 'package:http/http.dart' as http;
import 'package:rick_and_morty/feature/data/models/all_episode_model.dart';

import '../../helpers/json_reader.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  late MockHttpClient mockHttpClient;
  late PersonRemoteDataSourceImpl personRemoteDataSourceImpl;

  setUp(() {
    mockHttpClient = MockHttpClient();
    personRemoteDataSourceImpl =
        PersonRemoteDataSourceImpl(client: mockHttpClient);
  });

  const int page = 1;
  const String name = 'Rick Sanchez';

  group('data layer: datasources tests', () {
    test('should return all episodes model when the response code is 200',
        () async {
      //arrange
      when(
        () => mockHttpClient.get(
          Uri.parse(
            Urls.episodesFromUrl(page),
          ),
        ),
      ).thenAnswer((_) async => http.Response(
          readJson('helpers/dummy_data/dummy_episode_response.json'), 200));

      //act
      final result = await personRemoteDataSourceImpl.getAllEpisodes(page);

      //assert
      expect(result, isA<AllEpisodeModel>());
    });
  });
}
