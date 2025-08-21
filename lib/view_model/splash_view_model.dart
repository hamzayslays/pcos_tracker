import 'package:flutter/material.dart';

class SplashViewModel extends ChangeNotifier {
  bool navigate = false;

  SplashViewModel() {
    _startDelay();
  }

  void _startDelay() async {
    await Future.delayed(const Duration(seconds: 3));
    navigate = true;
    notifyListeners();
  }
}
