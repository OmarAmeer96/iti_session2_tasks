import 'package:flutter/material.dart';
import 'package:iti_flutter_session2/screens/popular_pack_screen.dart';
import 'package:iti_flutter_session2/screens/store_home_screen.dart';
import 'package:iti_flutter_session2/screens/get_started.dart';
import 'package:iti_flutter_session2/screens/home_screen.dart';
import 'package:iti_flutter_session2/screens/login_screen.dart';
import 'package:iti_flutter_session2/screens/onboarding.dart';
import 'package:iti_flutter_session2/screens/splash_screen.dart';
import 'package:iti_flutter_session2/screens/text_field_screen.dart';

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
        SplashScreen.id: (context) => const SplashScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        GetStarted.id: (context) => const GetStarted(),
        OnBoarding.id: (context) => OnBoarding(),
        StoreHomeScreen.id: (context) => const StoreHomeScreen(),
        PopularPackScreen.id: (context) => const PopularPackScreen(),
        TextFieldScreen.id: (context) => const TextFieldScreen(),
      },
      initialRoute: TextFieldScreen.id,
    );
  }
}
