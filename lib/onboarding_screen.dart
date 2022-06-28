import 'package:algoriza_task1/const/const.dart';
import 'package:algoriza_task1/onBoarding.dart';
import 'package:flutter/material.dart';

import 'const/imgPath.dart';
import 'const/string.dart';

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
    if(page == 0) {
      firstPage = true;
      secondPage = false;
    }else {
      firstPage = false;
      secondPage = true;
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      primary: secondaryColor,
                    ),
                    onPressed: null,
                    child: const Text(
                      'Skip',
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 100,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 300,
              child: PageView(
                controller: controller,
                onPageChanged: (int page){
                  setState(() {
                    _onPageViewChange(page);
                  });
                },
                children: [
                  OnBoarding(headerText: headerTextBoarding1, subText: subTextBoarding1, img: imgBoarding1, isActive: firstPage),
                  OnBoarding(headerText: headerTextBoarding2, subText: subTextBoarding2, img: imgBoarding2, isActive: secondPage),
                ],
              ),
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
                    color:  firstPage ? primaryColor : secondaryColor,
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
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width - 40,
              child: ElevatedButton(
                onPressed: null,
                child: const Text('Get Started'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  primary: primaryColor,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account? ',
                  style: TextStyle(fontSize: 18),
                ),
                GestureDetector(
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
    );
  }
}
