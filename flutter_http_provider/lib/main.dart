import 'package:flutter/material.dart';
import 'package:flutter_http_provider/ProviderClass/ProviderClass.dart';
import 'package:provider/provider.dart';

import 'Screens/HomeScreen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ProviderClass>.value(value: ProviderClass())
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
