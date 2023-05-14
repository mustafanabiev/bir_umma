import 'package:flutter/material.dart';

class GenderProvider with ChangeNotifier {
  bool _gender = true;

  bool get getGender => _gender;

  set setGender(bool value) {
    _gender = value;
    notifyListeners();
  }
}
