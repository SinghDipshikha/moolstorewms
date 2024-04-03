import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/View/Roles/Plant%20Manager/Assets/assetEntry.dart';
import 'package:moolwmsstore/View/Roles/Hr/addEmployeeCareerDetails.dart';
import 'package:moolwmsstore/helper/messages.dart';
import 'package:moolwmsstore/routes/approutes.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:moolwmsstore/utils/globals.dart';

import 'helper/get_di.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  getIt.registerSingleton<AppRouter>(AppRouter());
  Map<String, Map<String, String>> languages = await di.init();

  runApp(DipshikaApp(
    languages: languages,
  ));
}

class MyApp extends StatefulWidget {
  final Map<String, Map<String, String>> languages;
  const MyApp({
    super.key,
    required this.languages,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GetBuilder<LocalizationController>(
        initState: (state) {},
        builder: (localizeController) {
          return GetMaterialApp.router(
            scaffoldMessengerKey: snackbarKey,
            routerDelegate: _router.delegate(),
            routeInformationProvider: _router.routeInfoProvider(),
            routeInformationParser: _router.defaultRouteParser(),
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
              colorScheme: const ColorScheme.dark(
                //  background: Colors.red,
                primary: Colors.white,
              ),
              // primaryColor: Colors.black,
              // switchTheme: ,
              useMaterial3: true,
              actionIconTheme: ActionIconThemeData(
                backButtonIconBuilder: (context) => const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ),
              ),
              drawerTheme: const DrawerThemeData(backgroundColor: Colors.black),
              appBarTheme: const AppBarTheme(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.black,
                  iconTheme: IconThemeData()
                  // color: Colors.white,
                  ),
              //  useMaterial3: true,
              scaffoldBackgroundColor: const Color(0xFFF7F7F7),
              textTheme: GoogleFonts.nunitoTextTheme(
                textTheme,
              ).copyWith(),
            ),
          );
        });
  }
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
  final _router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GetBuilder<LocalizationController>(
        initState: (state) {},
        builder: (localizeController) {
          return GetMaterialApp(
            scaffoldMessengerKey: snackbarKey,
            home: const AddEmployeeCareerDetails(),
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
              colorScheme: const ColorScheme.dark(
                //  background: Colors.red,
                primary: Colors.white,
              ),
              // primaryColor: Colors.black,
              // switchTheme: ,
              useMaterial3: true,
              actionIconTheme: ActionIconThemeData(
                backButtonIconBuilder: (context) => const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ),
              ),
              drawerTheme: const DrawerThemeData(backgroundColor: Colors.black),
              appBarTheme: const AppBarTheme(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.black,
                  iconTheme: IconThemeData()
                  // color: Colors.white,
                  ),
              //  useMaterial3: true,
              scaffoldBackgroundColor: const Color(0xFFF7F7F7),
              textTheme: GoogleFonts.nunitoTextTheme(
                textTheme,
              ).copyWith(),
            ),
          );
        });
  }
}
