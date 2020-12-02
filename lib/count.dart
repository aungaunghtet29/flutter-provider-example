import 'package:flutter/material.dart';

class CounterProvideClass extends ChangeNotifier {
  int count = 0;
  void incrementCount() {
    count += 1;
    notifyListeners();
  }

  int get getCount {
    return count;
  }
}
