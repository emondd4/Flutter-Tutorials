import 'package:flutter/material.dart';

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _currentTab = 0;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      children: [
                        Icon(Icons.dashboard,
                            color:
                                _currentTab == 0 ? Colors.blue : Colors.grey),
                        Text(
                          "Dashboard",
                          style: TextStyle(
                              color:
                                  _currentTab == 0 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _currentTab = 0;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      children: [
                        Icon(Icons.dashboard,
                            color:
                            _currentTab == 0 ? Colors.blue : Colors.grey),
                        Text(
                          "Dashboard",
                          style: TextStyle(
                              color:
                              _currentTab == 0 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _currentTab = 0;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      children: [
                        Icon(Icons.dashboard,
                            color:
                            _currentTab == 0 ? Colors.blue : Colors.grey),
                        Text(
                          "Dashboard",
                          style: TextStyle(
                              color:
                              _currentTab == 0 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _currentTab = 0;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      children: [
                        Icon(Icons.dashboard,
                            color:
                            _currentTab == 0 ? Colors.blue : Colors.grey),
                        Text(
                          "Dashboard",
                          style: TextStyle(
                              color:
                              _currentTab == 0 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
