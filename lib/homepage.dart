import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
