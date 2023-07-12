import 'package:flutter/material.dart';
import 'package:lestari/views/screens/landing.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Landing(),
      theme: ThemeData(
        fontFamily: "Rubik",
      ),
    );
  }
}
