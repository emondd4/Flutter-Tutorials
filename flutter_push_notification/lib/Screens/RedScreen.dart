import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_push_notification/Utils/local_notification_service.dart';

class RedPage extends StatefulWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  _RedPageState createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: const Center(
          child: Text(
            "This Is Red Screen",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    firebaseCloudMessaging_Listeners();
    LocalNotificationService.initialize(context);
  }

  void firebaseCloudMessaging_Listeners() {
    _firebaseMessaging.getToken().then((token) {
      print(token);
    });

    ///gives you the message on which user taps
    ///and it open the app from terminated state
    //FirebaseMessaging.instance.getInitialMessage();
    FirebaseMessaging.instance.getInitialMessage().then((value) {
      if(value != null){
        final routeFromMessage = value.data["route"];
        Navigator.of(context).pushNamed(routeFromMessage);
      }
    });

    ///foreground message receive work
    FirebaseMessaging.onMessage.listen((event) {
      if (event.notification != null) {
        print(event.notification!.body);
        print(event.notification!.title);

        LocalNotificationService.display(event);

      }
    });

    ///when the app is in background but opened and user taps
    ///on notification
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      final routeFromMessage = event.data["route"];
      print(routeFromMessage);
      Navigator.of(context).pushNamed(routeFromMessage);
    });
  }
}
