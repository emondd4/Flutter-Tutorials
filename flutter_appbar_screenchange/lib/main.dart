import 'package:flutter/material.dart';
import 'package:flutter_appbar_screenchange/mainscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter AppBar & ScreenChange',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MainScreen(),
    );
  }
}

