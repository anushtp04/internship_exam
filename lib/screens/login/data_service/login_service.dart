import 'package:dio/dio.dart';

class LoginDataService {

  getData(String email,String password)async{

    Dio dio= Dio();
    const loginUrl = "https://migrainetracker.api.salonsyncs.com/api/user/login/";

    try{
      final response = await dio.post(
        loginUrl,
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "email": email,
          "password": password,
        },
      );
      if (response.statusCode == 201 ||  response.statusCode == 200) {
        final data = response.data;
        final id = data['data']['_id'];
        print('login  id is: $id');
        return id;
      } else {
        print('Error: ${response.statusCode}');
      }
    }
    catch(e){
      print("Error $e");
    }
  }


}