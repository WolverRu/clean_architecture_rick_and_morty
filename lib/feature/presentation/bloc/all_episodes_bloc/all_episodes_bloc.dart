// ignore_for_file: constant_identifier_names

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/feature/domain/usecases/get_all_episodes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_episodes_bloc.freezed.dart';
part 'all_episodes_bloc.g.dart';
part 'all_episodes_event.dart';
part 'all_episodes_state.dart';

class AllEpisodesBloc extends Bloc<AllEpisodesEvent, AllEpisodesState> {
  final GetAllEpisodes getAllEpisodes;
  static const SERVER_FAILURE_MESSAGE = 'Server Failure';
  static const CACHED_FAILURE_MESSAGE = 'Cache Failure';
  AllEpisodesBloc({required this.getAllEpisodes})
      : super(const AllEpisodesState.loading()) {
    on<AllEpisodesEventFetch>((event, emit) async {
      emit(const AllEpisodesState.loading());

      final failureOrPerson =
          await getAllEpisodes(PageEpisodesParams(page: event.page));

      failureOrPerson.fold(
          (failure) => emit(
              AllEpisodesState.error(message: _mapFailureToMessage(failure))),
          (episode) => emit(AllEpisodesState.loaded(episode: episode)));
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
