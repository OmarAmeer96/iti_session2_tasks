import 'package:flutter/material.dart';
import 'package:iti_flutter_session2/screens/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Screen1();
  }
}