import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int textColor;
  final int fillColor;
  final double textSize;
  final Function callback;

  const CalcButton({
    Key key,
    this.textColor = 0xFFFFFFFF,
    this.text,
    this.fillColor,
    this.textSize = 24,
    this.callback,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
          width: 65,
          height: 65,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
                text,
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.w400
                )
              ),
            ),
            onPressed: () {
              callback(text);
            },
            color: fillColor != null ? Color(fillColor):null,
            textColor: Color(textColor),
          ),
      ),
    );
  }
}