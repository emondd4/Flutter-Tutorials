import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_json_dart_model/model/complex_user/address.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    getUser(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Json to Dart Model Example"),
        centerTitle: true,
      ),
    );
  }

  void getUser(BuildContext context) async {
    // final file = await rootBundle.loadString('json/response.json');
    //
    // final json  = jsonDecode(file);
    // debugPrint("Josn $json");
    //
    // User user = User.fromJson(json['user']);
    // debugPrint("Email ${user.email}");

    final file = await rootBundle.loadString('json/complex_response.json');

    final json  = jsonDecode(file);
    debugPrint("Josn $json");

    // ComplexUser user = ComplexUser.fromJson(json['user']);
    Address address = Address.fromJson(json['user']['address']);
    debugPrint("Complex User Address ${address.postalCode}");
    //debugPrint("Address ${user.address.postalCode}");

  }

}
