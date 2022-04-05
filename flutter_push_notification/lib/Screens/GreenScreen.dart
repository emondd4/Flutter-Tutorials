import 'package:flutter/material.dart';

class GreenPage extends StatefulWidget {
  const GreenPage({Key? key}) : super(key: key);

  @override
  _GreenPageState createState() => _GreenPageState();
}

class _GreenPageState extends State<GreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: const Center(
          child: Text(
            "This Is Green Screen",
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
