import 'package:flutter/material.dart';
import 'package:flutter_map/Ui/GeoFetchingScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Map Example"),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => const GeoFetchingPage()));
              }, child: const Text("Geo Fetching")),
          ],
        ),
      ),
    );
  }
}
