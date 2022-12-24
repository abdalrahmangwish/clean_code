// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/genres.dart';

class MoviesDetails extends Equatable {
  final String backDropPath;
  final int id;
  final String overView;
  final String realeseDate;
  final int runTime;
  final String title;
  final double voteAvareg;
  final List<Genres> genres;
  const MoviesDetails({
    required this.genres,
    required this.backDropPath,
    required this.id,
    required this.overView,
    required this.realeseDate,
    required this.runTime,
    required this.title,
    required this.voteAvareg,
  });

  @override
  List<Object> get props {
    return [
      genres,
      backDropPath,
      id,
      overView,
      realeseDate,
      runTime,
      title,
      voteAvareg,
    ];
  }
}
