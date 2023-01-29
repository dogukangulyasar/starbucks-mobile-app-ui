import 'package:flutter/material.dart';

class ScreenProvider extends ChangeNotifier {
  int currentIndex = 0;

  // Set the currentIndex
  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}