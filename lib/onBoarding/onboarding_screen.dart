import 'package:algoriza_task1/const/const.dart';
import 'package:algoriza_task1/login_screen.dart';
import 'package:algoriza_task1/onBoarding/onBoarding.dart';
import 'package:algoriza_task1/register_screen.dart';
import 'package:flutter/material.dart';

import '../const/imgPath.dart';
import '../const/string.dart';
import '../reusable/reusableButton.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController(
    initialPage: 0,
  );

  bool firstPage = true;
  bool secondPage = false;

  _onPageViewChange(int page) {
    if (page == 0) {
      firstPage = true;
      secondPage = false;
    } else {
      firstPage = false;
      secondPage = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        primary: secondaryColor,
                      ),
                      onPressed: () => Navigator.of(context).pushReplacementNamed(RegisterScreen.ID),
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: blackTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 100,
              ),
              Wrap(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height - 300,
                      maxWidth: MediaQuery.of(context).size.width
                    ),
                    child: PageView(
                      controller: controller,
                      onPageChanged: (int page) {
                        setState(() {
                          _onPageViewChange(page);
                        });
                      },
                      children: [
                        OnBoarding(headerText: headerTextBoarding1, subText: subTextBoarding1, img: imgBoarding1),
                        OnBoarding(headerText: headerTextBoarding2, subText: subTextBoarding2, img: imgBoarding2),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 5,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: firstPage ? primaryColor : secondaryColor,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 5,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: secondPage ? primaryColor : secondaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ReusableButton(
                onPressed: () => Navigator.of(context).pushReplacementNamed(LoginScreen.ID),
                text: 'Get Started',
                color: primaryColor,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account? ',
                    style: TextStyle(fontSize: 18, color: blackTextColor),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushReplacementNamed(RegisterScreen.ID),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 18, color: primaryColor),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
