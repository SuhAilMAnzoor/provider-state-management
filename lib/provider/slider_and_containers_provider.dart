import 'package:flutter/foundation.dart';

class ExampleTwoProvider with ChangeNotifier {
  double _value = 1.0;

  double get value => _value;

  void setValue(double newvalue) {
    _value = newvalue;
    notifyListeners();
  }
}
