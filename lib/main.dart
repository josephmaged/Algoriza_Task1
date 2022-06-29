import 'package:algoriza_task1/login_screen.dart';
import 'package:algoriza_task1/onBoarding/onboarding_screen.dart';
import 'package:algoriza_task1/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '7Kave',
      routes: {
        LoginScreen.ID: (context) => LoginScreen(),
        RegisterScreen.ID: (context) => RegisterScreen(),
      },
      home: OnBoardingScreen(),
    );
  }
}
