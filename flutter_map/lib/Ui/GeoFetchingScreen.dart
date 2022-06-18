import 'package:flutter/material.dart';
import 'package:location/location.dart';

class GeoFetchingPage extends StatefulWidget {
  const GeoFetchingPage({Key? key}) : super(key: key);

  @override
  State<GeoFetchingPage> createState() => _GeoFetchingPageState();
}

class _GeoFetchingPageState extends State<GeoFetchingPage> {

  final Location _location = Location();
  late bool _isServiceEnabled;
  PermissionStatus _permissionStatus = PermissionStatus.denied;
  late LocationData _locationData;
  bool isListenLocation = false, isGetLocation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Geo Example"),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () async{

                _isServiceEnabled = await _location.serviceEnabled();
                if(_isServiceEnabled) {
                  _isServiceEnabled = await _location.requestService();
                  if(_isServiceEnabled) return;
                }

                _permissionStatus = await _location.hasPermission();
                if(_permissionStatus == false){
                  _permissionStatus = await _location.requestPermission();
                  if(_permissionStatus == PermissionStatus.granted) return;
                }

                _locationData = await _location.getLocation();
                setState(() {
                  isGetLocation = true;
                });

              }, child: const Text("Get Location Once")),
            isGetLocation ? Text('Location: ${_locationData.latitude} / ${_locationData.longitude}') : Container(),
            const SizedBox(height: 10.0,),
            ElevatedButton(onPressed: (){

              }, child: const Text("Listen Location")),
          ],
        ),
      ),
    );
  }
}
