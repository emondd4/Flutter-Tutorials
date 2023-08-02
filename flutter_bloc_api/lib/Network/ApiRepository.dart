
import 'package:flutter_bloc_api/Model/JokeBaseModel.dart';

import 'ApiProvider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<JokeBaseModel> fetchJokeList() {
    return _provider.fetchJokeList();
  }
}

class NetworkError extends Error {}