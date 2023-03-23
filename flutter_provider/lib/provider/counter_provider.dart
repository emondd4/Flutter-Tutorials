import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {

  int count = 0;

  void increase(){
    count ++;
    notifyListeners();
  }

}