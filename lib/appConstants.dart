import 'package:flutter/material.dart';
import 'package:moolwmsstore/Model/LanaguageModel.dart';

class AppConstants {
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
class ColorConstants {
  static const Color BACKGROUND = Color(0xFFF5F5F5);
  static const Color PRIMARY = Color(0xFF028FFF);
  static const Color PRIMARY_DARK = Color(0xFF1B54D9);
  static const Color PRIMARY_LIGHT = Color(0xFF3EA6F9);
  static const Color PRIMARY_EXTRA_LIGHT = Color(0xFFE3EBFC);
  static const Color PRIMARY_EXTRA_LIGHT2 = Color(0xFFF9FBFF);
  static const Color ACCENT = Color(0xFF00A3F0);
  static const Color ACCENT_DARK = Color(0xFF00A3F0);
  static const Color ACCENT_LIGHT = Color(0xFF95F9DA);
  static const Color GREY_LIGHT = Color(0xFFCED0D8);
  static const Color GREY_DARK = Color(0xFF484848);
  static const Color GREY_SEARCH_BORDER = Color(0xffDCDCDC);
  static const Color DRAWER_LIGHT = Color(0xFF62B8FD);
  static const Color DRAWER_DARK = Color(0xFF0468B9);
  static const Color PERSON_EXTRA_LIGHT = Color(0xFF566BCB);
  static const Color PERSON_LIGHT = Color(0xFF3D4A89);
  static const Color PERSON_DARK = Color(0xFF3D4A89);
  static const Color VEHICLE_EXTRA_LIGHT = Color(0xFF8CD0C4);
  static const Color VEHICLE_LIGHT = Color(0xFF63D2BE);
  static const Color VEHICLE_DARK = Color(0xFF18B095);
  static const Color STORAGE_DARK = Color(0xFF565C5B);
  static const Color STORAGE_LIGHT = Color(0xFF7E8282);
  static const Color MATERIAL_LIGHT = Color(0xFFFEC56A);
  static const Color MATERIAL_DARK = Color(0xFFE0A03A);
  static const Color REGISTER_LIGHT = Color(0xFFADAEB2);
  static const Color REGISTER_DARK = Color(0xFF9E9E9E);
  static const Color SUMMARY_DARK = Color(0xFFFF8651);
  static const Color SUMMARY_LIGHT = Color(0xFFFF8651);

  static const Color BUTTON_DARK = Color(0xFF1C4B9C);
  static const Color BUTTON_LIGHT = Color(0xFF3D9ADE);

  static const Color INWARD_EXTRA_LIGHT = Color(0xFF559884);
  static const Color INWARD_LIGHT = Color(0xFF75C2AB);
  static const Color INWARD_DARK = Color(0xFF75C2AB);
  static const Color OUTWARD_EXTRA_LIGHT = Color(0xFFE47171);
  static const Color OUTWARD_LIGHT = Color(0xFFFE9090);
  static const Color OUTWARD_DARK = Color(0xFFFE9090);
  static const Color RED_BUTTON_DARK = Color(0xFFF44336); //Color(0xFFFFCDD2);
  static const Color RED_BUTTON_LIGHT = Color(0xFFEF9A9A);
}

class IOSColors {
  static const Color BLUE = Color.fromARGB(255, 0, 122, 255);
  static const Color GREY = Color.fromARGB(255, 142, 142, 147);
  static const Color GREEN = Color.fromARGB(255, 52, 199, 89);
  static const Color INDIGO = Color.fromARGB(255, 88, 86, 214);
  static const Color ORANGE = Color.fromARGB(255, 255, 149, 0);
  static const Color PINK = Color.fromARGB(255, 255, 45, 85);
  static const Color PURPLE = Color.fromARGB(255, 175, 82, 222);
  static const Color RED = Color.fromARGB(255, 255, 59, 48);
  static const Color TEAL = Color.fromARGB(255, 90, 200, 250);
  static const Color YELLOW = Color.fromARGB(255, 255, 204, 0);
  static const Color DARK_BLUE = Color.fromARGB(255, 32, 39, 77);
  static const Color RED_BUTTON_DARK = Color(0xFFF44336); //Color(0xFFFFCDD2);
  static const Color RED_BUTTON_LIGHT = Color(0xFFEF9A9A);
}
