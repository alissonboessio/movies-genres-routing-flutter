
import 'package:flutter/material.dart';
import 'package:flutter_application_roteamento/models/movie.dart';
import 'package:flutter_application_roteamento/repositories/movie_repository.dart';

class MovieService extends ChangeNotifier {
  final MovieRepository repository = MovieRepository();

  List<Movie> get findAll => repository.findAll; 


  List<Movie> findAllByGenre(int genreId) {
    return repository.findAllByGenre(genreId);
  }

  Movie? findById(int id) {
    return repository.findById(id);
  }

  void create(Movie obj) {
    repository.create(obj);
    notifyListeners();
  }

  void update(Movie obj) {
    repository.update(obj);
    notifyListeners();
  }

}