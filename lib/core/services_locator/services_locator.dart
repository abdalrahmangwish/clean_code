import 'package:get_it/get_it.dart';
import 'package:seconde_project_clean_architecture/feature/movie/data/datasources/movies_remote_data_sources.dart';
import 'package:seconde_project_clean_architecture/feature/movie/data/repository/movies_repository.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/repositry/base_movie_repositry.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/usecases/get_details_movies_usecase.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/usecases/get_populer_movies.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/usecases/get_recommendations_use_case.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/usecases/get_top_rated_movies.dart';
import 'package:seconde_project_clean_architecture/feature/movie/presntaion/controllers/bloc/details_movies_bloc.dart';
import 'package:seconde_project_clean_architecture/feature/movie/presntaion/controllers/movies_bloc.dart';

import '../../feature/movie/domain/usecases/get_now_plying_movies.dart';

class ServicesLocator {
  void init() {
    ///Bloc
    sl.registerFactory(() => MoviesBloc(sl(), sl(), sl()));
    sl.registerFactory(() => DetailsMoviesBloc(sl(), sl()));

    ///Use Case
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPolpulerMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMoviesDetailsUseCase(sl()));
    sl.registerLazySingleton(() => GetRecommendationsUseCase(sl()));

    ///Repositry
    sl.registerLazySingleton<BaseMovieRepositry>(
        () => MoviesRepository(baseMovieRemoteDataSource: sl()));

    ///Data Socurce
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}

final sl = GetIt.instance;
