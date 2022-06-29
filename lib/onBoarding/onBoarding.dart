import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const/const.dart';

class OnBoarding extends StatelessWidget {
  String? headerText;
  String? subText;
  String? img;

  OnBoarding({Key? key, required this.headerText, required this.subText, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child: Column(
          children: [
            Image.asset(
              img!,
              width: MediaQuery.of(context).size.width - 50,
            ),
            Text(
              headerText!,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: blackTextColor
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              subText!,
              style: const TextStyle(
                color: lightBlackTextColor,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}