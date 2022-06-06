import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

Future<User?> createAccount(String _name, String _email, String _pass) async {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  try {
    User? user = (await firebaseAuth.createUserWithEmailAndPassword(
            email: _email, password: _pass))
        .user;

    if(user != null){
      debugPrint("Account Create Successful");

      await firebaseFirestore.collection("users").doc(firebaseAuth.currentUser?.uid).set({
        "name" : _name,
        "email" : _email,
        "status" : "Unavailable"
      });

      return user;
    }else{
      debugPrint("Account Creation Failed");
      return user;
    }

  } catch (e) {
    debugPrint(e.toString());
    return null;
  }
}

Future<User?> login(String _email,String _pass) async{

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  try{
    User? user = (await firebaseAuth.signInWithEmailAndPassword(email: _email, password: _pass)).user;

    if(user != null){
      debugPrint("Login Successful");
      return user;
    }else{
      debugPrint("Credentials Doesn't Match");
      return user;
    }

  }catch(e){
    debugPrint(e.toString());
    return null;
  }
}

Future logout() async{

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  try{
    await firebaseAuth.signOut();
  }catch (e){
    debugPrint(e.toString());
  }
}
