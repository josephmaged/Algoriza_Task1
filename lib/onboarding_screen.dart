import 'package:algoriza_task1/onBoarding.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {

  final controller = PageController(
    initialPage: 0,
  );

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
                      primary: const Color(0XFFf8f3e7),
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
              height: MediaQuery.of(context).size.height - 240,
              width: MediaQuery.of(context).size.width - 20,
              child: PageView(
                controller: controller,
                children: [
                  OnBoarding()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
