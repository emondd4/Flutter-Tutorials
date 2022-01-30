import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPass = TextEditingController();

  @override
  void initState() {
    super.initState();

    _controllerEmail.addListener(() {
      final String text = _controllerEmail.text.toLowerCase();
      _controllerEmail.value = _controllerEmail.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });

    _controllerPass.addListener(() {
      final String text = _controllerPass.text.toLowerCase();
      _controllerPass.value = _controllerPass.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  void dispose() {
    _controllerEmail.dispose();
    _controllerPass.dispose();
    super.dispose();
  }

  Future getLoginInfo() async {
    var url = Uri.https("www.limarket.net", "/api/customer_api/customer_login");

    var response = await http.post(
      url,
      body: {
        'api_key': 'harunApp',
        'api_token': 'apiToken',
        'email': _controllerEmail.text,
        'password': _controllerPass.text
      },
    );

    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controllerEmail,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Enter Email"),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: _controllerPass,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 30,
                height: (MediaQuery.of(context).size.width) * 0.10,
                child: ElevatedButton(
                  onPressed: () {
                    getLoginInfo();
                  },
                  child: const Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
