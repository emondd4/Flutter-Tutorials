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
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Normal Card View"),
          ),
          SizedBox(
            height: 5.0,
          ),
          Card(
            color: Colors.red,
            elevation: 10.0,
            child: SizedBox(
              height: 100.0,
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Card 1"),
                  )),
                ],
              ),
            ),
          ),
          Divider(),
          SizedBox(
            height: 10.0,
          ),

          ListTile(
            title: Text("Card View On Pressed"),
          ),
          SizedBox(
            height: 5.0,
          ),
          Card(
            color: Colors.red,
            elevation: 10.0,
            child: SizedBox(
              height: 100.0,
              child: InkWell(
                onTap: () {},
                splashColor: Colors.green,
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Card 2"),
                    )),
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          SizedBox(
            height: 10.0,
          ),

          ListTile(
            title: Text("Card View With Custom Shape"),
          ),
          SizedBox(
            height: 5.0,
          ),
          Card(
            color: Colors.red,
            elevation: 10.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            )),
            child: SizedBox(
              height: 100.0,
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Card 3"),
                  )),
                ],
              ),
            ),
          ),
          Divider(),
          SizedBox(
            height: 10.0,
          ),

          ListTile(
            title: Text("Card View With Image and Button"),
          ),
          SizedBox(
            height: 5.0,
          ),
          Card(
            color: Colors.white,
            elevation: 10.0,
            child: Column(
              children: [
                SizedBox(
                  height: 180.0,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          "images/dummy.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 16.0,
                        left: 16.0,
                        right: 16.0,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Text("Complex Card Example",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: Colors.white)),
                        ),
                      )
                    ],
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () {}, child: Text("Share")),
                    TextButton(onPressed: () {}, child: Text("Explore")),
                  ],
                )
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
