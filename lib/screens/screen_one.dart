import 'package:flutter/material.dart';
import 'package:iti_flutter_session2/consts.dart';
import 'package:iti_flutter_session2/screens/screen_two.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  static String id = 'Screen1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffFEFAE0),
        appBar: _buildAppBar(context),
        body: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Center(
              child: _buildCircleAvatar(),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "Welcome to our",
              style: TextStyle(
                fontFamily: "JosefinSans",
                fontSize: 38,
                color: Color(0xff283618),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "DreamVista Realty",
              style: TextStyle(
                fontFamily: "JosefinSans",
                fontSize: 38,
                color: Color(0xffBC6C25),
              ),
            ),
            const SizedBox(
              height: 135,
            ),
            Container(
              width: 370,
              height: 55,
              decoration: const BoxDecoration(
                color: Color(0xffBC6C25),
                borderRadius: BorderRadius.all(
                  Radius.circular(17),
                ),
              ),
              child: const Center(
                child: Text(
                  "Login With Email",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "OR",
              style: TextStyle(
                fontFamily: "JosefinSans",
                fontSize: 24,
                color: Color(0xff283618),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 30,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildSMIcon(context, FontAwesomeIcons.apple),
                    _buildSMIcon(context, FontAwesomeIcons.googlePlus),
                    _buildSMIcon(context, FontAwesomeIcons.twitter),
                    _buildSMIcon(context, FontAwesomeIcons.facebook),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Icon _buildSMIcon(BuildContext context, IconData icon) {
    return Icon(
      icon,
      size: 40,
      color: const Color(0xff283618),
    );
  }

  CircleAvatar _buildCircleAvatar() {
    return CircleAvatar(
      backgroundColor: const Color(0xff283618),
      radius: 90,
      child: Image.asset(
        imageScreen1Path,
        width: 110,
        height: 110,
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xffFEFAE0),
      elevation: 0,
      actions: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, ScreenTwo.id),
          child: const Icon(
            Icons.keyboard_arrow_right_rounded,
            size: 40,
            color: Color(0xff283618),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
