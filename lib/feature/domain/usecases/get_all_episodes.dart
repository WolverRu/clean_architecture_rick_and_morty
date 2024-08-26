import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/feature/domain/entities/all_episode_entity.dart';
import 'package:rick_and_morty/feature/domain/repositores/person_repository.dart';

class GetAllEpisodes extends Usecase<AllEpisodeEntity, PageEpisodesParams> {
  final PersonRepository personRepository;

  GetAllEpisodes({required this.personRepository});

  @override
  Future<Either<Failure, AllEpisodeEntity>> call(
      PageEpisodesParams param) async {
    return await personRepository.getAllEpisodes(param.page);
  }
}

class PageEpisodesParams {
  final int page;

  PageEpisodesParams({
    required this.page,
  });
}
