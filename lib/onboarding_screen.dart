import 'package:algoriza_task1/onBoarding.dart';
import 'package:flutter/cupertino.dart';
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
              height: MediaQuery.of(context).size.height - 300,
              child: PageView(
                controller: controller,
                children: [OnBoarding()],
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
                    color: const Color(0XFFdec091),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 5,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: const Color(0XFFeaeaea),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 5,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: const Color(0XFFeaeaea),
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
                  primary: const Color(0XFF51afab),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account? ',
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
                GestureDetector(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0XFF51afab)
                    ),
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
