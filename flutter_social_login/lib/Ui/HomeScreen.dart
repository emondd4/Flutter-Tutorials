import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_social_login/Ui/MainScreen.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;

  @override
  void initState(){
    if(_auth.currentUser != null){
      print("UserName ${_auth.currentUser?.displayName}");
      print("Photo ${_auth.currentUser?.photoURL}");
      print("Email ${_auth.currentUser?.email}");
      _checkUser();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(onPressed: () {
                _facebookLogin();
              }, icon: Image.asset("assets/images/facebook.png",height: 64.0,width: 64.0,)),
              IconButton(onPressed: () {
                _googleLogin();
              }, icon: Image.asset("assets/images/google.png",height: 64.0,width: 64.0,)),
            ],
          ),
        ),
      ),
    );
  }

  _googleLogin() async{
    final googleUser = await _googleSignIn.signIn();
    if(googleUser != null){
      _user = googleUser;
    }

    final googleAuth = await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential).then((value) => {
      if (value.user != null) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MainPage()))
      }
    });
  }

  _facebookLogin() async {

    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential).then((value) => {
      if (value.user != null) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MainPage()))
      }
    });
  }

  _checkUser() async{
    final user = await _auth.currentUser;

    if(user != null){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MainPage()));
    }

  }

}
