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
