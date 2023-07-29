import 'package:flutter/material.dart';
import 'package:iti_flutter_session2/screens/get_started.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String id = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset("assets/images/HouseAnimation.json"),

      // Column(
      //   children: [
      //     Image.asset(
      //       "assets/images/logo.png",
      //       width: 200,
      //       height: 200,
      //     ),
      //     const SizedBox(
      //       height: 10,
      //     ),
      //     const Text(
      //       "DreamVista Realty",
      //       style: TextStyle(
      //         fontFamily: "JosefinSans",
      //         fontSize: 35,
      //         fontWeight: FontWeight.bold,
      //         color: Color(0xffFEFAE0),
      //       ),
      //     )
      //   ],
      // ),
      backgroundColor: const Color(0xffDDA15E),
      nextScreen: const GetStarted(),
      splashIconSize: 350,
      duration: 2100,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
