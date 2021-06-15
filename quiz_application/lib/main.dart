import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Quiz Application",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(children: [
          Align(alignment: Alignment(0.0,-50.0),),
          Text("The Question!"),
          RaisedButton(child: Text("Answer 1"), onPressed: null,),
          RaisedButton(child: Text("Answer 2"), onPressed: null,),
          RaisedButton(child: Text("Answer 3"), onPressed: null,),
        ],),
      ),
    );
  }
}


