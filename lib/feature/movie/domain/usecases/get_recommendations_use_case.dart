// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:seconde_project_clean_architecture/core/error/failure.dart';
import 'package:seconde_project_clean_architecture/core/usecase/base_use_case.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/recomendation.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/repositry/base_movie_repositry.dart';

class GetRecommendationsUseCase
    extends BaseUseCase<List<Recommendations>, RecommendationsParameters> {
  BaseMovieRepositry baseMovieRepositry;
  GetRecommendationsUseCase(
    this.baseMovieRepositry,
  );

  @override
  Future<Either<Failure, List<Recommendations>>> call(
      RecommendationsParameters parameters) async {
    return await baseMovieRepositry.getMoviesRecommendations(parameters);
  }
}

class RecommendationsParameters extends Equatable {
  final int recommendationsId;
  const RecommendationsParameters({
    required this.recommendationsId,
  });

  @override
  List<Object> get props => [recommendationsId];
}
