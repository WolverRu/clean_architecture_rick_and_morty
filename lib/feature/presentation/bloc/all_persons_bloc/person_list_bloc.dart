// // ignore_for_file: constant_identifier_names

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:rick_and_morty/core/error/failure.dart';
// import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';
// import 'package:rick_and_morty/feature/domain/usecases/get_all_persons.dart';
// import 'package:rick_and_morty/feature/presentation/bloc/person_list_cubit/person_list_state.dart';

// class PersonListCubit extends Cubit<PersonListState> {
//   final GetAllPersons getAllPersons;
//   PersonListCubit({required this.getAllPersons}) : super(PersonEmpty());

//   int page = 1;

//   static const SERVER_FAILURE_MESSAGE = 'Server Failure';
//   static const CACHED_FAILURE_MESSAGE = 'Cache Failure';

//   Future<void> loadPerson() async {
//     if (state is PersonLoading) return;

//     final currentState = state;

//     var oldPerson = <PersonEntity>[];

//     if (currentState is PersonLoaded) {
//       oldPerson = currentState.personsList;
//     }

//     emit(PersonLoading(oldPersonsList: oldPerson, isFirstFetch: page == 1));

//     final failureOrPerson = await getAllPersons(PagePersonParams(page: page));

//     failureOrPerson.fold(
//         (failure) => emit(PersonError(message: _mapFailureToMessage(failure))),
//         (person) {
//       page++;

//       final persons = (state as PersonLoading).oldPersonsList;

//       persons.addAll(person);

//       emit(PersonLoaded(personsList: persons));
//     });
//   }

//   String _mapFailureToMessage(Failure failure) {
//     switch (failure.runtimeType) {
//       case const (ServerFailure):
//         return SERVER_FAILURE_MESSAGE;
//       case const (CacheFailure):
//         return CACHED_FAILURE_MESSAGE;
//       default:
//         return 'Unexpected Error';
//     }
//   }
// }

// ignore_for_file: constant_identifier_names

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/feature/domain/usecases/get_all_persons.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_list_bloc.freezed.dart';
part 'person_list_bloc.g.dart';
part 'person_list_event.dart';
part 'person_list_state.dart';

class PersonListBloc extends Bloc<PersonListEvent, PersonListState> {
  final GetAllPersons getAllPersons;
  static const SERVER_FAILURE_MESSAGE = 'Server Failure';
  static const CACHED_FAILURE_MESSAGE = 'Cache Failure';
  PersonListBloc({required this.getAllPersons})
      : super(const PersonListState.loading()) {
    on<PersonListEventFetch>((event, emit) async {
      emit(const PersonListState.loading());

      final failureOrPerson = await getAllPersons(
          PagePersonParams(page: event.page, name: event.name));

      failureOrPerson.fold(
          (failure) => emit(
              PersonListState.error(message: _mapFailureToMessage(failure))),
          (person) => emit(PersonListState.loaded(person: person)));
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
