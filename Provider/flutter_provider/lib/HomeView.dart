import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_provider/timer_info.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      var timerInfo = Provider.of<TimerInfo>(context,listen: false);
      timerInfo.updateRemainingTimer();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Calling Build Function");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Example"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "images/countdown.png",
              height: 120,
              width: 120,
            ),
            const SizedBox(
              height: 32,
            ),
            Consumer<TimerInfo>(
              builder: (context, data, child) {
                return Text(data.getRemainingTime().toString() ?? '',
                    style: const TextStyle(fontSize: 72));
              },
            ),
          ],
        ),
      ),
    );
  }
}
