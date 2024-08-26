import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/exception.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/platform/network_info.dart';
import 'package:rick_and_morty/feature/data/datasources/person_local_data_source.dart';
import 'package:rick_and_morty/feature/data/datasources/person_remote_data_source.dart';
import 'package:rick_and_morty/feature/data/models/all_episode_model.dart';
import 'package:rick_and_morty/feature/data/models/person_model.dart';
import 'package:rick_and_morty/feature/domain/entities/all_episode_entity.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';
import 'package:rick_and_morty/feature/domain/repositores/person_repository.dart';

class PersonRepositoryImpl implements PersonRepository {
  final PersonRemoteDataSource remoteDataSource;
  final PersonLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  PersonRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, PersonEntity>> getAllPersons(
      int page, String name) async {
    return await _getPersons(() => remoteDataSource.getAllPersons(page, name));
  }

  Future<Either<Failure, PersonModel>> _getPersons(
      Future<PersonModel> Function() getPersons) async {
    if (await networkInfo.isConnected) {
      try {
        final remotePerson = await getPersons();
        localDataSource.personsToCashe(remotePerson);
        return Right(remotePerson);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localPerson = await localDataSource.getLastPersonsFromCashe();
        return Right(localPerson);
      } on ServerException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<EpisodeEntity>>> getMultipleEpisodes(
      List<String> episodes) async {
    return await _getEpisodes(
        () => remoteDataSource.getMultipleEpisodes(episodes));
  }

  Future<Either<Failure, List<EpisodeModel>>> _getEpisodes(
      Future<List<EpisodeModel>> Function() getMultipleEpisodes) async {
    if (await networkInfo.isConnected) {
      try {
        final List<EpisodeModel> remoteEpisode = await getMultipleEpisodes();
        localDataSource.episodesToCashe(remoteEpisode);
        return Right(remoteEpisode);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localEpisode = await localDataSource.getLastEpisodesFromCashe();
        return Right(localEpisode);
      } on ServerException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, AllEpisodeEntity>> getAllEpisodes(int page) async {
    return await _getAllEpisodes(() => remoteDataSource.getAllEpisodes(page));
  }

  Future<Either<Failure, AllEpisodeModel>> _getAllEpisodes(
      Future<AllEpisodeModel> Function() getAllEpisodes) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteAllEpisodes = await getAllEpisodes();
        localDataSource.allEpisodesToCashe(remoteAllEpisodes);
        return Right(remoteAllEpisodes);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localPerson = await localDataSource.getLastAllEpisodesFromCashe();
        return Right(localPerson);
      } on ServerException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<ResultsPerson>>> getMultiplePersons(
      List<String> persons) async {
    return await _getAllPersons(
        () => remoteDataSource.getMultiplePersons(persons));
  }

  Future<Either<Failure, List<ResultsModelPerson>>> _getAllPersons(
      Future<List<ResultsModelPerson>> Function() getMultiplePersons) async {
    if (await networkInfo.isConnected) {
      try {
        final List<ResultsModelPerson> remotePerson =
            await getMultiplePersons();
        localDataSource.allPersonsToCashe(remotePerson);
        return Right(remotePerson);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localPerson = await localDataSource.getAllPersonsFromCashe();
        return Right(localPerson);
      } on ServerException {
        return Left(CacheFailure());
      }
    }
  }
}
