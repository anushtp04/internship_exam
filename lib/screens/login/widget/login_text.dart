import 'package:flutter/material.dart';

class MyLoginText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  const MyLoginText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.color, this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: 1.1,
        color: color,
      ),
    );
  }
}
