import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTextField extends StatelessWidget {
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final String text;
  final String? Function(String?)? validator;
  final String? errorText;
  final double? hintFontSize;
  final Function(String?)? onChanged;
  final List<TextInputFormatter>? inputFormatters;

  const LoginTextField({super.key, required this.controller, required this.text, this.keyboardType,  this.hintFontSize,this.onChanged, this.errorText, this.inputFormatters, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      validator:validator ,
      keyboardType: keyboardType,
      controller: controller,
      inputFormatters: inputFormatters,

      style: TextStyle(fontSize: hintFontSize),
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: hintFontSize),

        filled: true,
          fillColor: Colors.grey.shade200,
          errorText: errorText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.shade200)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(10)
          )

      ),
    );
  }
}
