import 'package:flutter/material.dart';
import 'package:iti_flutter_session2/screens/home_screen.dart';

class SplashScreenOne extends StatelessWidget {
  const SplashScreenOne({super.key});

  static String id = 'Screen2';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => Navigator.pushNamed(context, HomeScreen.id),
            child: const Icon(
              Icons.keyboard_arrow_left_rounded,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
