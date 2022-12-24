import 'package:flutter/material.dart';
import 'package:seconde_project_clean_architecture/core/services_locator/services_locator.dart';
import 'package:seconde_project_clean_architecture/feature/movie/presntaion/screens/movies_screen.dart';

void main() {
  runApp(const MyApp());
  ServicesLocator().init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainMoviesScreen(),
    );
  }
}
