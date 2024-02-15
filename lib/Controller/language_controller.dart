import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Data/Model/LanaguageModel.dart';

import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageController extends GetxController {
  final SharedPreferences sharedPreferences;
  LanguageController({required this.sharedPreferences});

  int _selectIndex = 0;
  int get selectIndex => _selectIndex;

  void setSelectIndex(int index) {
    _selectIndex = index;
    update();
  }

  List<LanguageModel> _languages = [];
  List<LanguageModel> get languages => _languages;

  void searchLanguage(String query, BuildContext context) {
    if (query.isEmpty) {
      _languages.clear();
      _languages = AppConstants.LANGUAGE_LIST;
      update();
    } else {
      _selectIndex = -1;
      _languages = [];
      for (var product in AppConstants.LANGUAGE_LIST) {
        if (product.languageName.toLowerCase().contains(query.toLowerCase())) {
          _languages.add(product);
        }
      }
      update();
    }
  }

  void initializeAllLanguages(BuildContext context) {
    if (_languages.isEmpty) {
      _languages.clear();
      _languages = AppConstants.LANGUAGE_LIST;
    }
  }
}
