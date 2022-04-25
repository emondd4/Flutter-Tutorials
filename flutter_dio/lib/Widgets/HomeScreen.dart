import 'package:flutter/material.dart';


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
        title: const Text('Dio In Details'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () { Navigator.pushNamed(context, "get"); }, child: const Text("Get Request (User Info)")),
            const SizedBox(height: 10.0,),
            ElevatedButton(onPressed: () { Navigator.pushNamed(context, "delete"); }, child: const Text("Delete Request (Delete User)")),
            const SizedBox(height: 10.0,),
            ElevatedButton(onPressed: () { Navigator.pushNamed(context, "put"); }, child: const Text("Put Request (Update User)")),
          ],
        ),
      ),
    );
  }
}
