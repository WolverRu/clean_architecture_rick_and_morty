import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/feature/domain/entities/all_episode_entity.dart';
import 'package:rick_and_morty/feature/presentation/bloc/all_episodes_bloc/all_episodes_bloc.dart';
import 'package:rick_and_morty/feature/presentation/widgets/episode_card_widger.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AllEpisodesListWidget extends StatefulWidget {
  const AllEpisodesListWidget({super.key});

  @override
  State<AllEpisodesListWidget> createState() => _AllEpisodesListWidgetState();
}

class _AllEpisodesListWidgetState extends State<AllEpisodesListWidget> {
  late AllEpisodeEntity _currentEpisode;
  List<EpisodeEntity> _currentResults = [];
  int _currentPage = 1;

  final RefreshController refreshController = RefreshController();
  bool _isPagination = false;

  Timer? searchDebounce;

  @override
  void initState() {
    if (_currentResults.isEmpty) {
      context
          .read<AllEpisodesBloc>()
          .add(AllEpisodesEvent.fetch(page: _currentPage));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AllEpisodesBloc>().state;
    return state.when(
      loading: () {
        if (!_isPagination) {
          return const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(strokeWidth: 2),
                SizedBox(width: 10),
                Text('Loading...'),
              ],
            ),
          );
        } else {
          return _customListView(_currentResults);
        }
      },
      loaded: (episodeLoaded) {
        _currentEpisode = episodeLoaded;
        if (_isPagination) {
          _currentResults.addAll(_currentEpisode.results);
          refreshController.loadComplete();
          _isPagination = false;
        } else {
          _currentResults = _currentEpisode.results;
        }
        return _currentResults.isNotEmpty
            ? _customListView(_currentResults)
            : const SizedBox();
      },
      error: (_) => const Text('Nothing found...'),
    );
  }

  Widget _customListView(List<EpisodeEntity> currentResults) {
    String currentSeason = "";
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: true,
      enablePullDown: false,
      onLoading: () {
        _currentPage++;
        _isPagination = true;

        if (_currentPage <= _currentEpisode.info.pages) {
          context
              .read<AllEpisodesBloc>()
              .add(AllEpisodesEvent.fetch(page: _currentPage));
        } else {
          refreshController.loadNoData();
        }
      },
      child: SingleChildScrollView(
        child: Column(
          children: currentResults.map((result) {
            String season = result.episode.substring(1, 3);

            if (season != currentSeason) {
              currentSeason = season;
              return Column(
                children: [
                  ListTile(
                    title: Text(
                      'Season $season',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  EpisodeCardWidget(
                    result: result,
                  ),
                ],
              );
            } else {
              return EpisodeCardWidget(
                result: result,
              );
            }
          }).toList(),
        ),
      ),
    );
  }
}
