import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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
        title: const Text("HomePage"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          const ListTile(
            title: Text("Image From Asset"),
          ),
          Card(
            child: Image.asset("assets/dummy_image.jpg"),
          ),
          const Divider(),
          const ListTile(
            title: Text("Image From Url"),
          ),
          Card(
              child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image:
                      'https://images.unsplash.com/photo-1593642532400-2682810df593?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80')),
          const Divider(),
          const ListTile(
            title: Text("Gif From Asset"),
          ),
          Image.asset(
            "assets/giphy.gif",
            scale: 1,
            height: 300,
          ),
          const Divider(),
          const ListTile(
            title: Text("Extended Image"),
            subtitle: Text(
                "Provides more functionalities like image caching and shape and borderRadius"),
          ),
          ExtendedImage.network(
            "https://images.unsplash.com/photo-1641089017750-126ebca8a426?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1175&q=80",
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          )
        ],
      ),
    );
  }
}
