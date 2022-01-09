import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Picker Example"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2018),
                  lastDate: DateTime(2055))
                  .then((value) {
                if (value != null) {
                  DateTime _fromDate = DateTime.now();
                  _fromDate = value;
                  final String date = DateFormat.yMMMd().format(_fromDate);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Selected Date : $date")));
                }
              });
            },
            child: const Text("Pick Date Here")),
      ),
    );
  }
}
