import 'dart:ui';

import 'package:fl_country_code_picker/fl_country_code_picker.dart' as flc;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/appConstants.dart';
import 'package:moolwmsstore/helper/messages.dart';
import 'package:moolwmsstore/helper/route_helper.dart';

import 'helper/get_di.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Map<String, Map<String, String>> languages = await di.init();
  runApp(MyApp(
    languages: languages,
  ));
}

init() async {}

class MyApp extends StatelessWidget {
  final Map<String, Map<String, String>> languages;
  const MyApp({
    super.key,
    required this.languages,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return GetBuilder<LocalizationController>(builder: (localizeController) {
      return GetMaterialApp(
        supportedLocales:
            flc.CountryLocalizations.supportedLocales.map(Locale.new),
        localizationsDelegates: const [
          flc.CountryLocalizations.delegate,
          // GlobalWidgetsLocalizations.delegate,
          // GlobalMaterialLocalizations.delegate,
          // GlobalCupertinoLocalizations.delegate,
        ],
        locale: localizeController.locale,
        fallbackLocale: Locale(
          AppConstants.LANGUAGE_LIST[0].languageCode,
        ),
        initialRoute: RouteHelper.initial,
        getPages: RouteHelper.routes,
        translations: Messages(languages: languages),
        defaultTransition: Transition.topLevel,
        transitionDuration: const Duration(milliseconds: 500),
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch},
        ),
        theme: isDarkMode
            ? ThemeData(
                // buttonTheme: ButtonThemeData(),
                textTheme: GoogleFonts.outfitTextTheme(textTheme)
                    .copyWith(
                      // bodyLarge: GoogleFonts.outfit(
                      //     textStyle: textTheme.bodyMedium, color: Colors.black),

                      labelMedium: GoogleFonts.outfit(
                          textStyle: textTheme.labelMedium,
                          fontWeight: FontWeight.w700),
                      displayLarge: GoogleFonts.outfit(
                          textStyle: textTheme.displayLarge,
                          fontWeight: FontWeight.w100),
                      displayMedium: GoogleFonts.outfit(
                          textStyle: textTheme.displayMedium,
                          fontWeight: FontWeight.w400),
                      displaySmall: GoogleFonts.outfit(
                          textStyle: textTheme.displaySmall,
                          fontWeight: FontWeight.w400),
                      headlineMedium: GoogleFonts.outfit(
                          textStyle: textTheme.headlineMedium,
                          fontWeight: FontWeight.w400),
                      headlineSmall: GoogleFonts.outfit(
                          textStyle: textTheme.headlineSmall,
                          fontWeight: FontWeight.w800),
                      titleLarge: GoogleFonts.outfit(
                          textStyle: textTheme.titleLarge,
                          fontWeight: FontWeight.w500),
                      titleMedium: GoogleFonts.outfit(
                          textStyle: textTheme.titleMedium,
                          fontWeight: FontWeight.w400),
                      bodyLarge: GoogleFonts.outfit(
                          textStyle: textTheme.bodyLarge,
                          fontWeight: FontWeight.w500),
                      bodyMedium: GoogleFonts.outfit(
                          textStyle: textTheme.bodyMedium,
                          fontWeight: FontWeight.w700),
                      bodySmall: GoogleFonts.outfit(
                          textStyle: textTheme.bodySmall,
                          fontWeight: FontWeight.w500),
                      labelLarge: GoogleFonts.outfit(
                          textStyle: textTheme.labelLarge,
                          fontWeight: FontWeight.w700),
                      titleSmall: GoogleFonts.outfit(
                          textStyle: textTheme.titleSmall,
                          fontWeight: FontWeight.w500),
                      labelSmall: GoogleFonts.outfit(
                          textStyle: textTheme.labelSmall,
                          fontWeight: FontWeight.w400),

                      // headlineMedium: GoogleFonts.outfit(
                      //     textStyle: textTheme.bodyMedium, color: Colors.white),
                      // bodyMedium: GoogleFonts.outfit(
                      //     textStyle: textTheme.bodyMedium, color: Colors.white),
                    )
                    .apply(
                      //  displayColor: Colors.white,
                      bodyColor: Colors.white,
                    ),
                // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
                primaryColor: const Color(0xFFBBFF1A),
                secondaryHeaderColor: const Color(0xFFbfdeff),
                disabledColor: const Color(0xffa2a7ad),
                brightness: Brightness.dark,
                hintColor: const Color(0xFFbebebe),
                shadowColor: Colors.black.withOpacity(0.4),
                cardColor: Colors.black,
                textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                        foregroundColor: const Color(0xFFcda335))),
                appBarTheme:
                    const AppBarTheme(backgroundColor: Color(0x4D334257)),
                colorScheme: const ColorScheme.dark(
                        primary: Color(0xFFcda335),
                        secondary: Color(0xFFcda335))
                    .copyWith(background: const Color(0xFF212326))
                    .copyWith(error: const Color(0xFFdd3135)))
            : ThemeData(
                textTheme: GoogleFonts.outfitTextTheme(textTheme)
                    .copyWith(
                      labelMedium: GoogleFonts.outfit(
                          textStyle: textTheme.labelMedium,
                          fontWeight: FontWeight.w700),
                      displayLarge: GoogleFonts.outfit(
                          textStyle: textTheme.displayLarge,
                          fontWeight: FontWeight.w100),
                      displayMedium: GoogleFonts.outfit(
                          textStyle: textTheme.displayMedium,
                          fontWeight: FontWeight.w400),
                      displaySmall: GoogleFonts.outfit(
                          textStyle: textTheme.displaySmall,
                          fontWeight: FontWeight.w400),
                      headlineMedium: GoogleFonts.outfit(
                          textStyle: textTheme.headlineMedium,
                          fontWeight: FontWeight.w400),
                      headlineSmall: GoogleFonts.outfit(
                          textStyle: textTheme.headlineSmall,
                          fontWeight: FontWeight.w800),
                      titleLarge: GoogleFonts.outfit(
                          textStyle: textTheme.titleLarge,
                          fontWeight: FontWeight.w500),
                      titleMedium: GoogleFonts.outfit(
                          textStyle: textTheme.titleMedium,
                          fontWeight: FontWeight.w400),
                      bodyLarge: GoogleFonts.outfit(
                          textStyle: textTheme.bodyLarge,
                          fontWeight: FontWeight.w500),
                      bodyMedium: GoogleFonts.outfit(
                          textStyle: textTheme.bodyMedium,
                          fontWeight: FontWeight.w700),
                      bodySmall: GoogleFonts.outfit(
                          textStyle: textTheme.bodySmall,
                          fontWeight: FontWeight.w500),
                      labelLarge: GoogleFonts.outfit(
                          textStyle: textTheme.labelLarge,
                          fontWeight: FontWeight.w700),
                      titleSmall: GoogleFonts.outfit(
                          textStyle: textTheme.titleSmall,
                          fontWeight: FontWeight.w500),
                      labelSmall: GoogleFonts.outfit(
                          textStyle: textTheme.labelSmall,
                          fontWeight: FontWeight.w400),
                    )
                    .apply(bodyColor: Colors.black),
                // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                primaryColor: const Color(0xFF028FFF),
                secondaryHeaderColor: const Color(0xFF4794FF),
                disabledColor: const Color(0xFFBABFC4),
                brightness: Brightness.light,
                shadowColor: Colors.grey[300],
                hintColor: const Color(0xFF9F9F9F),
                cardColor: Colors.white,
                textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                        foregroundColor: const Color(0xFFdcb247))),
                appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
                colorScheme: const ColorScheme.light(
                        primary: Color(0xFFdcb247),
                        secondary: Color(0xFFdcb247))
                    .copyWith(background: const Color(0xFFFCFCFC))
                    .copyWith(error: const Color(0xFFE84D4F))),
      );
    });
  }
}
