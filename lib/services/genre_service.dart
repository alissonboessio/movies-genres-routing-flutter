
import 'package:flutter/material.dart';
import 'package:flutter_application_roteamento/models/genre.dart';
import 'package:flutter_application_roteamento/repositories/genre_repository.dart';

class GenreService extends ChangeNotifier {
  final GenreRepository repository = GenreRepository();

  List<Genre> get findAll => repository.findAll; 

  Genre? findById(int id) {
    return repository.findById(id);
  }

  void create(Genre obj) {
    repository.create(obj);
    notifyListeners();
  }

}