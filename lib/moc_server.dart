import 'package:flutter/material.dart';

class MocServer extends ChangeNotifier {
  void powerXray(bool power) {
    xrayOn = power;
    notifyListeners();
  }

  void connectToServer(bool connect) {
    serverConnected = connect;
    notifyListeners();
  }

  bool xrayOn = false;
  bool serverConnected = false;
}
