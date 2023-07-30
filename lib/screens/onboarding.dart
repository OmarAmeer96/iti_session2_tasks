import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import 'package:iti_flutter_session2/screens/get_started.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({super.key});

  static String id = 'OnBoarding';

  final List<Introduction> list = [
    Introduction(
      title: 'Find Your Dream Home',
      subTitle:
          "Explore our vast collection of exquisite properties and discover the home that perfectly fits your dreams. From cozy apartments to luxurious villas, we have it all!",
      imageUrl: 'assets/images/onboarding3.png',
    ),
    Introduction(
      title: 'Free Transactions',
      subTitle:
          "Leave the paperwork and stress behind! DreamVista Realty ensures smooth and secure transactions, making your property buying or selling experience a breeze.",
      imageUrl: 'assets/images/onboarding2.png',
    ),
    Introduction(
      title: 'Expert Guidance',
      subTitle:
          "Our team of seasoned real estate professionals is here to guide you every step of the way. Whether you're a first-time buyer or a seasoned investor, we've got your back!",
      imageUrl: 'assets/images/onboarding1.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: const Color(0xFFFEFAE0),
      foregroundColor: const Color(0xFFBC6C25),
      introductionList: list,
      onTapSkipButton: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const GetStarted(),
          )),
      skipTextStyle: const TextStyle(
        color: Color(0xff283618),
        fontSize: 18,
      ),
    );
  }
}
