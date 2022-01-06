import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expansion Tile Example"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const ExpansionTile(
            title: Text("ExpansionTile 1"),
            subtitle: Text("Trailing Expansion Arrow Icon"),
            children: [
              ListTile(
                title: Text("This is tile number 1"),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('ExpansionTile 2'),
            subtitle: const Text('Custom expansion arrow icon'),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(title: Text('This is tile number 2')),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
          const ExpansionTile(
            title: Text('ExpansionTile 3'),
            subtitle: Text('Leading expansion arrow icon'),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              ListTile(title: Text('This is tile number 3')),
            ],
          ),
        ],
      ),
    );
  }
}
