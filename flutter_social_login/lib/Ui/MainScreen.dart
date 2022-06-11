import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_login/Ui/HomeScreen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          CircleAvatar(child: Image.network("${_firebaseAuth.currentUser?.photoURL
              }")),
                const SizedBox(height: 10.0,),
                Text("Name: ${_firebaseAuth.currentUser?.displayName}"),
                const SizedBox(height: 10.0,),
                Text("Email: ${_firebaseAuth.currentUser?.email}"),
                const SizedBox(height: 30.0,),
                IconButton(onPressed: () {
                    _logout();
                  }, icon: const Icon(Icons.logout_rounded))
              ]
            ,
          ),
        )
      ,
    );
  }
  
  _logout() async{
    await _firebaseAuth.signOut().then((value) => {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()))
    });
  }
  
}
