import 'package:flutter/material.dart';

class CounterViewModel extends ChangeNotifier {
  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }
}
