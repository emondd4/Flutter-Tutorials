import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class LocationMarkerPage extends StatefulWidget {
  const LocationMarkerPage({Key? key}) : super(key: key);

  @override
  State<LocationMarkerPage> createState() => _LocationMarkerPageState();
}

class _LocationMarkerPageState extends State<LocationMarkerPage> {

  final Completer<GoogleMapController> _controller = Completer();

  /////////////////////////
  final Location _location = Location();
  late bool _isServiceEnabled;
  PermissionStatus _permissionStatus = PermissionStatus.denied;
  late LocationData _locationData;
  bool isGetLocation = false;
  /////////////////////////

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);


  @override
  void initState(){
    _getLocationInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geo Marker"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: isGetLocation? GoogleMap(
          mapType: MapType.hybrid,
          initialCameraPosition: isGetLocation ? CameraPosition(target: LatLng(_locationData.latitude!,_locationData.longitude!),zoom: 14.4746) : _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ) : Center(child: Text("Loading..."),),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To the lake!'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  _getLocationInfo() async {
    _isServiceEnabled = await _location.serviceEnabled();
    if(!_isServiceEnabled) {
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
  }

}
