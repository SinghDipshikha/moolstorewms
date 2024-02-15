import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalizationController extends GetxController {
  final SharedPreferences sharedPreferences;

  LocalizationController({required this.sharedPreferences}) {
    loadCurrentLanguage();
  }

  Locale _locale = Locale(AppConstants.LANGUAGE_LIST[0].languageCode);

  Locale get locale => _locale;

  void setLanguage(Locale locale) {
    Get.updateLocale(locale);
    _locale = locale;

    saveLanguage(_locale);
    update();
  }

  void loadCurrentLanguage() async {
    _locale = Locale(
      sharedPreferences.getString(AppConstants.languageCode) ??
          AppConstants.LANGUAGE_LIST[0].languageCode,
    );

    update();
  }

  void saveLanguage(Locale locale) async {
    sharedPreferences.setString(AppConstants.languageCode, locale.languageCode);
  }
}
