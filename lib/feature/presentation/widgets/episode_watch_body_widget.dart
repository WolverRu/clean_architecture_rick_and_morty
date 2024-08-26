import 'package:flutter/material.dart';
import 'package:rick_and_morty/feature/domain/entities/all_episode_entity.dart';
import 'package:rick_and_morty/feature/presentation/widgets/episode_video_player_widget.dart';
import 'package:rick_and_morty/feature/presentation/widgets/persons_list_widget.dart';
import 'package:rick_and_morty/utility/extensions.dart';

class EpisodeWatchBodyWidget extends StatelessWidget {
  final EpisodeEntity episode;
  const EpisodeWatchBodyWidget({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width / 3;
    String season = episode.episode.getSeasonAndEpisodeNumbers()[0];
    String episodeNumber = episode.episode.getSeasonAndEpisodeNumbers()[1];
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(
              episode.name,
              style: const TextStyle(fontSize: 22),
            ),
            subtitle: Text(
              episode.airDate,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset("assets/images/bgs.jpg"),
              Icon(
                Icons.play_circle_outline,
                size: size,
              ),
              Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EpisodeVideoPlayerWidget(
                                    season: season,
                                    episode: episodeNumber,
                                  )));
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Characters:',
            style: TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 150,
            child: PersonsListWidget(
              episode: episode,
            ),
          ),
        ],
      ),
    );
  }
}
