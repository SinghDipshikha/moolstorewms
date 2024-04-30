import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Controllers/authController.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Auth/Repository/authRepo.dart';
import 'package:moolwmsstore/Common%20Data/Model/LanaguageModel.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Common%20Data/repository/commonRepo.dart';
import 'package:moolwmsstore/Common%20Data/repository/splashRepo.dart';
import 'package:moolwmsstore/Controller/language_controller.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/repository/hrrepo.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Map<String, Map<String, String>>> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.put(sharedPreferences);
  Get.put(
      ApiClient(
          appBaseUrl: AppConstants.baseUrl, sharedPreferences: Get.find()),
      permanent: true);
  Get.put(CommonRepo(sharedPreferences: Get.find(), apiClient: Get.find()));
  // Get.put(UserController());
  // Repository
  Get.lazyPut(
      () => SplashRepo(sharedPreferences: Get.find(), apiClient: Get.find()));
  Get.lazyPut(
      () => AuthRepo(sharedPreferences: Get.find(), apiClient: Get.find()));
  // Get.lazyPut(() =>
  //     WarehouseRepo(sharedPreferences: Get.find(), apiClient: Get.find()));
  // Get.lazyPut(
  //     () => SalesRepo(sharedPreferences: Get.find(), apiClient: Get.find()));
  Get.lazyPut(
      () => HrRepo(sharedPreferences: Get.find(), apiClient: Get.find()));

  // Get.lazyPut(() =>
  //     SecurityGuardRepo(sharedPreferences: Get.find(), apiClient: Get.find()));

  Get.lazyPut(
    () => LanguageController(sharedPreferences: Get.find()),
  );
  Get.lazyPut(
    () => LocalizationController(sharedPreferences: Get.find()),
  );
  Get.put(
    AuthController(authRepo: Get.find(), apiClient: Get.find()),
  );

  // Get.put(WarehouseController(warehouseRepo: Get.find(), apiClient: Get.find()),
  //     permanent: true);
  // Get.put(
  //     SalesController(salesRepo: Get.find<SalesRepo>(), apiClient: Get.find()),
  //     permanent: true);
  Get.put(
      HRController(
          user: const User(),
          hrRepo: Get.find<HrRepo>(),
          apiClient: Get.find()),
      permanent: true);
  // Get.put(
  //     SecurityGuardController(
  //         secGaurdRepo: Get.find<SecurityGuardRepo>(), apiClient: Get.find()),
  //     permanent: true);
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
