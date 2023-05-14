import 'package:flutter/material.dart';

class CheckboxProvider with ChangeNotifier {
  bool _isChecked = true;

  bool get isChecked => _isChecked;

  set isChecked(bool value) {
    _isChecked = value;
    notifyListeners();
  }
}