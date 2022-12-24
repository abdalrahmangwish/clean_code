import 'package:seconde_project_clean_architecture/feature/movie/data/model/genres_model.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/movies_details.dart';

class MoviesDetailsModel extends MoviesDetails {
  const MoviesDetailsModel(
      {required super.genres,
      required super.backDropPath,
      required super.id,
      required super.overView,
      required super.realeseDate,
      required super.runTime,
      required super.title,
      required super.voteAvareg});
  factory MoviesDetailsModel.fromJson(Map<String, dynamic> json) {
    return MoviesDetailsModel(
        genres: List<GenresModel>.from(
            json["genres"].map((x) => GenresModel.fromJson(x))),
        backDropPath:
            json["backdrop_path"] ,
        id: json["id"],
        overView: json["overview"],
        realeseDate: json["release_date"],
        runTime: json["runtime"],
        title: json["title"],
        voteAvareg: json["vote_average"].toDouble());
  }
}
