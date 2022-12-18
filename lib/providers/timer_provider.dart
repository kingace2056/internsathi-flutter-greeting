import 'dart:async';

import 'package:flutter/material.dart';

class TimeProvider with ChangeNotifier {
  DateTime _currentTime = DateTime.now();

  DateTime get currentTime => _currentTime;

  void updateTime() {
    _currentTime = DateTime.now();
    notifyListeners();
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      updateTime();
    });
  }
}
