import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Column Example"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Flexible(child: Container(
              color: Colors.pinkAccent,
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Flexible(child: Container(color: Colors.white10,),flex: 1,),
                  Flexible(child: Container(color: Colors.grey,),flex: 1,),
                ],
              ),
            ),flex: 1,),
            Flexible(child: Container(
              color: Colors.pink,
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Flexible(child: Container(color: Colors.deepPurple,),flex: 1,),
                  Flexible(child: Container(color: Colors.purpleAccent,),flex: 1,),
                ],
              ),
            ),flex: 1,),
          ],
        ),
      ),
    );
  }
}
