// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:seconde_project_clean_architecture/core/utiles/enums.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/Movie.dart';

class MoviesState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String messagErrorPlayingNow;
  final List<Movie> populerMovies;
  final RequestState populerState;
  final String messagErrorpopuler;
  final List<Movie> topRatedMovies;
  final RequestState topRatedState;
  final String messagErrortopRated;

  const MoviesState({
    this.populerMovies = const [],
    this.populerState = RequestState.loading,
    this.messagErrorpopuler = "",
    this.topRatedMovies = const [],
    this.topRatedState = RequestState.loading,
    this.messagErrortopRated = "",
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading,
    this.messagErrorPlayingNow = "",
  });
  MoviesState copyWith({
    List<Movie>? nowPlayingMovies,
    RequestState? nowPlayingState,
    String? messagErrorPlayingNow,
    List<Movie>? populerMovies,
    RequestState? populerState,
    String? messagErrorpopuler,
    List<Movie>? topRatedMovies,
    RequestState? topRatedState,
    String? messagErrortopRated,
  }) {
    return MoviesState(
        nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
        nowPlayingState: nowPlayingState ?? this.nowPlayingState,
        messagErrorPlayingNow:
            messagErrorPlayingNow ?? this.messagErrorPlayingNow,
        populerMovies: populerMovies ?? this.populerMovies,
        populerState: populerState ?? this.populerState,
        messagErrorpopuler: messagErrorpopuler ?? this.messagErrorpopuler,
        topRatedMovies: topRatedMovies ?? this.topRatedMovies,
        topRatedState: topRatedState ?? this.topRatedState,
        messagErrortopRated: messagErrortopRated ?? this.messagErrortopRated);
  }

  @override
  List<Object> get props {
    return [
      nowPlayingMovies,
      nowPlayingState,
      messagErrorPlayingNow,
      populerMovies,
      populerState,
      messagErrorpopuler,
      topRatedMovies,
      topRatedState,
      messagErrortopRated,
    ];
  }
}
