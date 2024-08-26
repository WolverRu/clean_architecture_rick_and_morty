import 'package:rick_and_morty/core/platform/network_info.dart';
import 'package:rick_and_morty/feature/data/datasources/person_local_data_source.dart';
import 'package:rick_and_morty/feature/data/datasources/person_local_data_source_impl.dart';
import 'package:rick_and_morty/feature/data/datasources/person_remote_data_source.dart';
import 'package:rick_and_morty/feature/data/datasources/person_remote_data_source_impl.dart';
import 'package:rick_and_morty/feature/data/repositories/person_repository_impl.dart';
import 'package:rick_and_morty/feature/domain/repositores/person_repository.dart';
import 'package:rick_and_morty/feature/domain/usecases/get_all_episodes.dart';
import 'package:rick_and_morty/feature/domain/usecases/get_all_persons.dart';
import 'package:rick_and_morty/feature/domain/usecases/get_multiple_episodes.dart';
import 'package:rick_and_morty/feature/domain/usecases/get_multiple_persons.dart';
import 'package:rick_and_morty/feature/presentation/bloc/all_episodes_bloc/all_episodes_bloc.dart';
import 'package:rick_and_morty/feature/presentation/bloc/custom_nav_bar_cubit/custom_nav_bar_cubit.dart';
import 'package:rick_and_morty/feature/presentation/bloc/episode_list_bloc/episode_list_bloc.dart';
import 'package:rick_and_morty/feature/presentation/bloc/all_persons_bloc/person_list_bloc.dart';
import 'package:rick_and_morty/feature/presentation/bloc/persons_list_bloc/persons_list_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC / Cubit
  sl.registerFactory(
    () => PersonListBloc(getAllPersons: sl()),
  );
  sl.registerFactory(
    () => AllEpisodesBloc(getAllEpisodes: sl()),
  );
  sl.registerFactory(
    () => EpisodeListBloc(getMultipleEpisodes: sl()),
  );
  sl.registerFactory(
    () => CustomNavBarCubit(),
  );
  sl.registerFactory(
    () => PersonsListBloc(getMultiplePersons: sl()),
  );
  // UseCases
  sl.registerLazySingleton(
    () => GetAllPersons(personRepository: sl()),
  );
  sl.registerLazySingleton(
    () => GetAllEpisodes(personRepository: sl()),
  );
  sl.registerLazySingleton(
    () => GetMultipleEpisodes(personRepository: sl()),
  );
  sl.registerLazySingleton(
    () => GetMultiplePersons(personRepository: sl()),
  );

  // Repository
  sl.registerLazySingleton<PersonRepository>(
    () => PersonRepositoryImpl(
        remoteDataSource: sl(), localDataSource: sl(), networkInfo: sl()),
  );

  sl.registerLazySingleton<PersonRemoteDataSource>(
    () => PersonRemoteDataSourceImpl(client: http.Client()),
  );

  sl.registerLazySingleton<PersonLocalDataSource>(
    () => PersonLocalDataSourceImpl(sharedPreferences: sl()),
  );

  // Core
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(connectionChecker: sl()),
  );

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
