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
        title: const Text("Bottom Sheet Dialog Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (_) {
                  return const SizedBox(child: Padding(
                    padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 20.0),
                    child: Text("This Is Model Bottom Sheet"),
                  ), height: 300,);
                },
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))
                ),
            );
          },
          child: const Text("Show Bottom Sheet"),
        ),
      ),
    );
  }
}
