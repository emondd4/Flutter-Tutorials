import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_application/model/model_weather.dart';
import 'package:weather_application/service/weather_api_client.dart';
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

  WeatherApiClient client = WeatherApiClient();
  Weather? data;
  var key = "75de35267a54f9d5d03ed01e6a9471a8";
  var location = "london";

  // @override
  // void initState() {
  //   super.initState();
  //   client.getCurrentWeather(location, key);
  // }

  Future<void> getData() async {
    data = await client.getCurrentWeather(location, key);
  }

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
      body: FutureBuilder(
        future: getData(),
        builder: (context,snapshot) {
          if(snapshot.connectionState == ConnectionState.done){
            return Column(
              children: [
                currentWeather(Icons.wb_sunny_rounded, data!.temp.toString(), data!.cityName.toString()),
                SizedBox(height: 20.0,),
                Text("Additional Information", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Color(0xFF212121))),),
                Divider(),
                SizedBox(height: 20.0,),
                additionalInformation(data!.wind.toString(), data!.humidity.toString(), data!.pressure.toString(),data!.feels_like.toString())
              ],
            );
          }else if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container();
        },
      )
    );
  }
}
