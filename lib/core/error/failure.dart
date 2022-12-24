// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String moviesDetailsMesseg;

  const Failure(this.moviesDetailsMesseg);

  @override
  List<Object> get props => [moviesDetailsMesseg];
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

class DataBaseFailuer extends Failure {
  const DataBaseFailuer(super.message);
}
