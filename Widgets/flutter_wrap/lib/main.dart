import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Wrap(
          direction: Axis.horizontal,
          //alignment: WrapAlignment.spaceEvenly,
          // runAlignment: WrapAlignment.end,
          verticalDirection: VerticalDirection.down,
          spacing: 20,
          textDirection: TextDirection.ltr,
          children: [
            MaterialButton(onPressed: (){}, child: Text("Button 1", style: TextStyle(color: Colors.white),),color: Colors.red,),
            MaterialButton(onPressed: (){}, child: Text("Button 2", style: TextStyle(color: Colors.white),),color: Colors.red,),
            MaterialButton(onPressed: (){}, child: Text("Button 3", style: TextStyle(color: Colors.white),),color: Colors.red,),
            MaterialButton(onPressed: (){}, child: Text("Button 4", style: TextStyle(color: Colors.white),),color: Colors.red,),
            MaterialButton(onPressed: (){}, child: Text("Button 5", style: TextStyle(color: Colors.white),),color: Colors.red,),
          ],
        ),

      ),
    );
  }
}
