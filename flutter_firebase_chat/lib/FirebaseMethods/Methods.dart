import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

Future<User?> createAccount(String _name, String _email, String _pass) async {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  try {
    UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(email: _email, password: _pass);


      debugPrint("Account Create Successful");

      userCredential.user!.updateDisplayName(_name);

      await firebaseFirestore.collection('users').doc(firebaseAuth.currentUser!.uid).set({
        "name": _name,
        "email": _email,
        "status": "Unavalible",
        "uid": firebaseAuth.currentUser!.uid,
      });

      return userCredential.user;

  } catch (e) {
    debugPrint(e.toString());
    return null;
  }
}

Future<User?> login(String _email,String _pass) async{

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  try{
    UserCredential userCredential = await firebaseAuth.signInWithEmailAndPassword(email: _email, password: _pass);

    print("Login Sucessfull");

    firebaseFirestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .get()
        .then((value) => userCredential.user!.updateDisplayName(value['name']));

    return userCredential.user;


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
