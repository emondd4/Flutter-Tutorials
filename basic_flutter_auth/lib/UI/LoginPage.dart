import 'dart:convert';

import 'package:basic_flutter_auth/Models/LoginResponseBaseModel.dart';
import 'package:basic_flutter_auth/UI/HomePage.dart';
import 'package:basic_flutter_auth/Utils/Utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late TextEditingController _emailEditingController;
  late TextEditingController _passEditingController;
  late LoginResponseBaseModel _loginResponse;

  @override
  void initState() {
    _emailEditingController = TextEditingController();
    _passEditingController = TextEditingController();
    _emailEditingController.text = "Amimul Ehsan";
    _passEditingController.text = 'Rahi-8000';
    _loginResponse = LoginResponseBaseModel();
    super.initState();
  }

  @override
  void dispose() {
    _emailEditingController.dispose();
    _passEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white12,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: _emailEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email Here'
                ),
              ),
              const SizedBox(height: 20.0,),
              TextField(
                controller: _passEditingController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password Here'
                ),
              ),
              const SizedBox(height: 20.0,),
              ElevatedButton(onPressed: (){
                _login(_emailEditingController.text,_passEditingController.text);
              }, child: const Text("Login"))
            ],
          ),
        ),
      ),
    );
  }

  _login(String email, String pass) async{
    var dio = Dio();

    // var formData = FormData.fromMap({
    //   'api_key': 'harunApp',
    //   'api_token': 'apiToken',
    //   'email': email,
    //   'password': pass,
    // });

    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$email:$pass'));
    print(basicAuth);


    dio.options.headers["authorization"] = basicAuth;
    //final response = await dio.get(ApiUtils.baseUrl+ApiUtils.loginEndPoint);

    try{
      final response = await dio.get(ApiUtils.baseUrl+ApiUtils.loginEndPoint);
      debugPrint(response.toString());
    }on DioError catch(e){
      if (e.type == DioErrorType.response) {
        print('catched');
        return;
      }
      if (e.type == DioErrorType.connectTimeout) {
        print('check your connection');
        return;
      }

      if (e.type == DioErrorType.receiveTimeout) {
        print('unable to connect to the server');
        return;
      }

      if (e.type == DioErrorType.other) {
        print('Something went wrong');
        return;
      }
      print(e);
    }catch (e) {
      print(e);
    }

    //_loginResponse = JsonDecoder(response.data) as LoginResponseBaseModel;



    // if(response.data["data"].isNotEmpty == true){
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen(response.data["data"])));
    // }

  }

}
