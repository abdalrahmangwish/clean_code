import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final List<int> genreId;
  final double voteAverage;
  final String title;
  final String backdropPath;
  final String releaseData;
  final String overview;

  const Movie({
    required this.id,
    required this.genreId,
    required this.voteAverage,
    required this.title,
    required this.backdropPath,
    required this.releaseData,
    required this.overview,
  });

  @override
  List<Object> get props {
    return [
      id,
      genreId,
      voteAverage,
      title,
      backdropPath,
      releaseData,
      overview,
    ];
  }
}
