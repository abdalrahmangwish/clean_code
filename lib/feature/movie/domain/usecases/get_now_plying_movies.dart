import 'package:dartz/dartz.dart';
import 'package:seconde_project_clean_architecture/core/error/failure.dart';
import 'package:seconde_project_clean_architecture/core/usecase/base_use_case.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/Movie.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/repositry/base_movie_repositry.dart';

class GetNowPlayingMoviesUseCase
    extends BaseUseCase<List<Movie>, NoParameters> {
  BaseMovieRepositry baseMovieRepositry;
  GetNowPlayingMoviesUseCase(this.baseMovieRepositry);
  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMovieRepositry.getNowPlayingMovies();
  }
}
