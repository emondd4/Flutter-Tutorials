import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_heatmap/flutter_map_heatmap.dart';
import 'package:latlong2/latlong.dart' as LatLng;
import 'package:geolocator/geolocator.dart';

import 'FakeData.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //It should ask me , when i open app
  LocationPermission permission = await Geolocator.requestPermission();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  late Position position;
  bool isLoad = false;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //set markers function
  List<Marker> setMarkers() {
    return List<Marker>.from(FakeData.getLocations.map((e) => new Marker(
        width: 60,
        height: 60,
        point: new LatLng.LatLng(e.latitude, e.longitude),
        builder: (context) => new Icon(Icons.account_circle))));
  }

//mapcontroller field to focus map
  final MapController _mapController = MapController();

  Future<void> getCurrentPosition() async {
    widget.position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      widget.isLoad = true;
    });
  }

  @override
  void initState() {
    getCurrentPosition();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Map'),
      ),
      body: SafeArea(
          child: Stack(children: [
            Positioned(
              child: widget.isLoad
                  ? FlutterMap(
                      mapController: _mapController,
                      options: MapOptions(
                          center: LatLng.LatLng(widget.position.latitude,
                              widget.position.longitude),
                          zoom: 18.0,
                      ),
                      children: [
                        TileLayer(
                          urlTemplate:
                          "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                          subdomains: ['a', 'b', 'c'],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                                width: 100,
                                height: 100,
                                point: new LatLng.LatLng(widget.position.latitude,
                                    widget.position.longitude),
                                builder: (context) => new Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.red,
                                  size: 48.0,
                                )),
                            Marker(
                                width: 48,
                                height: 48,
                                point: new LatLng.LatLng(23.795725014524308, 90.40853558013079),
                                builder: (context) => ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Container(
                                    height: 48.0,
                                    width: 48.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                                    child: Image.network("https://images.unsplash.com/photo-1695653422853-3d8f373fb434?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit: BoxFit.cover,),
                                  ),
                                )),
                            Marker(
                                width: 48,
                                height: 48,
                                point: new LatLng.LatLng(23.794973594084315, 90.40863041053095),
                                builder: (context) => ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Container(
                                    height: 48.0,
                                    width: 48.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                                    child: Image.network("https://images.unsplash.com/photo-1700348307455-e2886ff35de0?q=80&w=2007&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit: BoxFit.cover,),
                                  ),
                                )),
                            Marker(
                                width: 48,
                                height: 48,
                                point: new LatLng.LatLng(23.794128738572194, 90.40840671198613),
                                builder: (context) => ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Container(
                                    height: 48.0,
                                    width: 48.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                                    child: Image.network("https://images.unsplash.com/photo-1566837457221-3b6d966c5974?q=80&w=2075&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit: BoxFit.cover,),
                                  ),
                                )),

                          ],
                        ),
                        HeatMapLayer(
                          heatMapDataSource: InMemoryHeatMapDataSource(data: [WeightedLatLng(LatLng.LatLng(23.795314597201294, 90.40885895179531), 5.0),WeightedLatLng(LatLng.LatLng(23.795314597201296, 90.40885895179533), 5.0),WeightedLatLng(LatLng.LatLng(23.795314597201298, 90.40885895179535), 5.0)]),
                          heatMapOptions: HeatMapOptions(radius:40.0,gradient: {50.0: getMaterialColor(Colors.orange),}, minOpacity: 0.5,layerOpacity: 0.75),
                        )
                      ],
                    )
                  : const Center(child: CircularProgressIndicator()),
            ),
          ])),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;

    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };

    return MaterialColor(color.value, shades);
  }
  
}
