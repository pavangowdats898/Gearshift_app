import 'package:flutter/material.dart';
import 'package:gearshift/features/authentication/screeens/signup_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignupScreen(),
      
    );
  }
}