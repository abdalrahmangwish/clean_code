// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:seconde_project_clean_architecture/feature/movie/data/datasources/movies_remote_data_sources.dart';
// import 'package:seconde_project_clean_architecture/feature/movie/data/repository/movies_repository.dart';
// import 'package:seconde_project_clean_architecture/feature/movie/domain/repositry/base_movie_repositry.dart';
// import 'package:seconde_project_clean_architecture/feature/movie/domain/usecases/get_now_plying_movies.dart';

// class Test extends StatefulWidget {
//   const Test({super.key});

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }

//   void getData() async {
//     BaseMovieRemoteDataSource baseMovieRemoteDataSource =
//         MovieRemoteDataSource();
//     BaseMovieRepositry baseMovieRepositry =
//         MoviesRepository(baseMovieRemoteDataSource: baseMovieRemoteDataSource);
//     final result = await GetNowPlayingMoviesUseCase(baseMovieRepositry).call();
//     print(result);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
