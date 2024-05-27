import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final void Function()? onTap;
  final Color? fontColor;
  final Color? color;
  const LoginButton({
    super.key, this.height=45, this.width=124,this.fontSize=14, this.onTap,required this.text, this.fontWeight = FontWeight.w700, this.color, this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(height: height,width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:color
        ),
        child: Center(child: Text(text,style: GoogleFonts.inter(fontSize:fontSize,fontWeight: fontWeight,color: fontColor),)),
      ),
    );
  }
}
