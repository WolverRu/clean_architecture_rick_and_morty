import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';
import 'package:rick_and_morty/feature/presentation/bloc/all_persons_bloc/person_list_bloc.dart';
import 'package:rick_and_morty/feature/presentation/widgets/person_card_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AllPersonsPage extends StatefulWidget {
  const AllPersonsPage({super.key});

  @override
  State<AllPersonsPage> createState() => _AllPersonsPageState();
}

class _AllPersonsPageState extends State<AllPersonsPage> {
  late PersonEntity _currentPerson;
  List<ResultsPerson> _currentResults = [];
  int _currentPage = 1;
  String _currentSearchStr = '';

  final RefreshController refreshController = RefreshController();
  bool _isPagination = false;

  Timer? searchDebounce;

  @override
  void initState() {
    if (_currentResults.isEmpty) {
      context
          .read<PersonListBloc>()
          .add(PersonListEvent.fetch(name: '', page: _currentPage));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<PersonListBloc>().state;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Characters"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 15, bottom: 15, left: 16, right: 16),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromRGBO(86, 86, 86, 0.8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.search, color: Colors.white),
                hintText: 'Search Name',
                hintStyle: const TextStyle(color: Colors.white),
              ),
              onChanged: (value) {
                _currentPage = 1;
                _currentResults = [];
                _currentSearchStr = value;

                searchDebounce?.cancel();
                searchDebounce = Timer(const Duration(milliseconds: 500), () {
                  context.read<PersonListBloc>().add(
                      PersonListEvent.fetch(name: value, page: _currentPage));
                });
              },
            ),
          ),
          Expanded(
            child: state.when(
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
              loaded: (personLoaded) {
                _currentPerson = personLoaded;
                if (_isPagination) {
                  _currentResults.addAll(_currentPerson.results);
                  refreshController.loadComplete();
                  _isPagination = false;
                } else {
                  _currentResults = _currentPerson.results;
                }
                return _currentResults.isNotEmpty
                    ? _customListView(_currentResults)
                    : const SizedBox();
              },
              error: (_) => const Text('Nothing found...'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _customListView(List<ResultsPerson> currentResults) {
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: true,
      enablePullDown: false,
      onLoading: () {
        _currentPage++;
        _isPagination = true;

        if (_currentPage <= _currentPerson.info.pages) {
          context.read<PersonListBloc>().add(PersonListEvent.fetch(
              name: _currentSearchStr, page: _currentPage));
        } else {
          refreshController.loadNoData();
        }
      },
      child: ListView.separated(
        itemCount: currentResults.length,
        separatorBuilder: (_, index) => const SizedBox(height: 5),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final result = currentResults[index];
          return PersonCardWidget(person: result);
        },
      ),
    );
  }
}
