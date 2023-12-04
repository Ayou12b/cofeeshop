import 'package:flutter/material.dart';
import 'package:myapplication/screens/Welcome_screen.dart';

void main() => runApp(const myapplication());

// ignore: camel_case_types
class myapplication extends StatelessWidget {
  const myapplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: welcomeScreen(),
    );
  }
}
