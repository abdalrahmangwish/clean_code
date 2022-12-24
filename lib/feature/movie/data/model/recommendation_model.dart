import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/recomendation.dart';

class RecommendationsModel extends Recommendations {
  const RecommendationsModel({super.backdropPath, required super.id});
  factory RecommendationsModel.fromJson(Map<String, dynamic> json) {
    return RecommendationsModel(
        backdropPath:
            json["backdrop_path"] ?? "ta17TltHGdZ5PZz6oUD3N5BRurb.jpg",
        id: json["id"]);
  }
  // RecommendationsModel copyWith ({}){}
}
