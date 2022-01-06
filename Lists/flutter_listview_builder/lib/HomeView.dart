import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const numItems = 20;
    const _biggerFont = TextStyle(fontSize: 18.0);

    Widget _buildBox(int index) {
      return Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Text("$index"),
            ),
            title: Text(
              "Item $index",
              style: _biggerFont,
            ),
            trailing: const Icon(Icons.dashboard),
          ),
          const Divider(),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Example"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: numItems,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext context, int i) {
          return _buildBox(i);
        },
      ),
    );
  }
}
