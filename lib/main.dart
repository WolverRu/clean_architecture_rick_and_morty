import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/common/app_colors.dart';
import 'package:rick_and_morty/feature/presentation/bloc/all_episodes_bloc/all_episodes_bloc.dart';
import 'package:rick_and_morty/feature/presentation/bloc/custom_nav_bar_cubit/custom_nav_bar_cubit.dart';
import 'package:rick_and_morty/feature/presentation/bloc/episode_list_bloc/episode_list_bloc.dart';
import 'package:rick_and_morty/feature/presentation/bloc/all_persons_bloc/person_list_bloc.dart';
import 'package:rick_and_morty/feature/presentation/bloc/persons_list_bloc/persons_list_bloc.dart';
import 'package:rick_and_morty/feature/presentation/pages/home_page.dart';
import 'package:rick_and_morty/service_locator.dart' as di;
import 'package:rick_and_morty/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl<PersonListBloc>(),
          ),
          BlocProvider(
            create: (context) => sl<AllEpisodesBloc>(),
          ),
          BlocProvider(
            create: (context) => sl<EpisodeListBloc>(),
          ),
          BlocProvider(
            create: (context) => sl<CustomNavBarCubit>(),
          ),
          BlocProvider(
            create: (context) => sl<PersonsListBloc>(),
          ),
        ],
        child: MaterialApp(
          title: 'Rick and Morty',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: AppColors.mainBackground,
            pageTransitionsTheme: const PageTransitionsTheme(builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            }),
            appBarTheme: const AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle(
                    systemNavigationBarColor: AppColors.mainBackground)),
          ),
          home: const HomePage(),
        ));
  }
}
