import 'package:flutter/material.dart';

class CounterState with ChangeNotifier {
  int childCounter = 0;
  int parentCounter=0;
  void incrementChild() {
    childCounter++;
    notifyListeners();
  }
  void incrementParent(){
parentCounter++;
notifyListeners();
  }
}