import 'package:flutter/material.dart';
import 'package:iti_flutter_session2/consts.dart';
import 'package:iti_flutter_session2/screens/login_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffFEFAE0),
        body: Column(
          children: [
            const SizedBox(
              height: 140,
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
            InkWell(
              onTap: () => Navigator.pushNamed(context, LoginScreen.id),
              child: Container(
                width: 370,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xffBC6C25),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(17),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Colors.black.withOpacity(0.5), // Color of the shadow
                      spreadRadius: 2, // Spread radius of the shadow
                      blurRadius: 7, // Blur radius of the shadow
                      offset: const Offset(0, 3), // Offset of the shadow
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Login With Phone Number",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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
                fontSize: 22,
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
                    _buildSMIcon(context, "assets/images/Apple.svg"),
                    _buildSMIcon(
                        context, "assets/images/google sign up button.svg"),
                    _buildSMIcon(context, "assets/images/icons-social.svg"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSMIcon(BuildContext context, String iconPath) {
    return InkWell(
      onTap: () {
        const SnackBar(
          content: Text('Not Working Yet :)'),
          duration: Duration(seconds: 2),
        );
      },
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xFF283618),
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), // Color of the shadow
              spreadRadius: 2, // Spread radius of the shadow
              blurRadius: 7, // Blur radius of the shadow
              offset: const Offset(0, 3), // Offset of the shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            iconPath,
            width: 32,
            height: 32,
          ),
        ),
      ),
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
}
