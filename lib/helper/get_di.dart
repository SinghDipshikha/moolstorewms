import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/language_controller.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/Controller/userController.dart';
import 'package:moolwmsstore/Model/LanaguageModel.dart';
import 'package:moolwmsstore/appConstants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Map<String, Map<String, String>>> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.put(UserController(), permanent: true);
  Get.lazyPut(() => sharedPreferences);
  // Get.lazyPut(() => ApiClient(
  //     appBaseUrl: AppConstants.baseUrl, sharedPreferences: Get.find()));
  Get.lazyPut(
    () => LanguageController(sharedPreferences: Get.find()),
  );
  Get.lazyPut(
    () => LocalizationController(sharedPreferences: Get.find()),
  );
  // Repository
  // Get.lazyPut(
  //     () => SplashRepo(sharedPreferences: Get.find(), apiClient: Get.find()));
  Get.lazyPut(() => LanguageRepo());

  // Retrieving localized data
  Map<String, Map<String, String>> languages = {};
  for (LanguageModel languageModel in AppConstants.LANGUAGE_LIST) {
    String jsonStringValues = await rootBundle
        .loadString('assets/lang/${languageModel.languageCode}.json');
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
