import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _tab_page = <Widget>[
    const Center(
      child: Icon(
        Icons.cloud,
        size: 64.0,
        color: Colors.teal,
      ),
    ),
    const Center(
      child: Icon(
        Icons.alarm,
        size: 64.0,
        color: Colors.cyan,
      ),
    ),
    const Center(
      child: Icon(
        Icons.forum,
        size: 64.0,
        color: Colors.blue,
      ),
    ),
  ];

  final _tab_title = <Tab>[
    const Tab(
      icon: Icon(Icons.wb_cloudy),
      text: 'Tab 1',
    ),
    const Tab(
      icon: Icon(Icons.alarm),
      text: 'Tab 2',
    ),
    const Tab(
      icon: Icon(Icons.forum),
      text: 'Tab 3',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _tab_page.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("TabLayout Example"),
            backgroundColor: Colors.cyan,
            bottom: TabBar(tabs: _tab_title),
          ),
          body: TabBarView(children: _tab_page),
        ));
  }
}
