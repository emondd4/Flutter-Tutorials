import 'package:flutter/material.dart';
import 'package:navigate_by_name/utils/routes.dart';

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
        title: const Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Navigate"),
          onPressed: () {
            Navigator.pushNamed(context, Routes.secondPage);
          },
        ),
      ),
    );
  }
}
