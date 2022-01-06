import 'package:flutter/material.dart';
import 'package:navigate_arguments/SecondView.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Navigate With Argument"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage("Emon Hossain")),
                );
              },
            ),

            const SizedBox(height: 30.0,),

            ElevatedButton(
              child: const Text("Navigate Without Argument"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage("")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
