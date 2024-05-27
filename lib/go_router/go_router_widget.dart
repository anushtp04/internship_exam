import 'package:go_router/go_router.dart';
import 'package:internship_question/screens/homepage/response/homepage.dart';
import 'package:internship_question/screens/login/response/desktop_login.dart';
import 'package:internship_question/screens/login/view_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/constants.dart';

final router = GoRouter(
    navigatorKey: navigationkey,
    initialLocation: "/login",
    redirect: (context, state) async {
      if (await isTockenStored() == false) {
        return "/login";
      } else {
        if (state.fullPath == "/login") {
          return "/home";
        }

        return null;
      }
    },
    routes: [

    

      GoRoute(
        path: "/login",
        name: "login",
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: "/home",
        name: "home",
        builder: (context, state) => HomePage(),
      ),
    ]);

isTockenStored() async {
  final sharedPref = await SharedPreferences.getInstance();
  final loginId = sharedPref.getString("loginId");
  print("id is $loginId");
  return loginId != null;
}
