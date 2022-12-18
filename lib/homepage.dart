import 'package:flutter/material.dart';
import 'package:internsathi_greeting/providers/greeting_provider.dart';
import 'package:internsathi_greeting/providers/timer_provider.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var greetingProvider = context.watch<GreetingProvider>().getGreeting();
    var timerProvider = context.watch<TimeProvider>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.network(
                  'https://internsathi.com/wp-content/uploads/2022/06/InternSathi-logo.png'),
            ),
            Text(
              DateFormat('hh:mm:ss a').format(timerProvider.currentTime),
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Text(
              greetingProvider.toString(),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}
