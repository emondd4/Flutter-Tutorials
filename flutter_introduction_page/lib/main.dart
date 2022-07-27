
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_introduction_page/homeScreen.dart';
import 'package:introduction_screen/introduction_screen.dart';

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
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Akter Uzzaman",
              body: "Lead Android Developer of bdtask.",
              image: Image.asset("assets/images/third.jpg",width: 350,),
            ),
            PageViewModel(
              title: "Abul Hasanat Azad",
              body: "Nude JS Developer of bdtask.",
              image: Image.asset("assets/images/second.jpg",width: 350,),
            ),
            PageViewModel(
              title: "Emon Hossain Munna",
              body: "Junior Android Developer of bdtask.",
              image: Image.asset("assets/images/first.jpg",width: 350,),
            ),
          ],
          onDone: () {
            Navigator.push(context, CupertinoPageRoute(builder: (context) => HomeScreen()));
          },
          done: Text("Done"),
          showSkipButton: false,
          showNextButton: false,
          showDoneButton: false,
          next: Text("Next"),
          skip: Text("Skip"),
          dotsDecorator: DotsDecorator(
            size: Size(10.0,10.0),
            color: Theme.of(context).accentColor,
            activeSize: Size(22.0,22.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
                side: BorderSide(
                    width: 2,
                    color: Colors.deepPurple
                )
            )
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
