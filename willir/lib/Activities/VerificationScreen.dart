import 'package:flutter/material.dart';
import 'package:willir/Activities/EnterPinScreen.dart';
import 'package:willir/Activities/LoginScreen.dart';
import 'package:willir/Utils/CustomButtonStyle.dart';
import 'package:willir/Utils/CustomColors.dart';
import 'package:willir/Utils/CustomTextStyle.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.PrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "assets/images/logo_white.png",
              width: 180,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text(
                        "Phone Number",
                        style: CustomTextStyle.WelcomeBig,
                      ),
                      Text(
                        "+8801843914526",
                        style: CustomTextStyle.Attention,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => EnterPinScreen()));
                        },
                        child: Text(
                          "Send Verification",
                          style: CustomTextStyle.ButtonTextSmall,
                        ),
                        style: CustomButtonStyle.LoginBtn
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                        child: Text(
                          "Other Verification Method",
                          style: CustomTextStyle.ButtonTextSmall,
                        ),
                        style: CustomButtonStyle.LoginBtn,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 2,
                  width: 150,
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
