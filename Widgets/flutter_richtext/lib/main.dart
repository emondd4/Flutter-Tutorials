import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
            buildHello1(),
            buildHello2(),
            buildEmail(),
            buildContact(),
            buildBlog(),
          ],
        ),
      ),
    );
  }

  Widget buildHello1() {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: "Hello ",
          style: TextStyle(
            color: Colors.teal,
            fontSize: 28,
          )),
      TextSpan(
          text: "World",
          style: TextStyle(
            color: Colors.red,
            fontSize: 36,
          )),
    ]));
  }

  Widget buildHello2() {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: "Hello ",
          style: TextStyle(
            color: Colors.teal,
            fontSize: 28,
          )),
      TextSpan(
          text: "World ",
          style: TextStyle(
            color: Colors.red,
            fontSize: 36,
          )),
      TextSpan(
          text: "🤙",
          style: TextStyle(
            fontSize: 36,
          )),
    ]));
  }

  Widget buildEmail() {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: "Contact me via: ",
        style: TextStyle(
          color: Colors.black,
          fontSize: 23,
        ),
        children: [
          WidgetSpan(
              child: Icon(
                Icons.email,
                color: Colors.red,
              ),
              alignment: PlaceholderAlignment.middle
          ),
          TextSpan(
            text: " Email",
            style: TextStyle(
              color: Colors.red,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap = launchEmail
          ),
        ],
      ),
    ]));
  }

  Future launchEmail() async {

    final toEmail = 'emondd4@gmail.com';
    final subject = "Example Subject";
    final body = "Hello World";

    final email = 'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(body)}';

    await launch(email);

  }

 Widget buildContact() {
   return RichText(
       text: TextSpan(children: [
         TextSpan(
           text: "Contact me via: ",
           style: TextStyle(
             color: Colors.black,
             fontSize: 23,
           ),
           children: [
             WidgetSpan(
                 child: Icon(
                   Icons.call,
                   color: Colors.red,
                 ),
                 alignment: PlaceholderAlignment.middle
             ),
             TextSpan(
                 text: " +8801676079239",
                 style: TextStyle(
                   color: Colors.red,
                   fontSize: 23,
                   decoration: TextDecoration.underline,
                 ),
                 recognizer: TapGestureRecognizer()..onTap = launchCall
             ),
           ],
         ),
       ]));
 }

  Future  launchCall() async {
    const phoneNumber = "+8801676079239";
    await launch("tel:$phoneNumber");
  }

 Widget buildBlog() {
   return RichText(
       text: TextSpan(children: [
         TextSpan(
           text: "Read My Blog: ",
           style: TextStyle(
             color: Colors.black,
             fontSize: 23,
           ),
           children: [
             WidgetSpan(
                 child: Icon(
                   Icons.book_online,
                   color: Colors.red,
                 ),
                 alignment: PlaceholderAlignment.middle
             ),
             TextSpan(
                 text: " Here",
                 style: TextStyle(
                   color: Colors.red,
                   fontSize: 23,
                   decoration: TextDecoration.underline,
                 ),
                 recognizer: TapGestureRecognizer()..onTap = launchUrl
             ),
           ],
         ),
       ]));
 }

  Future launchUrl() async {
    const url = "https://www.facebook.com/emon.dd4";

    await launch(url);
  }
}
