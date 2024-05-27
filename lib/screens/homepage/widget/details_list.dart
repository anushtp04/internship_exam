import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsList extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;
  final String userId;
  final String district;
  final String country;
  final int phone;
  final int pin;
  DetailsList({super.key, required this.firstName, required this.lastName, required this.email, required this.userId, required this.district, required this.country, required this.phone, required this.pin});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$firstName $lastName",style: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.w400,),),
          Text(userId,style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w400,),),
          Text(district,style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w400,),),
          Text(phone.toString(),style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w400,),),
          Text(pin.toString(),style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w400,),),
          Text(country,style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w400,),),

        ],
      ),
    );
  }
}
