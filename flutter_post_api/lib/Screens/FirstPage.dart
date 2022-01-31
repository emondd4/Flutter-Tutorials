import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_post_api/Model/LoginModel.dart';
import 'package:flutter_post_api/Screens/SecondPage.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPass = TextEditingController();
  late var visibility;

  @override
  void initState() {
    super.initState();
    visibility = false;
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

    if(response.statusCode == 200){
      setState(() {
        visibility = false;
      });

      Map<String, dynamic> loginInfo = jsonDecode(response.body);
      var token = loginInfo['data'];
      saveInfo(token);
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => const SecondPage()));
    }

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
                    setState(() {
                      visibility = true;
                    });
                    getLoginInfo();
                  },
                  child: const Text("Login"),
                ),
              ),
              const SizedBox(height: 45,),
              Center(
                child: visibility ? const CircularProgressIndicator() : const Text("") ,
              )
            ],
          ),
        ),
      ),
    );
  }

  void saveInfo(token) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString('Token', token);
  }
}
