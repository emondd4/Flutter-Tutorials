import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 64.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text("$temp",
            style: GoogleFonts.poppins(
                fontStyle: FontStyle.normal,
                textStyle: TextStyle(fontSize: 46.0, color: Colors.black))),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "$location",
          style: GoogleFonts.poppins(
              fontStyle: FontStyle.normal,
              textStyle: TextStyle(fontSize: 18.0, color: Color(0xFF5a5a5a))),
        ),
      ],
    ),
  );
}
