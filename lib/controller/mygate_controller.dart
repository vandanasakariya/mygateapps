import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygateapp/api/city_modal.dart';
import 'package:mygateapp/api/service.dart';

class MyGateController extends GetxController {
  @override
  void onInit() {
    print("response----- 0:- 00000 ");

    getCityList();
    super.onInit();
  }

  Rx<CityModal> cityList = CityModal().obs;
  List<String> searchCityList = <String>[];
  List<String> cityModalList = <String>[];
  final cityNameController = TextEditingController();
  final second = TextEditingController();
  RxInt isCheckApi = 0.obs;

  Future<void> getCityList() async {
    final result = await CityService.getdata();
    if (result != null) {
      cityList.value = result;
      // cityModalList.forEach((element) {
      //   cityModalList.a(element.city);
      // });
      for (int i = 0; i < (cityList.value.city?.length ?? 0); i++) {
        String item = cityList.value.city?[i] ?? "";
        cityModalList.add(item);
      }
      // cityModalList.add(cityList.value);
      print("cccc---${cityModalList.toString()}");
    }
  }
}
