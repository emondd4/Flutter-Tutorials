import 'package:flutter/material.dart';
import 'package:willir/Activities/Common/EditTextWidget.dart';
import 'package:willir/Utils/CustomButtonStyle.dart';
import 'package:willir/Utils/CustomColors.dart';
import 'package:willir/Utils/CustomTextStyle.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {

    var totalWidth = MediaQuery.of(context).size.width;
    TextEditingController paymentController = new TextEditingController();
    TextEditingController fileController = new TextEditingController();
    TextEditingController amountController = new TextEditingController();
    TextEditingController emailController = new TextEditingController();
    TextEditingController notesController = new TextEditingController();

    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "You can pay for your account or other accounts",
                style: CustomTextStyle.ButtonTextCyanSmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: totalWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    EditTextWidget("Payment Type",paymentController),
                    EditTextWidget("File Number",fileController),
                    EditTextWidget("Amount",amountController),
                    EditTextWidget("Email",emailController),
                    EditTextWidget("Notes",notesController),

                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/visa.png",
                          height: 40,
                          width: 60,
                        ),
                        Image.asset(
                          "assets/images/mastercard.png",
                          height: 40,
                          width: 60,
                        ),
                        Image.asset(
                          "assets/images/mada.png",
                          height: 40,
                          width: 60,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          child: Text(
                            "Register",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
