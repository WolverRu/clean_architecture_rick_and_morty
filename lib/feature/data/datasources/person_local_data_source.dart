import 'package:rick_and_morty/feature/data/models/all_episode_model.dart';
import 'package:rick_and_morty/feature/data/models/person_model.dart';

abstract class PersonLocalDataSource {
  /// Gets the cashed [List<PersonModel>] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throw [CacheException] if no cached data is present.

  Future<PersonModel> getLastPersonsFromCashe();
  Future<void> personsToCashe(PersonModel persons);

  /// Gets the cashed [List<EpisodeModel>] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throw [CacheException] if no cached data is present.

  Future<List<EpisodeModel>> getLastEpisodesFromCashe();
  Future<void> episodesToCashe(List<EpisodeModel> episodes);

  /// Gets the cashed [List<AllEpisodeModel>] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throw [CacheException] if no cached data is present.

  Future<AllEpisodeModel> getLastAllEpisodesFromCashe();
  Future<void> allEpisodesToCashe(AllEpisodeModel allEpisodes);

  /// Gets the cashed [List<ResultsModelPerson>] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throw [CacheException] if no cached data is present.

  Future<List<ResultsModelPerson>> getAllPersonsFromCashe();
  Future<void> allPersonsToCashe(List<ResultsModelPerson> persons);
}
