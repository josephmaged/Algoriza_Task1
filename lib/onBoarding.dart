import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child: Column(
          children: [
            Image.asset(
              'assets/images/onBoarding1.jpeg',
              width: MediaQuery.of(context).size.width - 50,
            ),
            const Text(
              'Get food delivery to your doorstep asap',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'We have young and professional delivery team that will bring your food as soon as possible to your doorstep',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
