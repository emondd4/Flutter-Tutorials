import 'package:flutter/material.dart';

class CustomColors{
  static const PrimaryColor =  Color(0xFF28A788);
  static const PrimaryAccentColor =  Color(0xFFBAE8DC);
  static const White =  Color(0xFFFFFFFF);
  static const FacebookBlue =  Color(0xFF475993);
  static const Red =  Color(0xFFDC4E41);
  static const TwitterBlue =  Color(0xFF50AAF0);
  static const Grey =  Color(0xFFE6E6E6);
  static const CartBackground =  Color(0xFFF7F9F8);
  static const CalenderSelected =  Color(0xFFC1272D);
  static const DateSelected =  Color(0xFFC32B2D);
  static const DarkGrey =  Color(0xFF565656);
  static const Yellow =  Color(0xFFFBB03B);

  static MaterialColor generateMaterialColorFromColor(Color color) {
    return MaterialColor(color.value, {
      50: Color.fromRGBO(color.red, color.green, color.blue, 0.1),
      100: Color.fromRGBO(color.red, color.green, color.blue, 0.2),
      200: Color.fromRGBO(color.red, color.green, color.blue, 0.3),
      300: Color.fromRGBO(color.red, color.green, color.blue, 0.4),
      400: Color.fromRGBO(color.red, color.green, color.blue, 0.5),
      500: Color.fromRGBO(color.red, color.green, color.blue, 0.6),
      600: Color.fromRGBO(color.red, color.green, color.blue, 0.7),
      700: Color.fromRGBO(color.red, color.green, color.blue, 0.8),
      800: Color.fromRGBO(color.red, color.green, color.blue, 0.9),
      900: Color.fromRGBO(color.red, color.green, color.blue, 1.0),
    });
  }
}