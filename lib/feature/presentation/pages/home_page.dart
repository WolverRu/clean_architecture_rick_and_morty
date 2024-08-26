import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/feature/presentation/bloc/custom_nav_bar_cubit/custom_nav_bar_cubit.dart';
import 'package:rick_and_morty/feature/presentation/pages/all_episodes_page.dart';
import 'package:rick_and_morty/feature/presentation/widgets/custom_bottom_nav_bar_widget.dart';
import 'package:rick_and_morty/feature/presentation/pages/all_persons_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CustomNavBarCubit>().state;
    return Scaffold(
      body: IndexedStack(
        index: state.selectedIndex,
        children: const [AllEpisodesPage(), AllPersonsPage()],
      ),
      bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: const CustomBottomNavBarWidget()),
    );
  }
}
