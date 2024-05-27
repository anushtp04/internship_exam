import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:internship_question/main.dart';
import 'package:internship_question/screens/homepage/controller/homepage_controller.dart';
import 'package:internship_question/screens/login/widget/login_textfield.dart';

import '../../login/widget/login_button.dart';
import '../../login/widget/login_text.dart';

class AddEmergencyPage extends StatelessWidget {
  final HomePageController homeController;
  const AddEmergencyPage({super.key, required this.homeController});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;
    final width = MediaQuery
        .of(context)
        .size
        .width;
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: width * 0.43,
      height: height * 0.69,
      color: Colors.blue.shade50,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: height * 0.179,
            width: width * 0.42,
            decoration: BoxDecoration(
              color: Color(0xFF277F81),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyLoginText(
                  text: "Emergency Kit",
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Container(
                  height: height * 0.069,
                  width: width * 0.34,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyLoginText(
                        text:
                        "We know migraines at school can be a real bummer, but you're a superhero for handling them like a champ!",
                        fontSize: 14,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      MyLoginText(
                        text:
                        "Your emergency kit is here to save the day and make you feel better.",
                        fontSize: 14,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            height: height * 0.4,
            margin: EdgeInsets.only(left: 30,right: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)
            ),
            padding: EdgeInsets.only(left: width*0.06,right: width*0.06),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyLoginText(text: "Add your emergency contacts to have them at your fingertips!",
                  textAlign: TextAlign.center,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,),
                SizedBox(height: 30,),

                LoginTextField(controller: homeController.nameController, text: "Name"),
                SizedBox(height: 15,),
                LoginTextField(controller: homeController.roleController, text: "Role"),
                SizedBox(height: 15,),
                LoginTextField(controller: homeController.numberController, text: "Contact Number with country code"),
                SizedBox(height: 15,),
                LoginTextField(controller: homeController.otherEmergencyController, text: "Other Emergency details"),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LoginButton(
                text: "CANCEL",
                width: width * 0.1,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontColor: Colors.black,
                onTap: () {
                  context.pop();
                  homeController.clearTextField();
                },
              ),
              SizedBox(width: 10,),
              LoginButton(
                text: "SUBMIT",
                width: width * 0.1,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.blue.shade200,
                fontColor: Colors.white,
                onTap: () {
                  homeController.createData();
                  indexChange.value = 0;

                  context.pop();
                },
              ),
            ],
          ),
        ],
      ),
    );

  }
}
