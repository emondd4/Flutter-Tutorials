import 'package:flutter/material.dart';
import 'package:flutter_appbar_screenchange/secondscreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
        title: Text("MainScreen"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(onPressed: () {
                _changeScreen(context);
              },
                minWidth: double.infinity,
                textColor: Colors.white,
                color: Theme.of(context).accentColor,
                child: Text("Move To Next Screen"),),
            )
          ],
      ),
    );
  }

  void _changeScreen(BuildContext context) {

    Navigator.push(context,
      new MaterialPageRoute(builder: (context) => new SecondScreen()),);

  }
}
