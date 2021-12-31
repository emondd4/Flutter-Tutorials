import 'package:flutter/material.dart';

class StateFulScreen extends StatefulWidget {
  const StateFulScreen({Key? key}) : super(key: key);

  @override
  _StateFulScreenState createState() => _StateFulScreenState();
}

class _StateFulScreenState extends State<StateFulScreen> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: loading
          ? const Center(
              child: Text(
              "Hello World",
              style: TextStyle(fontSize: 38.0),
            ))
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(height: 10.0,),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          loading = !loading;
                        });
                      },
                      child: const Text("Change State"),)
                ],
              ),
            ),
    );
  }
}
