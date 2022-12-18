import 'package:flutter/material.dart';

class GreetingProvider with ChangeNotifier {
  String _greeting = '';

  String get greeting => _greeting;

  set greeting(String value) {
    _greeting = value;
    notifyListeners();
  }

  void updateGreeting() {
    greeting = getGreeting();
  }

  // function to get greeting string
  String getGreeting() {
    int hour = DateTime.now().hour;

    if (hour < 12 && hour > 6) {
      return 'Good morning';
    } else if (hour < 17 && hour > 12) {
      return 'Good afternoon';
    } else if (hour > 17 && hour < 20) {
      return 'Good evening';
    } else {
      return 'Good Night';
    }
  }
}
