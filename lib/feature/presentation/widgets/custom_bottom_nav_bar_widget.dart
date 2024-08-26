import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/feature/presentation/bloc/custom_nav_bar_cubit/custom_nav_bar_cubit.dart';

class CustomBottomNavBarWidget extends StatelessWidget {
  const CustomBottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomNavBarCubit, CustomNavBarState>(
        builder: (context, state) {
      return BottomNavigationBar(
        currentIndex: state.selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_outlined,
            ),
            label: "Episodes",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_4_outlined,
              ),
              label: "Characters")
        ],
        selectedItemColor: Colors.green[400],
        onTap: (index) =>
            context.read<CustomNavBarCubit>().updateSelectedIndex(index),
      );
    });
  }
}
