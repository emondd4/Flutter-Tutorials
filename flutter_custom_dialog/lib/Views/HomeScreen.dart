import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/Views/DialogScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    //showDialog(context: context, builder: (context) => const DialogPage());
    super.initState();
    Timer.run(() {showDialog(context: context, builder: (context) => const DialogPage());});
  }

  @override
  Widget build(BuildContext context) {
    //Future.delayed(const Duration(seconds: 1), () => const DialogPage());
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: const Center(
          child: Text(
            "Hello There, It's Home Page"
          ),
        ),
      ),
    );
  }
}
