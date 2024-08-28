import 'dart:convert';

import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/error/exception.dart';
import 'package:rick_and_morty/feature/data/datasources/person_remote_data_source.dart';
import 'package:rick_and_morty/feature/data/models/all_episode_model.dart';
import 'package:rick_and_morty/feature/data/models/person_model.dart';
import 'package:http/http.dart' as http;

class PersonRemoteDataSourceImpl implements PersonRemoteDataSource {
  final http.Client client;

  PersonRemoteDataSourceImpl({required this.client});

  @override
  Future<PersonModel> getAllPersons(int page, String name) =>
      _getPersonFromUrl(Urls.personFromUrl(page, name));

  Future<PersonModel> _getPersonFromUrl(String url) async {
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      final persons = json.decode(response.body);
      PersonModel person = PersonModel.fromJson(persons);
      return person;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<EpisodeModel>> getMultipleEpisodes(List<String> episodes) =>
      _getEpisodesFromUrl(Urls.multipleEpisodesFromUrl(episodes));

  Future<List<EpisodeModel>> _getEpisodesFromUrl(String url) async {
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      final episodes = json.decode(response.body);
      final List<EpisodeModel> episodList = (episodes as List)
          .map<EpisodeModel>((episode) => EpisodeModel.fromJson(episode))
          .toList();

      return episodList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<AllEpisodeModel> getAllEpisodes(int page) =>
      _allEpisodesFromUrl(Urls.episodesFromUrl(page));

  Future<AllEpisodeModel> _allEpisodesFromUrl(String url) async {
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      final episodes = json.decode(response.body);
      AllEpisodeModel episode = AllEpisodeModel.fromJson(episodes);
      return episode;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<ResultsModelPerson>> getMultiplePersons(List<String> persons) =>
      _getMultiplePersonsFromUrl(Urls.multiplePersonsFromUrl(persons));

  Future<List<ResultsModelPerson>> _getMultiplePersonsFromUrl(
      String url) async {
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      final persons = json.decode(response.body);
      final List<ResultsModelPerson> personList = (persons as List)
          .map<ResultsModelPerson>(
              (person) => ResultsModelPerson.fromJson(person))
          .toList();

      return personList;
    } else {
      throw ServerException();
    }
  }
}
