import 'package:badges/badges.dart';
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
        title: const Text("List Tile Example"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text("Tile 0: Basic"),
          ),
          const Divider(),

          const ListTile(
            leading: Icon(Icons.face),
            title: Text("Tile 1: With Leading/Trailing Widgets"),
            trailing: Icon(Icons.tag_faces),
          ),
          const Divider(),

          const ListTile(
            title: Text("Tile 2: With Sub Tile"),
            subtitle: Text("This Is SubTile"),
          ),
          const Divider(),

          const ListTile(
            title: Text("Tile 3: 3 Lines"),
            isThreeLine: true,
            subtitle: Text("This is SubTile"),
          ),
          const Divider(),

          const ListTile(
            title: Text("Tile 4: Dense"),
            dense: true,
          ),
          const Divider(),

          ListTile(
            title: Text("Tile 5: Tile With Batch"),
            subtitle: Text("This Uses The Badges Package"),
            trailing: Badge(
              badgeContent: Text("3"),
              child: Icon(Icons.message),
            )
          )
        ],
      ),
    );
  }
}
