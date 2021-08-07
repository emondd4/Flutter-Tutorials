import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key,}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
          buildListTile(title: "Emon",image:AssetImage("assets/images/1.png")),
          buildListTile(title: "Sojib",image:AssetImage("assets/images/2.jpg")),
          buildListTile(title: "Rashed",image:AssetImage("assets/images/3.jpg")),
          buildListTile(title: "Akter",image:AssetImage("assets/images/4.png")),
          buildListTile(title: "Prinon",image:AssetImage("assets/images/5.jpg")),
          buildListTile(title: "Pappu"),
        ],
      )
    );
  }

  Widget buildListTile({required String title, ImageProvider? image}) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 10,),
      leading: CircleAvatar(
        backgroundColor: Colors.red,
        backgroundImage: image,
        radius: 25,
        child: image == null ? Text(
          title[0].toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Colors.white),
          )
        : null
      ),
      title: Text(title,style: TextStyle(fontWeight: FontWeight.bold,),),
    );
  }
}
