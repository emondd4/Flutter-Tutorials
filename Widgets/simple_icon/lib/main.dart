import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.image,
        size: 64.0,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

