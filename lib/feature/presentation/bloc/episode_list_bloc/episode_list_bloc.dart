// ignore_for_file: constant_identifier_names

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/feature/domain/usecases/get_multiple_episodes.dart';
import 'package:rick_and_morty/feature/presentation/bloc/episode_list_bloc/episode_list_event.dart';
import 'package:rick_and_morty/feature/presentation/bloc/episode_list_bloc/episode_list_state.dart';

class EpisodeListBloc extends Bloc<EpisodeListEvent, EpisodeListState> {
  final GetMultipleEpisodes getMultipleEpisodes;
  EpisodeListBloc({required this.getMultipleEpisodes})
      : super(EpisodeListEmpty()) {
    on<EpisodeList>(_onEvent);
  }

  static const SERVER_FAILURE_MESSAGE = 'Server Failure';
  static const CACHED_FAILURE_MESSAGE = 'Cache Failure';

  Future<void> _onEvent(
      EpisodeList event, Emitter<EpisodeListState> emit) async {
    emit(EpisodeListLoading());

    final failureOrPerson = await getMultipleEpisodes(GetMultipleEpisodesParams(
      episodes: event.episodeQuery,
    ));

    failureOrPerson.fold(
        (failure) =>
            emit(EpisodeListError(message: _mapFailureToMessage(failure))),
        (episodes) {
      emit(EpisodeListLoaded(episodes: episodes));
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case const (ServerFailure):
        return SERVER_FAILURE_MESSAGE;
      case const (CacheFailure):
        return CACHED_FAILURE_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  }
}
