part of 'person_list_bloc.dart';

@freezed
class PersonListEvent with _$PersonListEvent {
  const factory PersonListEvent.fetch({
    required String name,
    required int page,
  }) = PersonListEventFetch;
}
