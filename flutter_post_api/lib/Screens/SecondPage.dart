import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late var userToken;

  @override
  void initState() {
    userToken = "";
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(userToken),
      ),
    );
  }

  void getData() async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      userToken = prefs.getString('Token') ?? "Empty";
    });
  }
}
