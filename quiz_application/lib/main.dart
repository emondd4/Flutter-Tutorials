import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _questions = [
    "What's Your Favourite Color?",
    "What's Your Favourite Game?",
    "What's Your Favourite Porn Site?"
  ];

  void _onButtonPressed() {
    setState(() {
      _questionIndex += 1;
    });
    print("Question Index" + _questionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "My Quiz Application",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _questions.elementAt(_questionIndex),
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  child: Text("Answer 1"),
                  onPressed: _onButtonPressed,
                ),
                ElevatedButton(
                    child: Text("Answer 2"),
                    onPressed: () => print("Second Button Pressed")),
                ElevatedButton(
                  child: Text("Answer 3"),
                  onPressed: () {
                    //////
                    print("Third Button Pressed");
                  },
                ),
              ],
            ),
          )),
    );
  }
}
