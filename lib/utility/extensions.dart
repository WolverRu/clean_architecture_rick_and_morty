extension ListStringExtension on List<String> {
  List<String> toStringEpisodes() {
    return map((episodeUrl) => episodeUrl.split("/").last).toList();
  }
}

extension EpisodeStringParsingExtension on String {
  List<String> getSeasonAndEpisodeNumbers() {
    RegExp regex = RegExp(r"S(\d+)E(\d+)");
    RegExpMatch? match = regex.firstMatch(this);
    if (match != null) {
      String seasonNumber = match.group(1)!;
      String episodeNumber = match.group(2)!;
      return [seasonNumber, episodeNumber];
    } else {
      throw const FormatException("Invalid episode format");
    }
  }
}
