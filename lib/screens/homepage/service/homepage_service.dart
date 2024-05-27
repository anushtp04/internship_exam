import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePageDataService {


  getData()async{

    final sharedPref = await SharedPreferences.getInstance();
    final loginId = sharedPref.getString("loginId");

    Dio dio= Dio();
    const loginUrl = "https://migrainetracker.api.salonsyncs.com/api/emergency-kit/list/";

    try{
      final response = await dio.post(
        loginUrl,
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "sortType":0,
          "sortOrder":-1,
          "statusArray":[
            1
          ],
          "screenType":[
            0
          ],
          "emergencyKitIds":[

          ],
          "userIds":[
            loginId
          ],
          "limit":-1,
          "skip":-1,
          "searchingText":""
        },
      );
      if (response.statusCode == 201 ||  response.statusCode == 200) {
        final data = response.data["data"]["list"];
        print('login  id is: $data');
        return data;
      } else {
        print('Error: ${response.statusCode}');
      }
    }
    catch(e){
      print("Error $e");
    }
  }

  createData(String details, String contact, String name)async{

    final sharedPref = await SharedPreferences.getInstance();
    final userId = sharedPref.getString("loginId");

    Dio dio= Dio();
    const loginUrl = "https://migrainetracker.api.salonsyncs.com/api/emergency-kit/";

    try{
      final response = await dio.post(
        loginUrl,
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "userId": userId,
          "details": details,
          "localType": 0,
          "contact": contact,
          "name": name
        },
      );
      if (response.statusCode == 201 ||  response.statusCode == 200) {
        final data = response.data["message"];
        print('login  id is: $data');
        return data;
      } else {
        print('Error: ${response.statusCode}');
      }
    }
    catch(e){
      print("Error $e");
    }
  }



}