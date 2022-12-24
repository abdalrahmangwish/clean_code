// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:seconde_project_clean_architecture/core/error/failure.dart';
import 'package:seconde_project_clean_architecture/core/usecase/base_use_case.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/movies_details.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/repositry/base_movie_repositry.dart';

class GetMoviesDetailsUseCase
    extends BaseUseCase<MoviesDetails, MoviesDetailsParameters> {
  BaseMovieRepositry baseMovieRepositry;
  GetMoviesDetailsUseCase(
    this.baseMovieRepositry,
  );
  @override
  Future<Either<Failure, MoviesDetails>> call(
      MoviesDetailsParameters parameters) async {
    return await baseMovieRepositry.getMoviesDetails(parameters);
  }
}

class MoviesDetailsParameters extends Equatable {
  final int moviesId;

  const MoviesDetailsParameters(this.moviesId);

  @override
  List<Object> get props => [moviesId];
}
