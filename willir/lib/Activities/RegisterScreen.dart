import 'package:flutter/material.dart';
import 'package:willir/Activities/Common/EditTextWidget.dart';
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

  TextEditingController arabicNameController = new TextEditingController();
  TextEditingController englishNameController = new TextEditingController();
  TextEditingController genderController = new TextEditingController();
  TextEditingController dobController = new TextEditingController();
  TextEditingController nationalityController = new TextEditingController();
  TextEditingController nationalIdController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController maritalController = new TextEditingController();
  TextEditingController addressController = new TextEditingController();
  TextEditingController postalController = new TextEditingController();

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

              EditTextWidget("Name In Arabic",arabicNameController),
              EditTextWidget("Name In English",englishNameController),
              EditTextWidget("Gender",genderController),
              EditTextWidget("Date Of Birth",dobController),
              EditTextWidget("Nationality",nationalityController),
              EditTextWidget("National ID/Iqama Number",nationalIdController),
              EditTextWidget("Phone Number",phoneController),
              EditTextWidget("Marital Status",maritalController),
              EditTextWidget("Address",addressController),
              EditTextWidget("Postal Code",postalController),

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
