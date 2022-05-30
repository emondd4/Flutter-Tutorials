import 'package:flutter/material.dart';
import 'package:mqtt_client/mqtt_client.dart';

import '../mqtt/mqtt_client.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late MqttClient client;
  var topic = "/dashboard/data";

  @override
  Widget build(BuildContext context) {

    void _publish(String message) {
      final builder = MqttClientPayloadBuilder();
      builder.addString('Hello from flutter_client');
      client.publishMessage(topic, MqttQos.atLeastOnce, builder.payload!);
    }

    return Scaffold(
      appBar: AppBar(title: const Text("MQTT Example"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              connect().then((value) {
                client = value;
              });
            }, child: const Text("Connect")),
            ElevatedButton(onPressed: () {
              client.subscribe(topic, MqttQos.atLeastOnce);
            }, child: const Text("Subscribe")),
            ElevatedButton(onPressed: () {
              _publish('Hello');
            }, child: const Text("Publish")),
            ElevatedButton(onPressed: () {
              client.unsubscribe(topic);
            }, child: const Text("Unsubscribe")),
            ElevatedButton(onPressed: () {
              client.disconnect();
            }, child: const Text("Disconnect")),
          ],
        ),
      ),
    );
  }

}
