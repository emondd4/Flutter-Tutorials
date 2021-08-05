import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_splash/mainScreen.dart';
import 'package:flutter_splash/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
