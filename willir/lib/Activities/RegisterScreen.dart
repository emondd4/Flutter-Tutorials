import 'package:flutter/material.dart';
import 'package:willir/Activities/DashboardScreen.dart';
import 'package:willir/Utils/CustomButtonStyle.dart';
import 'package:willir/Utils/CustomColors.dart';
import 'package:willir/Utils/CustomTextStyle.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Register as a New User",
                style: CustomTextStyle.ButtonTextSmall,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 5,
                color: CustomColors.PrimaryColor,
              ),
              Container(child: Padding(
                padding: const EdgeInsets.fromLTRB(8,10,8,0),
                child: Text("Name In Arabic",style: CustomTextStyle.AttentionCyan, textAlign: TextAlign.start,),
              ),
              width: MediaQuery.of(context).size.width,),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              Container(child: Padding(
                padding: const EdgeInsets.fromLTRB(8,10,8,0),
                child: Text("Name In English",style: CustomTextStyle.AttentionCyan, textAlign: TextAlign.start,),
              ),
                width: MediaQuery.of(context).size.width,),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              Container(child: Padding(
                padding: const EdgeInsets.fromLTRB(8,10,8,0),
                child: Text("Gender",style: CustomTextStyle.AttentionCyan, textAlign: TextAlign.start,),
              ),
                width: MediaQuery.of(context).size.width,),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              Container(child: Padding(
                padding: const EdgeInsets.fromLTRB(8,10,8,0),
                child: Text("Date Of Birth",style: CustomTextStyle.AttentionCyan, textAlign: TextAlign.start,),
              ),
                width: MediaQuery.of(context).size.width,),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              Container(child: Padding(
                padding: const EdgeInsets.fromLTRB(8,10,8,0),
                child: Text("Nationality",style: CustomTextStyle.AttentionCyan, textAlign: TextAlign.start,),
              ),
                width: MediaQuery.of(context).size.width,),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              Container(child: Padding(
                padding: const EdgeInsets.fromLTRB(8,10,8,0),
                child: Text("National ID/Iqama Number",style: CustomTextStyle.AttentionCyan, textAlign: TextAlign.start,),
              ),
                width: MediaQuery.of(context).size.width,),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              Container(child: Padding(
                padding: const EdgeInsets.fromLTRB(8,10,8,0),
                child: Text("Phone Number",style: CustomTextStyle.AttentionCyan, textAlign: TextAlign.start,),
              ),
                width: MediaQuery.of(context).size.width,),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              Container(child: Padding(
                padding: const EdgeInsets.fromLTRB(8,10,8,0),
                child: Text("Marital Status",style: CustomTextStyle.AttentionCyan, textAlign: TextAlign.start,),
              ),
                width: MediaQuery.of(context).size.width,),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              Container(child: Padding(
                padding: const EdgeInsets.fromLTRB(8,10,8,0),
                child: Text("Address",style: CustomTextStyle.AttentionCyan, textAlign: TextAlign.start,),
              ),
                width: MediaQuery.of(context).size.width,),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              Container(child: Padding(
                padding: const EdgeInsets.fromLTRB(8,10,8,0),
                child: Text("Postal Code",style: CustomTextStyle.AttentionCyan, textAlign: TextAlign.start,),
              ),
                width: MediaQuery.of(context).size.width,),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => DashboardScreen()));
                },
                child: Text(
                  "Register",
                  style: CustomTextStyle.ButtonTextWhite,
                ),
                style: CustomButtonStyle.SocialSizeBtn,
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
