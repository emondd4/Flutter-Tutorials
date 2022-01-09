import 'package:flutter/material.dart';

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
        title: const Text("Time Picker Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final DateTime now = DateTime.now();
            showTimePicker(context: context,
                initialTime: TimeOfDay(hour: now.hour, minute: now.minute))
                .then((value) {
              if (value != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Your Picked Time is : $value"),
                      action: SnackBarAction(label: "Ok", onPressed: () =>
                         ScaffoldMessenger.of(context).hideCurrentSnackBar()),
                    ));
              }
            });
          },
          child: const Text("Pick Time Here"),
        ),
      ),
    );
  }
}
