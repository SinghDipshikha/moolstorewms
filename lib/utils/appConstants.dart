import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:moolwmsstore/Common%20Data/Model/LanaguageModel.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

// DateFormat.yMd().add_jm()        -> 7/10/1996 5:08 PM
class AppConstants {
  static DateFormat dateformatter = DateFormat('MMM d, yyyy');
  static DateFormat timeformatter = DateFormat('MMM d, yyyy  h:mm a');
  static DateFormat datetimeformatter = DateFormat('h:mm a');
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

  static Future<DateTime?> pickDate({required BuildContext context}) async {
    return showOmniDateTimePicker(
      type: OmniDateTimePickerType.date,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primaryColor,
      ),
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1600).subtract(const Duration(days: 3652)),
      lastDate: DateTime.now().add(
        const Duration(days: 3652),
      ),
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      constraints: const BoxConstraints(
        maxWidth: 350,
        maxHeight: 650,
      ),
      transitionBuilder: (context, anim1, anim2, child) {
        return FadeTransition(
          opacity: anim1.drive(
            Tween(
              begin: 0,
              end: 1,
            ),
          ),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 200),
      barrierDismissible: true,
      selectableDayPredicate: (dateTime) {
        // Disable 25th Feb 2023
        if (dateTime == DateTime(2023, 2, 25)) {
          return false;
        } else {
          return true;
        }
      },
    );
  }

  static Future<DateTime?> pickDateTime({required BuildContext context}) async {
    return showOmniDateTimePicker(
      type: OmniDateTimePickerType.date,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primaryColor,
      ),
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1600).subtract(const Duration(days: 3652)),
      lastDate: DateTime.now().add(
        const Duration(days: 3652),
      ),
      is24HourMode: false,
      isShowSeconds: false,
      minutesInterval: 1,
      secondsInterval: 1,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      constraints: const BoxConstraints(
        maxWidth: 350,
        maxHeight: 650,
      ),
      transitionBuilder: (context, anim1, anim2, child) {
        return FadeTransition(
          opacity: anim1.drive(
            Tween(
              begin: 0,
              end: 1,
            ),
          ),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 200),
      barrierDismissible: true,
      selectableDayPredicate: (dateTime) {
        // Disable 25th Feb 2023
        if (dateTime == DateTime(2023, 2, 25)) {
          return false;
        } else {
          return true;
        }
      },
    );
  }
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
