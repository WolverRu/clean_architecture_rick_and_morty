import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/feature/domain/entities/all_episode_entity.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';

abstract class PersonRepository {
  Future<Either<Failure, PersonEntity>> getAllPersons(int page, String name);

  Future<Either<Failure, List<EpisodeEntity>>> getMultipleEpisodes(
      List<String> episodes);

  Future<Either<Failure, AllEpisodeEntity>> getAllEpisodes(int page);

  Future<Either<Failure, List<ResultsPerson>>> getMultiplePersons(
      List<String> persons);
}
