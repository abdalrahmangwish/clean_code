import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:seconde_project_clean_architecture/core/error/failure.dart';
import 'package:seconde_project_clean_architecture/feature/movie/domain/entitiy/Movie.dart';

abstract class BaseUseCase<T, Parameters> {
  Future<Either<Failure, T>> call(Parameters parameters);
}

class NoParameters extends Equatable {
  const NoParameters();

  @override
  List<Object?> get props => [];
}
