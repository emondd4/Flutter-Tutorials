import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }

}

class MyAppState extends State<MyApp>{

  var questionIndex = 0;
  var questions = ["What's Your Favourite Color?","What's Your Favourite Game?", "What's Your Favourite Porn Site?"];

  void onButtonPressed(){
    setState(() {
      questionIndex += 1;
    });
    print("Question Index" + questionIndex.toString());
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
          Text(questions.elementAt(questionIndex)),
          ElevatedButton(child: Text("Answer 1"), onPressed: onButtonPressed,),
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


