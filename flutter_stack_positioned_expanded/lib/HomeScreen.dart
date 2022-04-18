import 'package:flutter/material.dart';
import 'package:flutter_dummy/StackScreen.dart';
import 'package:flutter_dummy/WrapTextScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const StackPage()));
            }, child: const Text("Stack")),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const WrapTextPage()));
            }, child: const Text("Wrap Text"))
          ],
        ),
      ),
    );
  }
}
