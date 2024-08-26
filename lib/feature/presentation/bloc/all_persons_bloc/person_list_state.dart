// import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';

// abstract class PersonListState {
//   const PersonListState();
// }

// class PersonEmpty extends PersonListState {}

// class PersonLoading extends PersonListState {
//   final List<PersonEntity> oldPersonsList;
//   final bool isFirstFetch;

//   PersonLoading({required this.oldPersonsList, this.isFirstFetch = false});
// }

// class PersonLoaded extends PersonListState {
//   final List<PersonEntity> personsList;

//   PersonLoaded({required this.personsList});
// }

// class PersonError extends PersonListState {
//   final String message;

//   PersonError({required this.message});
// }

part of 'person_list_bloc.dart';

@freezed
class PersonListState with _$PersonListState {
  const factory PersonListState.loading() = PersonListStateLoading;
  const factory PersonListState.loaded({person}) = PersonListStateLoaded;
  const factory PersonListState.error({required String message}) =
      PersonListStateError;

  factory PersonListState.fromJson(Map<String, dynamic> json) =>
      _$PersonListStateFromJson(json);
}
