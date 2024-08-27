import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:rick_and_morty/feature/data/models/all_episode_model.dart';
import 'package:rick_and_morty/feature/domain/entities/all_episode_entity.dart';

import '../../helpers/json_reader.dart';

void main() {
  group('data layer: AllEpisodeModel test', () {
    const testInfo = InfoModel(
      count: 51,
      pages: 3,
    );

    final List<EpisodeModel> testResults = [
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
        AllEpisodeModel(info: testInfo, results: testResults);

    test(
      'should be a subclass of episode entity',
      () async {
        //assert
        expect(testAllEpisodeModel, isA<AllEpisodeEntity>());
      },
    );

    test('should return a valid model from json', () async {
      //arrange
      final Map<String, dynamic> jsonMap = json.decode(
        readJson('helpers/dummy_data/dummy_episode_response.json'),
      );

      //act
      final result = AllEpisodeModel.fromJson(jsonMap);

      //assert
      expect(result, equals(testAllEpisodeModel));
    });

    test('should return a json map containing proper data', () async {
      //act
      final result = testAllEpisodeModel.toJson();

      //assert
      final expectedJsonMap = {
        "info": {"count": 51, "pages": 3, "next": null, "prev": null},
        "results": [
          {
            "id": 1,
            "name": "Pilot",
            "air_date": "December 2, 2013",
            "episode": "S01E01",
            "characters": [
              "https://rickandmortyapi.com/api/character/1",
              "https://rickandmortyapi.com/api/character/2"
            ],
            "url": "https://rickandmortyapi.com/api/episode/1",
            "created": "2017-11-10T12:56:33.798Z"
          }
        ]
      };

      expect(result, equals(expectedJsonMap));
    });
  });
}
