import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {

    Map<String,dynamic> map = {
      'name' : "Emon Hossain Munna",
      'dob' : 1997
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pass Data Through Navigation"),
        centerTitle: true,
        shadowColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is First Page"),
            const SizedBox(height: 30.0,),
            ElevatedButton(onPressed: () {
              //Navigator.pushNamed(context, "second",arguments: "Emon");
              Navigator.pushNamed(context, "second",arguments: map);
            }, child: const Text("Go to Second Page"))
          ],
        ),
      ),
    );
  }
}
