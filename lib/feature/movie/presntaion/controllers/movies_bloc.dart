// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:seconde_project_clean_architecture/core/usecase/base_use_case.dart';

import 'package:seconde_project_clean_architecture/core/utiles/enums.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/usecases/get_now_plying_movies.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/usecases/get_populer_movies.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/usecases/get_top_rated_movies.dart';
import 'package:seconde_project_clean_architecture/feature/movie/presntaion/controllers/movies_event.dart';
import 'package:seconde_project_clean_architecture/feature/movie/presntaion/controllers/movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvents, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMovies;
  final GetPolpulerMoviesUseCase getPolpulerMovies;

  final GetTopRatedMoviesUseCase getTopRatedMovies;

  MoviesBloc(
    this.getTopRatedMovies,
    this.getPolpulerMovies,
    this.getNowPlayingMovies,
  ) : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayomgMovies);

    on<GetPopularMoviesEvent>(_getPopulerMovies);

    on<GetTopRatedMoviesEvent>(_getTopRatedMovies);
  }

  FutureOr<void> _getNowPlayomgMovies(
      GetNowPlayingMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getNowPlayingMovies(const NoParameters());
    // emit(const MoviesState(nowPlayingState: RequestState.loaded));
    result.fold(
        (l) => emit(state.copyWith(
            nowPlayingState: RequestState.error,
            messagErrorPlayingNow: l.moviesDetailsMesseg)),
        (r) => emit(state.copyWith(
            nowPlayingMovies: r, nowPlayingState: RequestState.loaded)));
  }

  FutureOr<void> _getPopulerMovies(
      GetPopularMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getPolpulerMovies(const NoParameters());
    // emit(const MoviesState(populerState: RequestState.loaded));
    result.fold(
        (l) => emit(state.copyWith(
            populerState: RequestState.error,
            messagErrorpopuler: l.moviesDetailsMesseg)),
        (r) => emit(state.copyWith(
            populerMovies: r, populerState: RequestState.loaded)));
  }

  FutureOr<void> _getTopRatedMovies(
      GetTopRatedMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getTopRatedMovies(const NoParameters());
    // emit(const MoviesState(topRatedState: RequestState.loaded));
    result.fold(
        (l) => emit(state.copyWith(
            topRatedState: RequestState.error,
            messagErrortopRated: l.moviesDetailsMesseg)),
        (r) => emit(state.copyWith(
            topRatedMovies: r, topRatedState: RequestState.loaded)));
  }
}
