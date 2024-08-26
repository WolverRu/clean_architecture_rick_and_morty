abstract class PersonsListEvent {
  const PersonsListEvent();
}

class PersonsList extends PersonsListEvent {
  final List<String> personQuery;

  PersonsList({required this.personQuery});
}
