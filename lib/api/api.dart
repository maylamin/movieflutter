import 'dart:convert';

import 'package:movieml/constant.dart';
import 'package:movieml/model/movie.dart';
import 'package:http/http.dart' as http;

class Api {
  static const treandingUrl =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constant.apiKey}';
  static const topratedUrl =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=${Constant.apiKey}';
  static const upcomingUrl =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=${Constant.apiKey}';
  // static const nowplayingUrl =
  //     'https://api.themoviedb.org/3/now_playing/movie/day?api_key=${Constant.apiKey}';

  Future<List<Movie>> getTreandingMovie() async {
    final response = await http.get(Uri.parse(treandingUrl));
    if (response.statusCode == 200) {
      final decodeDaata = jsonDecode(response.body)['results'] as List;
      return decodeDaata.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('somethings worng');
    }
  }

  Future<List<Movie>> getTopratedUrl() async {
    final response = await http.get(Uri.parse(topratedUrl));
    if (response.statusCode == 200) {
      final decodeDaata = jsonDecode(response.body)['results'] as List;
      return decodeDaata.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('somethings worng');
    }
  }

  Future<List<Movie>> getUpcomingUrl() async {
    final response = await http.get(Uri.parse(upcomingUrl));
    if (response.statusCode == 200) {
      final decodeDaata = jsonDecode(response.body)['results'] as List;
      return decodeDaata.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('somethings worng');
    }
  }

  // Future<List<Movie>> getNowplayingUrl() async {
  //   final response = await http.get(Uri.parse(nowplayingUrl));
  //   if (response.statusCode == 200) {
  //     final decodeDaata = jsonDecode(response.body)['results'] as List;
  //     return decodeDaata.map((movie) => Movie.fromJson(movie)).toList();
  //   } else {
  //     throw Exception('somethings worng');
    // }
  // }
}
