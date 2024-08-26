abstract class EpisodeListEvent {
  const EpisodeListEvent();
}

class EpisodeList extends EpisodeListEvent {
  final List<String> episodeQuery;

  EpisodeList({required this.episodeQuery});
}
