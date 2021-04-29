import 'package:flutter/material.dart';

class MocServer extends ChangeNotifier {
  void powerXray(bool power) {
    xrayOn = power;
    notifyListeners();
  }

  bool xrayOn = false;
}
