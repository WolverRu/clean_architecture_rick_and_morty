import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/feature/domain/entities/all_episode_entity.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';
import 'package:rick_and_morty/feature/presentation/bloc/episode_list_bloc/episode_list_bloc.dart';
import 'package:rick_and_morty/feature/presentation/bloc/episode_list_bloc/episode_list_event.dart';
import 'package:rick_and_morty/feature/presentation/bloc/episode_list_bloc/episode_list_state.dart';
import 'package:rick_and_morty/feature/presentation/widgets/episode_watch_widget.dart';
import 'package:rick_and_morty/utility/extensions.dart';

class EpisodesListWidget extends StatelessWidget {
  final ResultsPerson person;
  const EpisodesListWidget({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    final List<String> episodeList = person.episode.toStringEpisodes();
    BlocProvider.of<EpisodeListBloc>(context, listen: false)
        .add(EpisodeList(episodeQuery: episodeList));
    return BlocBuilder<EpisodeListBloc, EpisodeListState>(
      builder: (context, state) {
        List<EpisodeEntity> episodes = [];

        if (state is EpisodeListLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is EpisodeListLoaded) {
          episodes = state.episodes;
          if (episodes.isEmpty) {
            return const _ShowErrorTextWidget(
              message: 'There are no characters with that name found',
            );
          }
        } else if (state is EpisodeListError) {
          return _ShowErrorTextWidget(
            message: state.message,
          );
        }
        return ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10.0),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              if (index < episodes.length) {
                return _EpisodesListBodyWidget(
                  episodes: episodes,
                  index: index,
                  person: person,
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
            itemCount: episodes.length);
      },
    );
  }
}

class _ShowErrorTextWidget extends StatelessWidget {
  final String message;
  const _ShowErrorTextWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Text(
          message,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _EpisodesListBodyWidget extends StatelessWidget {
  final ResultsPerson person;
  final int index;
  final List<EpisodeEntity> episodes;
  const _EpisodesListBodyWidget({
    required this.episodes,
    required this.index,
    required this.person,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.play_arrow),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(episodes[index].name),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(episodes[index].episode),
                  ],
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EpisodeWatchWidget(
                          episode: episodes[index],
                        ),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
