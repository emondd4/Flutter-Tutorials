import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_splash/mainScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png",height: 256,),
            SizedBox(height: 100,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
