import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';

import '../Dio/DioClient.dart';

class DeletePage extends StatefulWidget {
  const DeletePage({Key? key}) : super(key: key);

  @override
  State<DeletePage> createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {

  final DioClient _client = DioClient();
  var _buttonEnabled = false;

  @override
  void initState() {
    _buttonEnabled = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dio Delete"),centerTitle: true,),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter User Id',
                ),
              ),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              setState(() {
                _buttonEnabled = false;
              });
              //Timer(const Duration(seconds: 1), _enableButton(_buttonEnabled));
              _client.deleteUser(id: "2");
            }, child: const Text("Delete User"))
          ],
        ),
      ),
    );
  }
}

_enableButton(bool buttonEnabled){
  return buttonEnabled = true;
}
