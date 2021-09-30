import 'package:flutter/material.dart';
import 'package:willir/Utils/CustomColors.dart';
import 'package:willir/Utils/CustomTextStyle.dart';

class EditTextWidget extends StatelessWidget {

  @required final String title;
  @required final TextEditingController controller;

  const EditTextWidget(this.title, this.controller, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: CustomTextStyle.AttentionCyan, textAlign: TextAlign.start,),
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
        ],
      ),
    );
  }
}

