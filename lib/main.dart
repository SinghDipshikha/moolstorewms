import 'dart:ui';

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
                textTheme: GoogleFonts.outfitTextTheme(textTheme)
                    .copyWith(

                        // headlineSmall: GoogleFonts.outfit(
                        //     textStyle: textTheme.bodyMedium, color: Colors.white),
                        // headlineMedium: GoogleFonts.outfit(
                        //     textStyle: textTheme.bodyMedium, color: Colors.white),
                        // bodyMedium: GoogleFonts.outfit(
                        //     textStyle: textTheme.bodyMedium, color: Colors.white),
                        )
                    .apply(
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
                cardColor: const Color(0xFF334257).withOpacity(0.27),
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
                textTheme: GoogleFonts.outfitTextTheme(textTheme).copyWith(
                  bodyMedium:
                      GoogleFonts.outfit(textStyle: textTheme.bodyMedium),
                ),
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
