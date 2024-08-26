import 'package:flutter/material.dart';
import 'package:rick_and_morty/feature/domain/entities/all_episode_entity.dart';
import 'package:rick_and_morty/feature/presentation/widgets/episode_watch_body_widget.dart';

class EpisodeWatchWidget extends StatelessWidget {
  final EpisodeEntity episode;
  const EpisodeWatchWidget({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Rick and Morty"),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Text(episode.episode),
            ),
          ],
        ),
      ),
      body: EpisodeWatchBodyWidget(
        episode: episode,
      ),
    );
  }
}
