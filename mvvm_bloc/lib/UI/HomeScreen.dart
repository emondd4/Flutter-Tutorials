import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mvvm_bloc/Service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static final _service = ApiService();
  static final _random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc MVVM"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                ElevatedButton(onPressed: () async {
                  final response = await _service.getData(_random.nextInt(12) + 1);
                  debugPrint(response.data?.email);
                }, child: const Text("Random Data")),
                const SizedBox(height: 20,),
                Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80"),fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Text("Name",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800),),
                    const SizedBox(height: 20,),
                    Text("Email",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600),),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
