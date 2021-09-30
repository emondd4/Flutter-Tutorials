import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_application/views/additional_information.dart';
import 'package:weather_application/views/current_weather.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf9f9f9),
      appBar: AppBar(
        backgroundColor: Color(0xFFf9f9f9),
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Weather Application',
          style: GoogleFonts.poppins(fontStyle: FontStyle.normal, textStyle: TextStyle(color: Colors.black)),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          currentWeather(Icons.wb_sunny_rounded, "26.3", "Georgia"),
          SizedBox(height: 20.0,),
          Text("Additional Information", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Color(0xFF212121))),),
          Divider(),
          SizedBox(height: 20.0,),
          additionalInformation("24", "2", "1024","24.6")
        ],
      ),
    );
  }
}
