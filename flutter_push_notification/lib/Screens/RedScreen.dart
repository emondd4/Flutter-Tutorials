import 'package:flutter/material.dart';

class RedPage extends StatefulWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  _RedPageState createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: const Center(
          child: Text(
            "This Is Red Screen",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
