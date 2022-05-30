import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(this.token, {Key? key}) : super(key: key);

  final String token;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.token),
      ),
    );
  }
}
