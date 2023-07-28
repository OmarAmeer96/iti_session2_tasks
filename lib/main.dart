import 'package:flutter/material.dart';
import 'package:iti_flutter_session2/screens/screen_one.dart';
import 'package:iti_flutter_session2/screens/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        ScreenOne.id: (context) => const ScreenOne(),
        ScreenTwo.id: (context) => const ScreenTwo(),
      },
      initialRoute: 'Screen1',
    );
  }
}
