import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:willir/Activities/FileScreen.dart';
import 'package:willir/Utils/CustomButtonStyle.dart';
import 'package:willir/Utils/CustomColors.dart';
import 'package:willir/Utils/CustomTextStyle.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
                        "Welcome To Thomas Muller",
                        style: CustomTextStyle.WelcomeBig,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Please Choose Your Language",
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
                              context, MaterialPageRoute(builder: (context) => FileScreen()));
                        },
                        child: Text(
                          "Bangla",
                          style: CustomTextStyle.ButtonText,
                        ),
                        style: CustomButtonStyle.LoginBtn,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => FileScreen()));
                        },
                        child: Text(
                          "English",
                          style: CustomTextStyle.ButtonText,
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
