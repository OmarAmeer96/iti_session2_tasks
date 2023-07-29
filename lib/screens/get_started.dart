import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iti_flutter_session2/screens/home_screen.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  static String id = 'GetStarted';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/images/275219-wallpaper-1080-1920.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  color: const Color(0xFF283618).withOpacity(0.6),
                ),
              ),
            ),
            const Positioned(
              top: 80,
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to our",
                      style: TextStyle(
                        fontFamily: "JosefinSans",
                        fontSize: 38,
                        color: Color(0xffBC6C25),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "DreamVista Realty",
                      style: TextStyle(
                        fontFamily: "JosefinSans",
                        fontSize: 38,
                        color: Color(0xffFEFAE0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 300,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff283618),
                      Color(0xffDDA15E),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                    bottomRight: Radius.circular(200),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 120,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  height: 50,
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, HomeScreen.id),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffFEFAE0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: const Center(
                          child: Text(
                        "Continue With Email Or Phone",
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: "JosefinSans",
                        ),
                      )),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
