import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_question/main.dart';
import 'package:internship_question/screens/homepage/controller/homepage_controller.dart';
import 'package:internship_question/screens/homepage/response/widgets/add_page.dart';
import 'package:internship_question/screens/homepage/widget/home_text.dart';
import 'package:internship_question/screens/login/controller/login_controller.dart';

import 'widgets/home_gridpage.dart';

class DesktopHomePage extends StatelessWidget {
  final HomePageController homepageController;
  final LoginController loginController;
  DesktopHomePage({super.key, required this.homepageController, required this.loginController});

  final homeController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              width: width,
              height: height * 0.12,
              padding: EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(color: Colors.blue.shade200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icon.png",
                    height: height * 0.078,
                    width: width * 0.05,
                    fit: BoxFit.fill,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomeTextWidget(
                        text: "Home",
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      HomeTextWidget(
                        text: "Migraine Tracker",
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      HomeTextWidget(
                        text: "Podcast",
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      HomeTextWidget(
                        text: "Emergency Kit",
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      GestureDetector(
                        onTap: ()=>loginController.removeLoginId(),
                        child: HomeTextWidget(
                          text: "Logout",
                        ),
                      ),
                    ],
                  ),

                  Image.asset(
                    "assets/frogicon.png",
                    height: height * 0.078,
                    width: width * 0.05,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Obx(
                () =>  Align(
                  alignment: Alignment.topCenter,
                  child:indexChange.value == 0 ?  HomeGridPage():AddEmergencyPage(homeController: homeController)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

