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
  var id = "".obs;


  loginData() async {
    var data = await LoginDataService().getData(emailController.text, passwordController.text);
    id.value = data;
    storeData(id.value);
    if(id.value.isNotEmpty){
      navigationkey.currentContext!.go("/home");
    }
    else{
      print("login issue");
    }

  }

  storeData(String tockenData) async {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setString("loginId", tockenData);

  }

  removeTocken() async {
    final sharedPref = await SharedPreferences.getInstance();
    sharedPref.remove("loginId");
    id.value = "";
  }
}
