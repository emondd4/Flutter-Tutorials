import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  
  String data;
  SecondPage(this.data, {Key? key}) : super(key: key);
  
  @override
  _SecondPageState createState() => _SecondPageState(data);
}

class _SecondPageState extends State<SecondPage> {

  String value;
  _SecondPageState(this.value);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Center(
          child: Text(value, style: const TextStyle(color: Colors.black,fontSize: 20.0),),
        ),
      ),
    );
  }
}
