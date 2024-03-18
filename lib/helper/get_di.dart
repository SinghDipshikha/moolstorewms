import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/authController.dart';
import 'package:moolwmsstore/Controller/language_controller.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/Controller/userController.dart';
import 'package:moolwmsstore/Controller/warehouseController.dart';
import 'package:moolwmsstore/Data/Model/LanaguageModel.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:moolwmsstore/Data/repository/authRepo.dart';
import 'package:moolwmsstore/Data/repository/splashRepo.dart';
import 'package:moolwmsstore/Data/repository/warehouseRepo.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_it/get_it.dart';

Future<Map<String, Map<String, String>>> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.put(UserController(), permanent: true);
  Get.put(sharedPreferences);
  Get.put(
      ApiClient(
          appBaseUrl: AppConstants.baseUrl, sharedPreferences: Get.find()),
      permanent: true);
  // Repository
  Get.lazyPut(
      () => SplashRepo(sharedPreferences: Get.find(), apiClient: Get.find()));
  Get.lazyPut(
      () => AuthRepo(sharedPreferences: Get.find(), apiClient: Get.find()));
  Get.lazyPut(() =>
      WarehouseRepo(sharedPreferences: Get.find(), apiClient: Get.find()));

  Get.lazyPut(
    () => LanguageController(sharedPreferences: Get.find()),
  );
  Get.lazyPut(
    () => LocalizationController(sharedPreferences: Get.find()),
  );
  Get.put(AuthController(authRepo: Get.find(), apiClient: Get.find()),
      permanent: true);
  Get.put(WarehouseController(warehouseRepo: Get.find(), apiClient: Get.find()),
      permanent: true);
  // Get.lazyPut(
  //     () => SplashController(splashRepo: Get.find(), apiClient: Get.find()));

  Get.lazyPut(() => LanguageRepo());

  // Retrieving localized data
  Map<String, Map<String, String>> languages = {};
  for (LanguageModel languageModel in AppConstants.LANGUAGE_LIST) {
    String jsonStringValues = await rootBundle
        .loadString('assets/languages/${languageModel.languageCode}.json');
    Map<String, dynamic> mappedJson = jsonDecode(jsonStringValues);
    Map<String, String> json = {};
    mappedJson.forEach((key, value) {
      json[key] = value.toString();
    });
    languages[languageModel.languageCode] = json;
  }
  return languages;
}

class LanguageRepo {
  List<LanguageModel> getAllLanguages({required context}) {
    return AppConstants.LANGUAGE_LIST;
  }
}
