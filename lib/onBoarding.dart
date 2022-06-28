import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(
              'assets/images/onBoarding1.jpeg',
              width: MediaQuery.of(context).size.width - 20,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Get food delivery to your doorstep asap',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'We have young and professional delivery team that will bring your food as soon as possible to your doorstep',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
