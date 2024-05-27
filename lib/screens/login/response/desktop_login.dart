import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';
import 'package:internship_question/screens/homepage/response/homepage.dart';

import '../controller/login_controller.dart';
import '../widget/login_button.dart';
import '../widget/login_text.dart';
import '../widget/login_textfield.dart';


class DesktopLoginPage extends StatelessWidget {
  final LoginController loginController;

  const DesktopLoginPage({super.key, required this.loginController});


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: height,
        width: width,
        child: Row(
          children: [
            Container(
              height: height,
              width: width * 0.56,
              decoration: BoxDecoration(
                color: Colors.blue.shade200
              ),
              child: Center(
                child: Container(
                  width: width *0.26,
                  height: height *0.59,
                  decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage("assets/login.png"), fit: BoxFit.fill)),

                ),
              ),
            ),

            Expanded(
              child: Container(
                height: height ,
                child: Padding(
                  padding:  EdgeInsets.only(top: height*0.13,bottom: height*0.03),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: width*0.09,right: width*0.07),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MyLoginText(
                              text: "Welcome Back! Glad to see you again",
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: height * 0.042,
                            ),
                            LoginTextField(
                              validator: (p0) => null,
                              controller: loginController.emailController,
                              text: "Email Address",
                              hintFontSize: 14,
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            LoginTextField(
                              validator: (p0) => null,
                              controller: loginController.passwordController,
                              text: "Password",
                              hintFontSize: 14,
                            ),
                            SizedBox(
                              height: height * 0.012,
                            ),
                            Align(
                                alignment: Alignment(1, 0),
                                child: TextButton(
                                    onPressed: () => null,
                                    child: MyLoginText(
                                      text: "Forgot Password",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ))),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            LoginButton(
                              text: "LOGIN",
                              fontSize: 20,
                              width: double.infinity,
                              color: Colors.blue.shade200,
                              onTap: ()async {
                                await loginController.loginData();

                              },
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyLoginText(text: "Dont't have an account?", fontSize: 18, fontWeight: FontWeight.w400),
                          TextButton(onPressed: () => null, child: Text("Register Now",style: TextStyle(color: Colors.blue.shade200,fontSize: 18),))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
