import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_question/screens/login/response/desktop_login.dart';

import '../../widgets/responsive_layout.dart';
import 'controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController loginController;
  final String tag = DateTime.now().toString();

  @override
  void initState() {
    loginController = Get.put(LoginController(), tag: tag);
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<LoginController>(tag: tag);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: DesktopLoginPage(loginController: loginController),
      tabBody: DesktopLoginPage(loginController: loginController),
      desktopBody: DesktopLoginPage(loginController: loginController),
    );
  }
}
