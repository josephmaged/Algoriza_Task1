import 'package:flutter/material.dart';

class ReusableOutlineButton extends StatelessWidget {

  VoidCallback? onPressed;
  Color? color;
  Widget? row;

  ReusableOutlineButton({Key? key, required this.onPressed, required this.color, required this.row}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: OutlinedButton(
        onPressed: onPressed,
        child: row!,
        style: ButtonStyle(
            side: MaterialStateProperty.all(
                BorderSide(
                    color: color!,
                    width: 2,
                    style: BorderStyle.solid
                )
            )
        ),
      ),
    );
  }
}
