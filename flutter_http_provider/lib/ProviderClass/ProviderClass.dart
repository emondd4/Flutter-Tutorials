import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_http_provider/ModelClass/data_class.dart';
import 'package:http/http.dart' as http;

class ProviderClass extends ChangeNotifier{

  bool isLoading = true;

  DataClass _dataClass = DataClass();

  List<DataClass> list = [];

  ProviderClass(){
    _dataClass = list as DataClass;
  }

  setData(DataClass dataClass){
    _dataClass = dataClass;
    isLoading = false;
    notifyListeners();
  }

  getData(){
    return _dataClass;
  }

  Future<DataClass> hitApi() async{
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    final Map parsed = jsonDecode(response.body);
    DataClass dataClass = DataClass.fromJson(parsed);

    return dataClass;
  }

}