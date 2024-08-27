class Urls {
  static const String baseUrl = 'https://rickandmortyapi.com/api';

  static String personFromUrl(int page, String name) =>
      '$baseUrl/character/?page=$page&name=$name';

  static String multipleEpisodesFromUrl(List<String> episodes) =>
      '$baseUrl/episode/$episodes';

  static String episodesFromUrl(int page) => '$baseUrl/episode?page=$page';

  static String multiplePersonsFromUrl(List<String> persons) =>
      '$baseUrl/character/$persons';
}
