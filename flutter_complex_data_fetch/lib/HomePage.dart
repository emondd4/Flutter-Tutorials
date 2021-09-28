import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  getMatchData() async {
    var response = await http.get(Uri.parse("https://rest.entitysport.com/v2/matches/?status=2&format=6&token=437214169d9be2a73e91d22f76f68b52&per_page=5&&paged=1"));
    var jsonData = jsonDecode(response.body);

    print(jsonData);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(onPressed: () {
              getMatchData();
            }, child: Text("Chock Me"), color: Colors.amber,)
          ],
        ),
      ),
    );
  }
}
