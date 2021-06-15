import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  var questions = ["What's Your Favourite Color?","What's Your Favourite Game?", "What's Your Favourite Porn Site?"];

  void onButtonPressed(){
    print("Clicked");
  }

  void onLongButtonPressed(){
    print("Long Press Clicked");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
          Text(questions.elementAt(0)),
          ElevatedButton(child: Text("Answer 1"), onPressed: onButtonPressed, onLongPress: onLongButtonPressed,),
          ElevatedButton(child: Text("Answer 2"), onPressed: () => print("Second Button Pressed")),
          ElevatedButton(child: Text("Answer 3"), onPressed: () {
            //////
            print("Third Button Pressed");
          }, onLongPress: onLongButtonPressed,),
        ],),
      ),
    );
  }
}


