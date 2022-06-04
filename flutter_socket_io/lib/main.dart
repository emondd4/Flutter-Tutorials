import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';


void main() {
  runApp(const MyApp());

  /// Socket IO
  // IO.Socket socket = IO.io('https://socketio-chat-h9jt.herokuapp.com/');
  // socket.onConnect((_) {
  //   print('connect');
  //   //socket.emit('msg', 'test');
  // });
  // socket.on('event', (data) => print(data));
  // socket.onDisconnect((_) => print('disconnect'));
  // socket.on('fromServer', (_) => print(_));

  Socket socket = io('https://socketio-chat-h9jt.herokuapp.com/',
      OptionBuilder()
          .setTransports(['websocket']) // for Flutter or Dart VM
          .disableAutoConnect()  // disable auto-connection
          .setExtraHeaders({'foo': 'bar'}) // optional
          .build()
  );
  socket.connect();
  socket.onConnect((data) => {
    print("Connect"),
    socket.disconnect(),
  });
  socket.onDisconnect((_) => print('disconnect'));

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Socket.IO Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
