
import 'package:flutter/material.dart';

import 'WebViewContainer.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WebViewContainer('https://m.facebook.com', 'Facebook'),
    );
  }
}
