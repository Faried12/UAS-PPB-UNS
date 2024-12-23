import 'package:flutter/material.dart';
import 'bloc/theme_bloc/theme_controller.dart';
import 'app.dart';
import 'bloc/theme_bloc/theme_service.dart';
import 'repositories/movie_repository.dart';

void main() async {
  final movieRepository = MovieRepository();
  final themeController = ThemeController(ThemeService());
  await themeController.loadSettings();
  runApp(App(
    themeController: themeController,
    movieRepository: movieRepository,
  ));
}
