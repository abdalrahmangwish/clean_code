// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'details_movies_bloc.dart';

abstract class DetailsMoviesEvent extends Equatable {
  const DetailsMoviesEvent();
}

class GetMoviesDetailsEvents extends DetailsMoviesEvent {
  final int id;
  @override
  List<Object> get props => [id];
  const GetMoviesDetailsEvents(this.id);
}

class GetMoviesRecommendationEvent extends DetailsMoviesEvent {
  final int id;
  const GetMoviesRecommendationEvent({
    required this.id,
  });
  @override
  List<Object?> get props => [id];
}
