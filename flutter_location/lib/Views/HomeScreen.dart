import 'package:flutter/material.dart';
import 'package:flutter_location/Services/location_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String? lat, long, country, area;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Location Tutorial"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0,15.0,8.0,15.0),
        child: Column(

          children: [
            const Text("Location Info: ", style: TextStyle(fontSize: 24.0),),
            const SizedBox(height: 20.0,),
            Text("Latitude: ${lat ?? "Loading..."}", style: TextStyle(fontSize: 24.0),),
            const SizedBox(height: 20.0,),
            Text("Longitude: ${long ?? "Loading..."}", style: TextStyle(fontSize: 24.0),),
            const SizedBox(height: 20.0,),
            Text("Country: ${country ?? "Loading..."}", style: TextStyle(fontSize: 24.0),),
            const SizedBox(height: 20.0,),
            Text("Area: ${area ?? "Loading..."}", style: TextStyle(fontSize: 24.0),),
            const SizedBox(height: 20.0,),
          ],
        ),
      ),
    );
  }

  void getLocation() async {
    final service = LocationService();
    final locationData = await service.getLocation();

    if(locationData != null){

      final placeMark = await service.getPlaceMark(locationData: locationData);

      setState(() {
        lat = locationData.latitude!.toStringAsFixed(2);
        long = locationData.longitude!.toStringAsFixed(2);
        country = placeMark?.country ?? "Could Not Get Country";
        area = placeMark?.administrativeArea ?? "Could Not Area";
      });
    }
  }

}
