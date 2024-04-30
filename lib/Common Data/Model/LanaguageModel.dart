import 'package:flutter/material.dart';

class LanguageModel {
  String languageCode;
  String languageName;

  Locale get language {
    return Locale(languageCode);
  }

  LanguageModel({required this.languageCode, required this.languageName});
}
