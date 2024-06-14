import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:moolwmsstore/Common%20Data/Model/LanaguageModel.dart';

// DateFormat.yMd().add_jm()        -> 7/10/1996 5:08 PM
class AppConstants {
  static DateFormat dateformatter = DateFormat('MMM d, yyyy');
  static DateFormat timeformatter = DateFormat('h:mm a');
  static DateFormat dayMonrhormatter = DateFormat('d MMM');
  static DateFormat yearMonthDayformatter = DateFormat('yyyy-MM-dd');

  static const String token = 'token';
  static const String orgCode = 'org-code';
  static const String baseUrl = 'https://api.moolwms.com/';

  static const String countryCode = 'country_code';
  static const String languageCode = 'language_code';
  static final List<LanguageModel> LANGUAGE_LIST = [
    LanguageModel(languageCode: 'en', languageName: 'English'),
    LanguageModel(languageCode: 'hi', languageName: 'हिंदी'),
    LanguageModel(languageCode: 'ta', languageName: 'தமிழ்'),
    LanguageModel(languageCode: 'pa', languageName: 'ਪੰਜਾਬੀ'),
    LanguageModel(languageCode: 'mr', languageName: 'मराठी'),
    LanguageModel(languageCode: 'kn', languageName: 'ಕನ್ನಡ'),
    LanguageModel(languageCode: 'te', languageName: 'తెలుగు'),
  ];
}


