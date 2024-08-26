import 'dart:convert';

import 'package:rick_and_morty/core/error/exception.dart';
import 'package:rick_and_morty/feature/data/datasources/person_local_data_source.dart';
import 'package:rick_and_morty/feature/data/models/all_episode_model.dart';
import 'package:rick_and_morty/feature/data/models/person_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersonLocalDataSourceImpl implements PersonLocalDataSource {
  final SharedPreferences sharedPreferences;

  PersonLocalDataSourceImpl({required this.sharedPreferences});

  // ignore: constant_identifier_names
  static const _CACHED_PERSONS_LIST = '_CACHED_PERSONS_LIST';

  // ignore: constant_identifier_names
  static const _CACHED_EPISODES_LIST = '_CACHED_EPISODES_LIST';

  @override
  Future<PersonModel> getLastPersonsFromCashe() {
    final jsonPersonsList = sharedPreferences.getString(_CACHED_PERSONS_LIST);
    if (jsonPersonsList != null) {
      return Future.value(PersonModel.fromJson(json.decode(jsonPersonsList)));
    } else {
      throw CacheException;
    }
  }

  @override
  Future<void> personsToCashe(PersonModel persons) async {
    final String jsonPersonsList = json.encode(persons);

    sharedPreferences.setString(_CACHED_PERSONS_LIST, jsonPersonsList);
  }

  @override
  Future<void> episodesToCashe(List<EpisodeModel> episodes) async {
    final List<String> jsonEpisodesList =
        episodes.map((episode) => json.encode(episode.toJson())).toList();

    sharedPreferences.setStringList(_CACHED_EPISODES_LIST, jsonEpisodesList);
  }

  @override
  Future<List<EpisodeModel>> getLastEpisodesFromCashe() {
    final jsonEpisodesList =
        sharedPreferences.getStringList(_CACHED_EPISODES_LIST);
    if (jsonEpisodesList != null) {
      return Future.value(jsonEpisodesList
          .map((episode) => EpisodeModel.fromJson(json.decode(episode)))
          .toList());
    } else {
      throw CacheException;
    }
  }

  @override
  Future<void> allEpisodesToCashe(AllEpisodeModel allEpisodes) async {
    final String jsonAllEpisodesList = json.encode(allEpisodes);

    sharedPreferences.setString(_CACHED_PERSONS_LIST, jsonAllEpisodesList);
  }

  @override
  Future<AllEpisodeModel> getLastAllEpisodesFromCashe() {
    final jsonAllEpisodesList =
        sharedPreferences.getString(_CACHED_PERSONS_LIST);
    if (jsonAllEpisodesList != null) {
      return Future.value(
          AllEpisodeModel.fromJson(json.decode(jsonAllEpisodesList)));
    } else {
      throw CacheException;
    }
  }

  @override
  Future<void> allPersonsToCashe(List<ResultsModelPerson> persons) async {
    final List<String> jsonPersonList =
        persons.map((person) => json.encode(person.toJson())).toList();

    sharedPreferences.setStringList(_CACHED_PERSONS_LIST, jsonPersonList);
  }

  @override
  Future<List<ResultsModelPerson>> getAllPersonsFromCashe() {
    final jsonPersonList =
        sharedPreferences.getStringList(_CACHED_PERSONS_LIST);
    if (jsonPersonList != null) {
      return Future.value(jsonPersonList
          .map((person) => ResultsModelPerson.fromJson(json.decode(person)))
          .toList());
    } else {
      throw CacheException;
    }
  }
}
