import 'package:rick_and_morty/feature/data/models/all_episode_model.dart';
import 'package:rick_and_morty/feature/data/models/person_model.dart';

abstract class PersonRemoteDataSource {
  /// [getAllPersons] Calls the https://rickandmortyapi.com/api/character/?page=1 endpoint.
  ///
  ///  Throws a [ServerException] for all error codes.
  ///
  Future<PersonModel> getAllPersons(int page, String name);

  /// [searchPerson] Calls the https://rickandmortyapi.com/api/character/?name=rick endpoint.
  ///
  ///  Throws a [ServerException] for all error codes.
  ///
  // Future<List<PersonModel>> searchPerson(int page, String query);

  /// [getMultipleEpisodes] Calls the https://rickandmortyapi.com/api/episode/[1,2,3] endpoint.
  ///
  ///  Throws a [ServerException] for all error codes.
  ///
  Future<List<EpisodeModel>> getMultipleEpisodes(List<String> episodes);

  /// [getAllEpisodes] Calls the https://rickandmortyapi.com/api/episode endpoint.
  ///
  ///  Throws a [ServerException] for all error codes.
  ///
  Future<AllEpisodeModel> getAllEpisodes(int page);

  /// [getMultiplePersons] Calls the https://rickandmortyapi.com/api/character/[1,2,3] endpoint.
  ///
  ///  Throws a [ServerException] for all error codes.
  ///
  Future<List<ResultsModelPerson>> getMultiplePersons(List<String> persons);
}
