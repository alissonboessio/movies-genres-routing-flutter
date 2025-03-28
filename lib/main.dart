import 'package:flutter/material.dart';
import 'package:flutter_application_roteamento/rotas.dart';
import 'package:flutter_application_roteamento/screens/genre/genre_screen.dart';
import 'package:flutter_application_roteamento/screens/genre/genres_screen.dart';
import 'package:flutter_application_roteamento/screens/movie/movie_screen.dart';
import 'package:flutter_application_roteamento/screens/movie/movies_screen.dart';
import 'package:flutter_application_roteamento/services/genre_service.dart';
import 'package:flutter_application_roteamento/services/movie_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GenreService()),
        ChangeNotifierProvider(create: (_) => MovieService()),
      ],
      child: MaterialApp(
        initialRoute: Rotas.genres,
        routes: {
          Rotas.genres: (context) => GenresScreen(),
          Rotas.genre: (context) => GenreScreen(),
          Rotas.movies: (context) => MoviesScreen(),
          Rotas.movie: (context) => MovieScreen(),
        }
      ),
    );
  }
}
