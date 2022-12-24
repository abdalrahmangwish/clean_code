import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/Movie.dart';

class MovieModel extends Movie {
  const MovieModel(
      {required super.id,
      required super.genreId,
      required super.voteAverage,
      required super.title,
      required super.backdropPath,
      required super.releaseData,
      required super.overview});
  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
        id: json["id"],
        genreId: List<int>.from(json["genre_ids"].map((e) => e)),
        voteAverage: json["vote_average"].toDouble(),
        title: json["title"],
        backdropPath:
            json["backdrop_path"] ?? "/au4HUSWDRadIcl9CqySlw1kJMfo.jpg",
        releaseData: json["release_date"],
        overview: json["overview"]);
  }
}
