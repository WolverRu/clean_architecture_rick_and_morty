import 'package:flutter/material.dart';
import 'package:rick_and_morty/feature/domain/entities/all_episode_entity.dart';
import 'package:rick_and_morty/feature/presentation/widgets/episode_watch_widget.dart';

class EpisodeCardWidget extends StatelessWidget {
  final EpisodeEntity result;
  const EpisodeCardWidget({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, top: 3, bottom: 3),
        child: Stack(
          children: [
            Card(
              child: ListTile(
                title: Text(result.name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(result.episode),
                    Text(result.airDate),
                  ],
                ),
                leading: Image.asset('assets/images/rick_morti.jpg'),
                trailing: const Icon(Icons.play_circle_outline),
              ),
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EpisodeWatchWidget(
                            episode: result,
                          ),
                        ));
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
