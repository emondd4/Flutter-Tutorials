import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.lightBlueAccent),
        title: Text("This Is HomePage",textAlign: TextAlign.center,),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to HomePage',
            ),
          ],
        ),
      ),
    );
  }
}
