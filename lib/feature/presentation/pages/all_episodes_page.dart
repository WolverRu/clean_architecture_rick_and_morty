import 'package:flutter/material.dart';
import 'package:rick_and_morty/feature/presentation/widgets/all_episodes_list_widget.dart';

class AllEpisodesPage extends StatelessWidget {
  const AllEpisodesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Episodes'),
        centerTitle: true,
      ),
      body: const AllEpisodesListWidget(),
    );
  }
}
