import 'package:flutter/material.dart';
import 'package:page_transition_animation/secondPage.dart';

import 'CustomPageRoute.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    CustomPageRoute(
                        child: SecondPage(), direction: AxisDirection.left)
                );
              },
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.blue,
                primary: Colors.blue[300],
                minimumSize: Size(88, 36),
                padding: EdgeInsets.symmetric(horizontal: 16),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
              child: Text(
                "Left",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    CustomPageRoute(
                        child: SecondPage(), direction: AxisDirection.right)
                );
              },
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.blue,
                primary: Colors.blue[300],
                minimumSize: Size(88, 36),
                padding: EdgeInsets.symmetric(horizontal: 16),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
              child: Text(
                "Right",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    CustomPageRoute(
                        child: SecondPage(), direction: AxisDirection.up)
                );
              },
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.blue,
                primary: Colors.blue[300],
                minimumSize: Size(88, 36),
                padding: EdgeInsets.symmetric(horizontal: 16),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
              child: Text(
                "Up",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    CustomPageRoute(
                        child: SecondPage(), direction: AxisDirection.down)
                );
              },
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.blue,
                primary: Colors.blue[300],
                minimumSize: Size(88, 36),
                padding: EdgeInsets.symmetric(horizontal: 16),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
              child: Text(
                "Down",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.blue,
                primary: Colors.blue[300],
                minimumSize: Size(88, 36),
                padding: EdgeInsets.symmetric(horizontal: 16),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
              child: Text(
                "Normal Transition",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
