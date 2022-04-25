import 'package:flutter/material.dart';
import 'package:flutter_dio/Widgets/DeleteScreen.dart';
import 'package:flutter_dio/Widgets/UserInfoScreen.dart';
import 'Widgets/HomeScreen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "home" : (_) => const HomePage(),
        "get" : (_) => const UserInfoPage(),
        "delete" : (_) => const DeletePage(),
      },
      initialRoute: "home",
    );
  }
}
