import 'package:dio/dio.dart';
import 'package:flutter_bloc_api/Model/JokeBaseModel.dart';

class ApiProvider {
  final Dio _dio = Dio();
  final String _url = 'https://api.chucknorris.io/jokes/random';

  Future<JokeBaseModel> fetchJokeList() async {
    try {
      Response response = await _dio.get(_url);
      return JokeBaseModel.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return JokeBaseModel(createdAt: null,iconUrl: null,id: null,updatedAt: null,url: null,value: null);
    }
  }
}