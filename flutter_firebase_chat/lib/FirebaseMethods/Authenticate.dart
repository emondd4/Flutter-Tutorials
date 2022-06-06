import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat/UI/HomeScreen.dart';
import 'package:flutter_firebase_chat/UI/LoginScreen.dart';

class Authenticate extends StatelessWidget {

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if(_firebaseAuth.currentUser?.uid != null){
      return const HomePage();
    }else {
      return const LoginPage();
    }
  }
}
