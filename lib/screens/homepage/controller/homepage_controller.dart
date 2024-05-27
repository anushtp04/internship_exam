import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_question/screens/homepage/service/homepage_service.dart';

import '../../../model/list_model.dart';

class HomePageController extends GetxController {
  var dataList = <ListModel>[].obs;
  var isLoading = true.obs;
  final nameController = TextEditingController();
  final roleController = TextEditingController();
  final numberController = TextEditingController();
  final otherEmergencyController = TextEditingController();

  clearTextField(){
    nameController.clear();
    roleController.clear();
    numberController.clear();
    otherEmergencyController.clear();
  }

  getListData() async {
    try {
      isLoading.value = true;

      final response = await HomePageDataService().getData();
      final res = response as List;
      var data = res.map((e) => ListModel.fromJson(e)).toList();
      dataList.value = data;

      isLoading.value = false;
    } catch (e) {
      print("Error Controller $e");
    }
  }

  createData() async {
    final name = nameController.text;
    final details = otherEmergencyController.text;
    final contact = numberController.text;
    try {
      await HomePageDataService().createData(details, contact, name);
      clearTextField();
      await getListData();
    } catch (e) {
      print(e.toString());
    }
  }


  @override
  void onInit() {
    super.onInit();
    getListData();
  }
}
