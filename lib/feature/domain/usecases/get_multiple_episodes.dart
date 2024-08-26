import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/feature/domain/entities/all_episode_entity.dart';
import 'package:rick_and_morty/feature/domain/repositores/person_repository.dart';

class GetMultipleEpisodes
    extends Usecase<List<EpisodeEntity>, GetMultipleEpisodesParams> {
  final PersonRepository personRepository;

  GetMultipleEpisodes({required this.personRepository});

  @override
  Future<Either<Failure, List<EpisodeEntity>>> call(
      GetMultipleEpisodesParams param) async {
    return await personRepository.getMultipleEpisodes(param.episodes);
  }
}

class GetMultipleEpisodesParams {
  final List<String> episodes;

  GetMultipleEpisodesParams({required this.episodes});
}
