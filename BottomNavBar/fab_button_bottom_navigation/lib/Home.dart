import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fab Button Bottom Navigation"),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    _currentTab = 0;
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.dashboard,
                      color: _currentTab == 0 ? Colors.blue : Colors.grey,
                      size: 30.0,
                    ),
                    // Text(
                    //   "Dashboard",
                    //   style: TextStyle(
                    //       color:
                    //           _currentTab == 0 ? Colors.blue : Colors.grey),
                    // )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    _currentTab = 0;
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.dashboard,
                      color: _currentTab == 0 ? Colors.blue : Colors.grey,
                      size: 30.0,
                    ),
                    // Text(
                    //   "Dashboard",
                    //   style: TextStyle(
                    //       color:
                    //           _currentTab == 0 ? Colors.blue : Colors.grey),
                    // )
                  ],
                ),
              ),
              Visibility(
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      _currentTab = 0;
                    });
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dashboard,
                        color: _currentTab == 0 ? Colors.blue : Colors.grey,
                        size: 30.0,
                      ),
                      // Text(
                      //   "Dashboard",
                      //   style: TextStyle(
                      //       color:
                      //           _currentTab == 0 ? Colors.blue : Colors.grey),
                      // )
                    ],
                  ),
                ),
                maintainState: true,
                maintainAnimation: true,
                maintainSize: true,
                visible: false,
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    _currentTab = 0;
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.dashboard,
                      color: _currentTab == 0 ? Colors.blue : Colors.grey,
                      size: 30.0,
                    ),
                    // Text(
                    //   "Dashboard",
                    //   style: TextStyle(
                    //       color:
                    //           _currentTab == 0 ? Colors.blue : Colors.grey),
                    // )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    _currentTab = 0;
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.dashboard,
                      color: _currentTab == 0 ? Colors.blue : Colors.grey,
                      size: 30.0,
                    ),
                    // Text(
                    //   "Dashboard",
                    //   style: TextStyle(
                    //       color:
                    //           _currentTab == 0 ? Colors.blue : Colors.grey),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
