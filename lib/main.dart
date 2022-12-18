import 'package:flutter/material.dart';
import 'package:internsathi_greeting/homepage.dart';
import 'package:internsathi_greeting/providers/greeting_provider.dart';
import 'package:internsathi_greeting/providers/timer_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GreetingProvider()),
        ChangeNotifierProvider(create: (context) => TimeProvider())
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var timeProvider = Provider.of<TimeProvider>(context);
    timeProvider.startTimer();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: timeProvider.currentTime.hour > 18 ||
              timeProvider.currentTime.hour < 6
          ? ThemeData.dark()
          : ThemeData.light(),
      home: const HomePage(),
    );
  }
}
