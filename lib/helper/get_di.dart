import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:moolwmsstore/Auth/Controllers/authController.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/Model/LanaguageModel.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Controller/language_controller.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Chamber/dockProduct.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:shared_preferences/shared_preferences.dart';

Future<Map<String, Map<String, String>>> init() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Hive.initFlutter();
  } else {
    final dbDir = await path_provider.getApplicationDocumentsDirectory();
    await Hive.initFlutter(dbDir.path);
  }

  final sharedPreferences = await SharedPreferences.getInstance();

  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(WarehousesAcessAdapter());
  Hive.registerAdapter(DockProductAdapter());

  await Hive.openBox('authbox');

  Get.put(sharedPreferences);
  Get.put(
      ApiClient(
          appBaseUrl: AppConstants.baseUrl, sharedPreferences: Get.find()),
      permanent: true);

  Get.lazyPut(
    () => LanguageController(sharedPreferences: Get.find()),
  );
  Get.lazyPut(
    () => LocalizationController(sharedPreferences: Get.find()),
  );
  Get.put(
    AuthController(sharedPreferences: Get.find()),
  );
  Get.lazyPut(() => LanguageRepo());
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
