import 'package:dartz/dartz.dart';
import 'package:seconde_project_clean_architecture/core/error/failure.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/Movie.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/movies_details.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/recomendation.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/usecases/get_details_movies_usecase.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/usecases/get_recommendations_use_case.dart';

abstract class BaseMovieRepositry {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopulerMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
  Future<Either<Failure, MoviesDetails>> getMoviesDetails(
      MoviesDetailsParameters parameters);
  Future<Either<Failure, List<Recommendations>>> getMoviesRecommendations(
      RecommendationsParameters parameters);
}
