import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'UI/HomeScreen.dart';
import 'UI/LoginScreen.dart';
import 'UI/RegisterScreen.dart';


Future main() async{

  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "login":(_) => const LoginPage(),
        "register":(_) => const RegisterPage(),
        "home":(_) => const HomePage(),
      },
      initialRoute: "login",
    );
  }
}
