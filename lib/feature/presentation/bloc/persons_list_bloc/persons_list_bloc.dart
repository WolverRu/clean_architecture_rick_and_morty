// ignore_for_file: constant_identifier_names

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/feature/domain/usecases/get_multiple_persons.dart';
import 'package:rick_and_morty/feature/presentation/bloc/persons_list_bloc/persons_list_event.dart';
import 'package:rick_and_morty/feature/presentation/bloc/persons_list_bloc/persons_list_state.dart';

class PersonsListBloc extends Bloc<PersonsListEvent, PersonsListState> {
  final GetMultiplePersons getMultiplePersons;
  PersonsListBloc({required this.getMultiplePersons})
      : super(PersonsListEmpty()) {
    on<PersonsList>(_onEvent);
  }

  static const SERVER_FAILURE_MESSAGE = 'Server Failure';
  static const CACHED_FAILURE_MESSAGE = 'Cache Failure';

  Future<void> _onEvent(
      PersonsList event, Emitter<PersonsListState> emit) async {
    emit(PersonsListLoading());

    final failureOrPerson = await getMultiplePersons(GetMultiplePersonsParams(
      persons: event.personQuery,
    ));

    failureOrPerson.fold(
        (failure) =>
            emit(PersonsListError(message: _mapFailureToMessage(failure))),
        (persons) {
      emit(PersonsListLoaded(persons: persons));
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
