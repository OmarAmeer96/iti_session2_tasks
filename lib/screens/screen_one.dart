import 'package:flutter/material.dart';
import 'package:iti_flutter_session2/screens/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  static String id = 'Screen1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, ScreenTwo.id),
              child: const Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 40,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}
