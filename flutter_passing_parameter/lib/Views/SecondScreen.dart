import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {

    // String passedData;
    // passedData = ModalRoute.of(context)?.settings.arguments as String;
    // debugPrint("Passed Data Is $passedData");

    Map<String,dynamic> passedMap = ModalRoute.of(context)?.settings.arguments as Map<String,dynamic>;
    if(passedMap != null){
      String name = passedMap['name'];
      debugPrint("Passed Name Is $name");
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
            ElevatedButton(onPressed: () {}, child: const Text("Go to Second Page"))
          ],
        ),
      ),
    );
  }
}
