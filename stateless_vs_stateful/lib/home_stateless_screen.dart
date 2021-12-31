import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final bool loading = true;

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: loading ? const Center(
          child: Text("Hello World", style: TextStyle(fontSize: 38.0),)
      ) : const Center(child: CircularProgressIndicator(),),
    );
  }
}
