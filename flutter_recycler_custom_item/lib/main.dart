import 'package:flutter/material.dart';
import 'package:flutter_recycler_custom_item/testModel.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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

  final List<Trip> triplist = [
    Trip("New York", DateTime.now(), DateTime.now(), 200.00, "Car"),
    Trip("Berlin", DateTime.now(), DateTime.now(), 450.00, "Bike"),
    Trip("Florida", DateTime.now(), DateTime.now(), 250.00, "Bus"),
    Trip("Washington D.C", DateTime.now(), DateTime.now(), 150.00, "Air Plane"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Custom ListView"),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: triplist.length,
              itemBuilder: (BuildContext context, int index) => buildCustomItem(context, index)
          ),
        )
    );
  }

 Widget buildCustomItem(BuildContext context, int index) {
    final trip = triplist[index];
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(trip.title),
                  Spacer()
                ],
              ),

              Row(
                children: [
                  Text("${DateFormat("dd/MM/yyyy").format(trip.startDate).toString()} - ${DateFormat("dd/MM/yyyy").format(trip.endDate).toString()}"),
                  Spacer()
                ],
              ),

              Row(
                children: [
                  Text(trip.budget.toString()),
                  Spacer(),
                  Text(trip.travelType)
                ],
              )
            ],
          ),
        ),
      ),
    );
 }
 
}
