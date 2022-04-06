import 'package:flutter/material.dart';
import 'package:flutter_passing_parameter/Views/FirstScreen.dart';
import 'package:flutter_passing_parameter/Views/SecondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Passing Parameter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "first": (_) => FirstPage(),
        "second": (_) => SecondPage()
      },
      initialRoute: "first",
    );
  }
}

