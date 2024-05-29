import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:internship_question/screens/login/data_service/login_service.dart';
import 'package:internship_question/widgets/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  var isLoading = true.obs;
  var loginId = "".obs;


  loginData() async {
    var data = await LoginDataService().getData(emailController.text, passwordController.text);
    loginId.value = data;
    storeLoginId(loginId.value);
    if(loginId.value.isNotEmpty){
      navigationkey.currentContext!.go("/home");
    }
    else{
      print("login issue");
    }

  }

  storeLoginId(String loginId) async {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setString("loginId", loginId);

  }

  removeLoginId() async {
    final sharedPref = await SharedPreferences.getInstance();
    sharedPref.remove("loginId");
    loginId.value = "";
    navigationkey.currentState?.context.go("/login");
  }
}
