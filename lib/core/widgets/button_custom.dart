import 'package:flutter/material.dart';

class ButtonCoustom extends StatelessWidget {
  const ButtonCoustom(
      {super.key,
      required this.text,
      this.onPressed,
      required this.textColor,
      required this.fontSize,
      required this.backColor});

  final void Function()? onPressed;
  final String text;
  final Color textColor;
  final double fontSize;
  final Color backColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
            elevation: 5,
            backgroundColor: backColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: fontSize),
        ),
      ),
    );
  }
}
