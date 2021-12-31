import 'package:flutter/material.dart';
import 'package:stateless_vs_stateful/home_stateful_screen.dart';
import 'package:stateless_vs_stateful/home_stateless_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StateFulScreen(),
    );
  }
}
