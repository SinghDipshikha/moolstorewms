import 'package:flutter/material.dart';
import 'package:moolwmsstore/Data/Model/LanaguageModel.dart';

class AppConstants {
  static List<String> roles = [
    // "Head of Operations",
    // "Regional Manager",
    // "Senior Manager",
    // "Plant Manager",
    // "Assistant Manager",
    // "Senior Supervisor",
    // "Supervisor",
    // "Dock Supervisor",
    // "Intern",
    "Security Guard",
    //   "Plant Helper",
    //   "Senior Plant Operator",
    //   "MultiSkilled Engineer",
    //   "Electrician",
    //   "MHE Operator",
    //   "Super Admin",
    //   "Corporate / Owner",
  ];
  static const String token = 'token';
  static const String baseUrl = 'http://13.234.185.160:3000/';

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
  static List<BoxShadow>? boxShadow(BuildContext context) {
    return MediaQuery.of(context).platformBrightness != Brightness.dark
        ? [
            const BoxShadow(
              color: Color.fromARGB(255, 229, 229, 229),
              blurRadius: 20,
              offset: Offset(1, 1),
              spreadRadius: 0,
            )
          ]
        : null;
  }

  static List<BoxShadow>? colouredboxShadow({required Color color}) {
    return [
      BoxShadow(
        color: color,
        blurRadius: 20,
        offset: const Offset(0, 5),
        spreadRadius: 0,
      )
    ];
  }
}
