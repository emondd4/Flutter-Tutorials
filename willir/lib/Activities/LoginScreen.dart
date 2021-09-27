import 'package:flutter/material.dart';
import 'package:willir/Activities/RegisterScreen.dart';
import 'package:willir/Utils/CustomButtonStyle.dart';
import 'package:willir/Utils/CustomColors.dart';
import 'package:willir/Utils/CustomTextStyle.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  get onChanged => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: CustomColors.White,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset(
                  "assets/images/logo_cyan.png",
                  width: 180,
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: CustomColors.PrimaryColor, width: 2.0),
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: CustomColors.PrimaryColor, width: 2.0),
                            borderRadius: BorderRadius.circular(30)),
                        hintText: 'Enter Email/Phone',
                        filled: true,
                        fillColor: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: CustomColors.PrimaryColor, width: 2.0),
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: CustomColors.PrimaryColor, width: 2.0),
                            borderRadius: BorderRadius.circular(30)),
                        hintText: 'Enter Password',
                        filled: true,
                        fillColor: Colors.white,),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          Checkbox(value: true, onChanged: onChanged),
                          Text(
                            "Remember Me?",
                            style: CustomTextStyle.AttentionCyan,
                          )
                        ],
                      ),
                      flex: 1,
                    ),
                    Flexible(
                      child: Text(
                        "Forgot Your Password?",
                        style: CustomTextStyle.AttentionCyan,
                      ),
                      flex: 1,
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                  },
                  child: Text(
                    "Sign In",
                    style: CustomTextStyle.ButtonTextWhite,
                  ),
                  style: CustomButtonStyle.LoginBtnCyan,
                ),
                SizedBox(height: 50,),
                TextButton.icon(
                  style: TextButton.styleFrom(
                      backgroundColor: CustomColors.FacebookBlue,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      fixedSize: Size(MediaQuery.of(context).size.width - 50, 40)
                  ),
                  onPressed: () => {},
                  icon: Icon(Icons.facebook, color: CustomColors.White,),
                  label: Text('Sign In Using Facebook', style: CustomTextStyle.ButtonTextWhiteSmall,),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                      backgroundColor: CustomColors.Red,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      fixedSize: Size(MediaQuery.of(context).size.width - 50, 40)
                  ),
                  onPressed: () => {},
                  icon: Image.asset("assets/images/google.png",height: 24,width: 24,),
                  label: Text('  Sign In With Google', style: CustomTextStyle.ButtonTextWhiteSmall,),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                      backgroundColor: CustomColors.TwitterBlue,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      fixedSize: Size(MediaQuery.of(context).size.width - 50, 40)
                  ),
                  onPressed: () => {},
                  icon: Image.asset("assets/images/twitter.png",height: 18,width: 18,),
                  label: Text('Sign In With Twitter', style: CustomTextStyle.ButtonTextWhiteSmall,),
                ),
                SizedBox(height: 50,),
                Text("Register as a New User",style: CustomTextStyle.ButtonText,),
                SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
