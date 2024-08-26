class AllEpisodeEntity {
  final InfoEpisode info;
  final List<EpisodeEntity> results;

  AllEpisodeEntity({
    required this.info,
    required this.results,
  });
}

class InfoEpisode {
  final int count;
  final int pages;
  final String? next;
  final String? prev;

  InfoEpisode({
    required this.count,
    required this.pages,
    this.next,
    this.prev,
  });
}

class EpisodeEntity {
  final int id;
  final String name;
  final String airDate;
  final String episode;
  final List<String> characters;
  final String url;
  final DateTime created;

  EpisodeEntity({
    required this.id,
    required this.name,
    required this.airDate,
    required this.episode,
    required this.characters,
    required this.url,
    required this.created,
  });
}
