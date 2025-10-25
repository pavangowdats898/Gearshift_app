import 'package:flutter/material.dart';
import 'package:gearshift/features/authentication/screeens/signup_screen.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SignupScreen(),
      
    );
  }
}