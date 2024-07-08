import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Auth.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/helper/messages.dart';
import 'package:moolwmsstore/utils/appConstants.dart';

import 'helper/get_di.dart' as di;

//22AAAAA0000A1Z5
//U74999DL2019PTC357379
Future<void> main() async {
  Map<String, Map<String, String>> languages = await di.init();
  runApp(DipshikaApp(
    languages: languages,
  ));
}

class DipshikaApp extends StatefulWidget {
  final Map<String, Map<String, String>> languages;
  const DipshikaApp({
    super.key,
    required this.languages,
  });

  @override
  State<DipshikaApp> createState() => _DipshikaAppState();
}

class _DipshikaAppState extends State<DipshikaApp> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizationController>(builder: (localizeController) {
      return MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaler: const TextScaler.linear(0.9)),
        child: GetMaterialApp(
          
          //  home: ViewVisitor(visitor: null),
          home: const Auth(),
          debugShowCheckedModeBanner: false,
          locale: localizeController.locale,
          fallbackLocale: Locale(
            AppConstants.LANGUAGE_LIST[0].languageCode,
          ),
          translations: Messages(languages: widget.languages),
          defaultTransition: Transition.topLevel,
          transitionDuration: const Duration(milliseconds: 500),
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch},
          ),
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            hintColor: const Color.fromARGB(255, 202, 204, 206),
            colorScheme: const ColorScheme(
              brightness: Brightness.dark,
              primary: Color(0xFF5A57FF),
              onPrimary: Colors.black,
              primaryContainer: Color(0xff00882F),
              onPrimaryContainer: Colors.white,
              secondary: Color(0xffE4723C),
              onSecondary: Colors.white,
              secondaryContainer: Color(0xffFFDD9A),
              onSecondaryContainer: Color(0xff412408),
              error: Colors.red,
              onError: Colors.white,
              errorContainer: Colors.red,
              onErrorContainer: Color(0xff4D0000),
              surface: Color(0xff1D1D1D),
              onSurface: Colors.black,
              surfaceContainerHighest: Color(0xff49454F),
              onSurfaceVariant: Colors.white,
              outline: Color(0xff857E92),
              outlineVariant: Color(0xff68606F),
              shadow: Color(0xff000000),
              scrim: Color(0xff000000),
              inverseSurface: Color(0xffF4EFF4),
              onInverseSurface: Color(0xff333039),
              inversePrimary: Color(0xff69F0AE),
              surfaceTint: Colors.green,
            ),
            useMaterial3: true,
            actionIconTheme: ActionIconThemeData(
              backButtonIconBuilder: (context) => Image.asset(
                "assets/icons/appbarabckicon.png",
                height: 30,
              ),
            ),
            drawerTheme: const DrawerThemeData(backgroundColor: Colors.black),
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.black,
                foregroundColor: Colors.black,
                iconTheme: IconThemeData()
                // color: Colors.white,
                ),
          ),
        ),
      );
    });
  }
}


