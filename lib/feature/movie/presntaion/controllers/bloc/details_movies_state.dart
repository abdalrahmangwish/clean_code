// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:seconde_project_clean_architecture/core/utiles/enums.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/movies_details.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/recomendation.dart';

class DetailsMoviesState extends Equatable {
  final MoviesDetails? moviesDetails;
  final RequestState moviesDetailsState;
  final String message;
  final List<Recommendations>? moviesRecommendation;
  final RequestState recommendationrequestState;
  final String recommendationMessage;
  const DetailsMoviesState({
    this.moviesDetails,
    this.moviesDetailsState = RequestState.loading,
    this.message = "",
    this.moviesRecommendation,
    this.recommendationMessage = "",
    this.recommendationrequestState = RequestState.loading,
  });

  DetailsMoviesState copyWith({
    MoviesDetails? moviesDetails,
    RequestState? requestState,
    String? message,
    List<Recommendations>? moviesRecommendation,
    RequestState? recommendationrequestState,
    String? recommendationMessage,
  }) {
    return DetailsMoviesState(
      recommendationrequestState:
          recommendationrequestState ?? this.recommendationrequestState,
      moviesRecommendation: moviesRecommendation ?? this.moviesRecommendation,
      recommendationMessage:
          recommendationMessage ?? this.recommendationMessage,
      message: message ?? this.message,
      moviesDetails: moviesDetails ?? this.moviesDetails,
      moviesDetailsState: requestState ?? this.moviesDetailsState,
    );
  }

  @override
  List<Object> get props {
    return [
      moviesDetails ?? "",
      moviesDetailsState,
      message,
      moviesRecommendation ?? "",
      recommendationrequestState,
      recommendationMessage,
    ];
  }
}
