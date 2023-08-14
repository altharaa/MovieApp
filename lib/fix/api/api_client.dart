import 'dart:convert';
import 'package:http/http.dart' as http;
import 'api_response.dart';


class Movie {

  static Future<MovieResult> connectToApi() async {
    final baseURL = Uri.parse('https://api.themoviedb.org/3/movie/popular?api_key=9e96256f5d1e6a4f9c415b852558c8d2');

    final headers = {'Content-Type': 'application/json'};

    var apiResult = await http.get(baseURL, headers: headers);
    var jsonObject = json.decode(apiResult.body);

    return MovieResult.fromJson(jsonObject);
  }

}