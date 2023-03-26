import 'package:flutter/material.dart';
import 'package:mvvm_app/repository/home_repository.dart';

import '../data/response/api_response.dart';
import '../models/movies_model.dart';

class HomeViewModel with ChangeNotifier {
  final _homeRepository = HomeRepository();

  ApiResponse<MovieListModel> moviesList = ApiResponse.loading();

  setMoviesList(ApiResponse<MovieListModel> response) {
    moviesList = response;
    notifyListeners();
  }

  void fetchMoviesListApi() async {
    setMoviesList(ApiResponse.loading());

    _homeRepository.fetchMoviesList().then((data) {
      print("before completed im here!");
      setMoviesList(ApiResponse.completed(data));
    }).onError((error, stackTrace) {
      setMoviesList(ApiResponse.error(error.toString()));
    });
  }
}
