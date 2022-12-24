import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/genres.dart';

class GenresModel extends Genres {
  const GenresModel({required super.name, required super.id});
  factory GenresModel.fromJson(Map<String, dynamic> json) {
    return GenresModel(name: json["name"], id: json["id"]);
  }
}
