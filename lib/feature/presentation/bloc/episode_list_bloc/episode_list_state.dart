import 'package:rick_and_morty/feature/domain/entities/all_episode_entity.dart';

abstract class EpisodeListState {
  const EpisodeListState();
}

class EpisodeListEmpty extends EpisodeListState {}

class EpisodeListLoading extends EpisodeListState {
  EpisodeListLoading();
}

class EpisodeListLoaded extends EpisodeListState {
  final List<EpisodeEntity> episodes;

  EpisodeListLoaded({required this.episodes});
}

class EpisodeListError extends EpisodeListState {
  final String message;

  EpisodeListError({required this.message});
}
