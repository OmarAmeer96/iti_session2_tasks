import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:iti_flutter_session2/screens/home_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset(
            "assets/images/logo.png",
            width: 200,
            height: 200,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "DreamVista Realty",
            style: TextStyle(
              fontFamily: "JosefinSans",
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color(0xffFEFAE0),
            ),
          )
        ],
      ),
      backgroundColor: const Color(0xffDDA15E),
      nextScreen: const HomeScreen(),
      splashIconSize: 250,
      duration: 1000,
      splashTransition: SplashTransition.scaleTransition,
      pageTransitionType: PageTransitionType.topToBottom,
    );
  }
}
