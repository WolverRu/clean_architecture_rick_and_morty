import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';

abstract class PersonsListState {
  const PersonsListState();
}

class PersonsListEmpty extends PersonsListState {}

class PersonsListLoading extends PersonsListState {
  PersonsListLoading();
}

class PersonsListLoaded extends PersonsListState {
  final List<ResultsPerson> persons;

  PersonsListLoaded({required this.persons});
}

class PersonsListError extends PersonsListState {
  final String message;

  PersonsListError({required this.message});
}
