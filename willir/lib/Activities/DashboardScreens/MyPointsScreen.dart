import 'package:flutter/material.dart';
import 'package:willir/Utils/CustomButtonStyle.dart';
import 'package:willir/Utils/CustomTextStyle.dart';

class MyPointsScreen extends StatefulWidget {
  const MyPointsScreen({Key? key}) : super(key: key);

  @override
  _MyPointsScreenState createState() => _MyPointsScreenState();
}

class _MyPointsScreenState extends State<MyPointsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text("150",style: CustomTextStyle.AttentionBigCyan,),
              Text("Points",style: CustomTextStyle.AttentionCyan,),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    child: Text(
                      "Book Now",
                      style: CustomTextStyle.ButtonTextWhiteSmall,
                    ),
                    style: CustomButtonStyle.SocialSizeBtn,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
