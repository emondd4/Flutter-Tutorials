import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mvvm_bloc/Model/UserBaseResponse.dart';

class ApiService{
  Future<UserBaseResponse> getData(int id) async {
    final uri = Uri.parse('https://reqres.in/api/users/$id');
    final response = await http.get(uri);
    try{
      if(response.statusCode == 200){
        final object = jsonDecode(response.body);
        final user = object as Map<String,dynamic>;
        return UserBaseResponse.fromJson(user);
      }else{
        throw Exception('Failed to load data');
      }
    }catch(e){
      rethrow;
    }
  }
}