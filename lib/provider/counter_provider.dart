import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CountProvider with ChangeNotifier {
  int _count = 50;

  int get count => _count;

  void addcount() {
    _count++;
    notifyListeners();
  }
}
