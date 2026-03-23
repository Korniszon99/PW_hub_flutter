import 'package:flutter/material.dart';

class TopBarProvider extends ChangeNotifier {
  int _selectedIndex = -1;

  int get selectedIndex => _selectedIndex;

  void setIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void clearIndex() {
    _selectedIndex = -1;
    notifyListeners();
  }
}