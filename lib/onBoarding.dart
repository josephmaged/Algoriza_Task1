import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  String? headerText;
  String? subText;
  String? img;
  bool isActive;

  OnBoarding({Key? key, required this.headerText, required this.subText, required this.img, required this.isActive}) : super(key: key);

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
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              subText!,
              style: const TextStyle(
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
