import 'package:dio/dio.dart';
import 'package:seconde_project_clean_architecture/core/error/exceptions.dart';
import 'package:seconde_project_clean_architecture/core/network/error_message_model.dart';
import 'package:seconde_project_clean_architecture/feature/movie/data/model/movie_model.dart';
import 'package:seconde_project_clean_architecture/feature/movie/data/model/movies_details_model.dart';
import 'package:seconde_project_clean_architecture/feature/movie/data/model/recommendation_model.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/usecases/get_details_movies_usecase.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/usecases/get_recommendations_use_case.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovie();
  Future<List<MovieModel>> getPopulerMovie();
  Future<List<MovieModel>> getTopRatedMovie();
  Future<MoviesDetailsModel> getDetailsMovies(
      MoviesDetailsParameters parameters);
  Future<List<RecommendationsModel>> getRecommendations(
      RecommendationsParameters parameters);
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovie() async {
    final respons = await Dio().get(
        "https://api.themoviedb.org/3/movie/now_playing?api_key=1cfdb2ac156873a18dfbdd9316994b5b");
    if (respons.statusCode == 200) {
      return List<MovieModel>.from(
          (respons.data["results"] as List).map((e) => MovieModel.fromJson(e)));
    } else {
      return throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(respons.data));
      print(respons);
    }
  }

  @override
  Future<List<MovieModel>> getPopulerMovie() async {
    final respons = await Dio().get(
        "https://api.themoviedb.org/3/movie/popular?api_key=1cfdb2ac156873a18dfbdd9316994b5b");
    if (respons.statusCode == 200) {
      return List<MovieModel>.from(
          (respons.data["results"] as List).map((e) => MovieModel.fromJson(e)));
    } else {
      return throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(respons.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovie() async {
    final respons = await Dio().get(
        "https://api.themoviedb.org/3/movie/popular?api_key=1cfdb2ac156873a18dfbdd9316994b5b");
    if (respons.statusCode == 200) {
      return List<MovieModel>.from(
          (respons.data["results"] as List).map((e) => MovieModel.fromJson(e)));
    } else {
      return throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(respons.data));
    }
  }

  @override
  Future<MoviesDetailsModel> getDetailsMovies(
      MoviesDetailsParameters parameters) async {
    final respons = await Dio().get(
        "https://api.themoviedb.org/3/movie/${parameters.moviesId}?api_key=1cfdb2ac156873a18dfbdd9316994b5b");
    if (respons.statusCode == 200) {
      return MoviesDetailsModel.fromJson(respons.data);
    } else {
      return throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(respons.data));
    }
  }

  @override
  Future<List<RecommendationsModel>> getRecommendations(
      RecommendationsParameters parameters) async {
    final respons = await Dio().get(
        "https://api.themoviedb.org/3/movie/${parameters.recommendationsId}/recommendations?api_key=1cfdb2ac156873a18dfbdd9316994b5b");
    if (respons.statusCode == 200) {
      return List<RecommendationsModel>.from((respons.data["results"] as List)
          .map((e) => RecommendationsModel.fromJson(e)));
    } else {
      return throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(respons.data));
    }
  }
}

///TODO THIS IS WRONG ...........................
//ApiConstance.topRatedMoviePath
///ApiConstance.populerMoviePath
///https://api.themoviedb.org/3/movie/436270/recommendations?api_key=1cfdb2ac156873a18dfbdd9316994b5b =>the Movies samiller >> requierd id 
///https://api.themoviedb.org/3/movie/436270?api_key=1cfdb2ac156873a18dfbdd9316994b5b =>details Movies  >> requierd id 