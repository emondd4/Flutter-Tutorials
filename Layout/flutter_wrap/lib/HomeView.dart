import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap Example"),
        centerTitle: true,
      ),
      body: Wrap(
        direction: Axis.horizontal,
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.pinkAccent,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.pinkAccent,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.pinkAccent,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.pinkAccent,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.pinkAccent,
            ),
          ),

        ],
      ),
    );
  }
}
