import 'package:flutter/material.dart';

class Reload extends ChangeNotifier {
  // ChangeNotifier를 extends한다.
  bool _isReloaded = true;

  bool get isReloaded => _isReloaded;

  void change() {
    _isReloaded = !isReloaded;
    print(_isReloaded);
    notifyListeners();
  }
}
