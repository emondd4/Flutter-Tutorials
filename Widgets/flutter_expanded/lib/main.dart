import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key,}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.cyan,
                child: Text("1"),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.purple,
                child: Text("1"),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.deepOrange,
              child: Text("1"),
            )
          ],
        ),
      ),
    );
  }
}
