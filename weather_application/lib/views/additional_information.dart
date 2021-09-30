import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget additionalInformation(String wind,
    String humidity, String pressure, String feels_like) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wind",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontWeight: FontWeight.bold), fontSize: 18.0),
                ),
                SizedBox(height: 18.0,),

                Text(
                  "Pressure",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontWeight: FontWeight.bold), fontSize: 18.0),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$wind",
                  style: GoogleFonts.poppins(
                      fontStyle: FontStyle.normal, fontSize: 18.0),
                ),
                SizedBox(height: 18.0,),

                Text(
                  "$pressure",
                  style: GoogleFonts.poppins(
                      fontStyle: FontStyle.normal, fontSize: 18.0),
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Humidity",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontWeight: FontWeight.bold), fontSize: 18.0),
                ),
                SizedBox(height: 18.0,),

                Text(
                  "Feels Like",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontWeight: FontWeight.bold), fontSize: 18.0),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$humidity",
                  style: GoogleFonts.poppins(
                      fontStyle: FontStyle.normal, fontSize: 18.0),
                ),
                SizedBox(height: 18.0,),

                Text(
                  "$feels_like",
                  style: GoogleFonts.poppins(
                      fontStyle: FontStyle.normal, fontSize: 18.0),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}
