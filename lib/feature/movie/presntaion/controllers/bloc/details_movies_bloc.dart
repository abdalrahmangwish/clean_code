import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:seconde_project_clean_architecture/core/utiles/enums.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/usecases/get_details_movies_usecase.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/usecases/get_recommendations_use_case.dart';

import 'package:seconde_project_clean_architecture/feature/movie/presntaion/controllers/bloc/details_movies_state.dart';

part 'details_movies_event.dart';

class DetailsMoviesBloc extends Bloc<DetailsMoviesEvent, DetailsMoviesState> {
  DetailsMoviesBloc(
    this.getMoviesDetailsUseCase,
    this.getRecommendationsUseCase,
  ) : super(const DetailsMoviesState()) {
    on<GetMoviesDetailsEvents>(_getMoviesDetails);
    on<GetMoviesRecommendationEvent>(_getRecommendation);
  }
  final GetMoviesDetailsUseCase getMoviesDetailsUseCase;
  final GetRecommendationsUseCase getRecommendationsUseCase;

  FutureOr<void> _getMoviesDetails(
      GetMoviesDetailsEvents event, Emitter<DetailsMoviesState> emit) async {
    final result =
        await getMoviesDetailsUseCase(MoviesDetailsParameters(event.id));
    result.fold(
        (l) => emit(state.copyWith(
            requestState: RequestState.error, message: l.moviesDetailsMesseg)),
        (r) => emit(state.copyWith(
            moviesDetails: r, requestState: RequestState.loaded)));
  }

  FutureOr<void> _getRecommendation(GetMoviesRecommendationEvent event,
      Emitter<DetailsMoviesState> emit) async {
    final result = await getRecommendationsUseCase(
        RecommendationsParameters(recommendationsId: event.id));
    result.fold(
        (l) => emit(state.copyWith(
            requestState: RequestState.error, message: l.moviesDetailsMesseg)),
        (r) => emit(state.copyWith(
            moviesRecommendation: r,
            recommendationrequestState: RequestState.loaded)));
  }
}
