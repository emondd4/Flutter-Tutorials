import 'package:flutter/material.dart';

class SecondView extends StatefulWidget {
  const SecondView({Key? key}) : super(key: key);

  @override
  _SecondViewState createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go Back"),
          onPressed: () {
              Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
