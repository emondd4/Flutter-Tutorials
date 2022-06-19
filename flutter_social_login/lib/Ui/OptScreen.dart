import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  
  final TextEditingController textEditingController = TextEditingController();
  final TextEditingController otpEditingController = TextEditingController();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  bool otpVisibility = false;
  User? user;
  String verificationID = "";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: "01......"
                ),
              ),
              const SizedBox(height: 10.0,),
              Visibility(
                child: TextField(
                  controller: otpEditingController,
                  decoration: InputDecoration(
                      hintText: "OTP"
                  ),
                  maxLength: 6,
                  keyboardType: TextInputType.number,
                ),
                visible: otpVisibility,
              ),
              const SizedBox(height: 20.0,),
              ElevatedButton(onPressed: () {
                if (otpVisibility) {
                  verifyOTP();
                } else {
                  LoginWithPhone();
                }
              }, child: Text("Get Code"))
            ],
          ),
      ),
    );
  }

  void LoginWithPhone() async{
    firebaseAuth.verifyPhoneNumber(
      phoneNumber: "+88" + textEditingController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await firebaseAuth.signInWithCredential(credential).then((value) {
          print("You are logged in successfully");
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        otpVisibility = true;
        verificationID = verificationId;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void verifyOTP() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationID, smsCode: otpEditingController.text);

    await firebaseAuth.signInWithCredential(credential).then(
          (value) {
        setState(() {
          user = FirebaseAuth.instance.currentUser;
        });
      },
    ).whenComplete(
          () {
        if (user != null) {
          Fluttertoast.showToast(
            msg: "You are logged in successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
          Navigator.pop(context);
        } else {
          Fluttertoast.showToast(
            msg: "your login is failed",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      },
    );
  }

}
