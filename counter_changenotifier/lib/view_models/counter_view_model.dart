import 'package:flutter/material.dart';

class CounterViewModel extends ChangeNotifier {
  int counter = 0;
  // int x = 0;

  void increment() {
    counter++;
    // x++;
    notifyListeners();
  }
}
