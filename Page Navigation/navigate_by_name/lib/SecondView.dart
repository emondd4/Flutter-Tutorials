import 'package:flutter/material.dart';
import 'package:navigate_by_name/utils/routes.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go Next"),
          onPressed: () {
              Navigator.pushNamed(context, Routes.thirdPage);
          },
        ),
      ),
    );
  }
}
