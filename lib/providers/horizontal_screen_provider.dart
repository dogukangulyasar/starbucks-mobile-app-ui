import 'package:flutter/material.dart';

class HorizontalScreenProvider extends ChangeNotifier {
  int index = 0;

  setIndex(int newIndex) {
    index = newIndex;
    notifyListeners();
  }
}
