import 'package:flutter/material.dart';
import 'package:navigate_by_name/utils/routes.dart';

import 'HomeView.dart';

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
      routes: Routes.list,
      initialRoute: Routes.homePage,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
