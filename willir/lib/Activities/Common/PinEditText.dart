import 'package:flutter/material.dart';

class PinEditText extends StatefulWidget {
  const PinEditText({Key? key}) : super(key: key);

  @override
  _PinEditTextState createState() => _PinEditTextState();
}

String textValue = "";

class _PinEditTextState extends State<PinEditText> {

  TextEditingController textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            filled: true,
            fillColor: Colors.white,
            isDense: true,
            counterText: ""
        ),
        onChanged: (tempValue){
          setState(() {
            textController.text = tempValue;
          });
        },
        controller: textController,
        maxLength: 1,
        textInputAction: TextInputAction.next,
      ),
    );
  }
}
