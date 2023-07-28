import 'package:flutter/material.dart';
import 'package:iti_flutter_session2/screens/home_screen.dart';
import 'package:iti_flutter_session2/screens/splash_screen_one.dart';

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
        HomeScreen.id: (context) => const HomeScreen(),
        SplashScreenOne.id: (context) => const SplashScreenOne(),
      },
      initialRoute: 'Screen1',
    );
  }
}
