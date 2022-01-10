import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  static const _kTabPages = <Widget>[
    Center(
      child: Text("This Is First Fragment"),
    ),
    Center(
      child: Text("This Is Second Fragment"),
    ),
    Center(
      child: Text("This Is Third Fragment"),
    ),
  ];

  static const _kTabs = <Widget>[
    Tab(
      icon: Icon(Icons.cloud),
      text: "First",
    ),
    Tab(
      icon: Icon(Icons.alarm),
      text: "Second",
    ),
    Tab(
      icon: Icon(Icons.forum),
      text: "Third",
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _kTabPages.length, vsync: this,);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Appbar Example"),
      ),
      body: TabBarView(
        children: _kTabPages,
        controller: _tabController,
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(tabs: _kTabs, controller: _tabController,),
      ),
    );
  }
}
