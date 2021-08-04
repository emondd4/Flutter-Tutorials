import 'package:flutter/material.dart';
import 'package:flutter_appbar_screenchange/mainscreen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          _changeScreen(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text("SecondScreen"),
      ),
      body: Center(
        child:
          Text("Welcome to Flutter", style: TextStyle(color: Theme.of(context).accentColor, fontSize: 16),textAlign: TextAlign.center,),
      ),
    );
  }

  void _changeScreen(BuildContext context) {

    Navigator.push(context,
      new MaterialPageRoute(builder: (context) => new MainScreen()),);

  }
}
