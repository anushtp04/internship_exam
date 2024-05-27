import 'package:flutter/material.dart';

class HomeTextWidget extends StatelessWidget {
  final String text;
  const HomeTextWidget({super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),);
  }
}
