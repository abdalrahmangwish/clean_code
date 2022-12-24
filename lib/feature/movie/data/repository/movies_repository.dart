// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:seconde_project_clean_architecture/core/error/exceptions.dart';
import 'package:seconde_project_clean_architecture/core/error/failure.dart';
import 'package:seconde_project_clean_architecture/feature/movie/data/datasources/movies_remote_data_sources.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/Movie.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/movies_details.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/recomendation.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/repositry/base_movie_repositry.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/usecases/get_details_movies_usecase.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/usecases/get_recommendations_use_case.dart';

class MoviesRepository extends BaseMovieRepositry {
  BaseMovieRemoteDataSource baseMovieRemoteDataSource;
  MoviesRepository({
    required this.baseMovieRemoteDataSource,
  });
  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovie();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusmessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopulerMovies() async {
    final result = await baseMovieRemoteDataSource.getPopulerMovie();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusmessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDataSource.getTopRatedMovie();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusmessage));
    }
  }

  @override
  Future<Either<Failure, MoviesDetails>> getMoviesDetails(MoviesDetailsParameters parameters) async{
      final result = await baseMovieRemoteDataSource.getDetailsMovies(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusmessage));
    }
  }

  @override
  Future<Either<Failure, List<Recommendations>>> getMoviesRecommendations(RecommendationsParameters parameters)async {
       final result = await baseMovieRemoteDataSource.getRecommendations(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusmessage));
    }
  }


}
