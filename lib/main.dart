import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/helper/messages.dart';
import 'package:moolwmsstore/routes/approutes.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:moolwmsstore/utils/globals.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'helper/get_di.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  getIt.registerSingleton<AppRouter>(AppRouter());
  Map<String, Map<String, String>> languages = await di.init();

  runApp(MyApp(
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

    return GetBuilder<LocalizationController>(initState: (state) {
      //  getIt.registerSingleton<TextStyles>(TextStyles);
    }, builder: (localizeController) {
      return ResponsiveSizer(builder: (context, orientation, screenType) {
        return GetMaterialApp.router(
          // home: const OwnerDashboard(),
          scaffoldMessengerKey: snackbarKey,
          routerDelegate: _router.delegate(),
          routeInformationProvider: _router.routeInfoProvider(),
          routeInformationParser: _router.defaultRouteParser(),
          debugShowCheckedModeBanner: true,
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
            // appBarTheme: const AppBarTheme(
            //   color: Colors.white,
            // ),
            //  useMaterial3: true,
            scaffoldBackgroundColor: const Color(0xFFF7F7F7),
            textTheme: GoogleFonts.nunitoTextTheme(textTheme),
          ),
          // theme: isDarkMode
          //     ? ThemeData(
          //         iconTheme: const IconThemeData(color: Colors.white),

          //         iconButtonTheme: const IconButtonThemeData(
          //             style: ButtonStyle(
          //                 iconColor: MaterialStatePropertyAll(Colors.white))),
          //         actionIconTheme: isMobile()
          //             ? ActionIconThemeData(
          //                 backButtonIconBuilder: (context) {
          //                   return const Icon(
          //                     Icons.arrow_back_ios,
          //                     color: Colors.white,
          //                   );
          //                 },
          //               )
          //             : null,

          //         // buttonTheme: ButtonThemeData(),
          //         textTheme: GoogleFonts.outfitTextTheme(textTheme)
          //             .copyWith(
          //               // bodyLarge: GoogleFonts.outfit(
          //               //     textStyle: textTheme.bodyMedium, color: Colors.black),

          //               labelMedium: GoogleFonts.outfit(
          //                   textStyle: textTheme.labelMedium,
          //                   fontWeight: FontWeight.w700),
          //               displayLarge: GoogleFonts.outfit(
          //                   textStyle: textTheme.displayLarge,
          //                   fontWeight: FontWeight.w100),
          //               displayMedium: GoogleFonts.outfit(
          //                   textStyle: textTheme.displayMedium,
          //                   fontWeight: FontWeight.w400),
          //               displaySmall: GoogleFonts.outfit(
          //                   textStyle: textTheme.displaySmall,
          //                   fontWeight: FontWeight.w400),
          //               headlineMedium: GoogleFonts.outfit(
          //                   textStyle: textTheme.headlineMedium,
          //                   fontWeight: FontWeight.w400),
          //               headlineSmall: GoogleFonts.outfit(
          //                   textStyle: textTheme.headlineSmall,
          //                   fontWeight: FontWeight.w800),
          //               titleLarge: GoogleFonts.outfit(
          //                   textStyle: textTheme.titleLarge,
          //                   fontWeight: FontWeight.w500),
          //               titleMedium: GoogleFonts.outfit(
          //                   textStyle: textTheme.titleMedium,
          //                   fontWeight: FontWeight.w400),
          //               bodyLarge: GoogleFonts.outfit(
          //                   textStyle: textTheme.bodyLarge,
          //                   fontWeight: FontWeight.w500),
          //               bodyMedium: GoogleFonts.outfit(
          //                   textStyle: textTheme.bodyMedium,
          //                   fontWeight: FontWeight.w700),
          //               bodySmall: GoogleFonts.outfit(
          //                   textStyle: textTheme.bodySmall,
          //                   fontWeight: FontWeight.w500),
          //               labelLarge: GoogleFonts.outfit(
          //                   textStyle: textTheme.labelLarge,
          //                   fontWeight: FontWeight.w700),
          //               titleSmall: GoogleFonts.outfit(
          //                   textStyle: textTheme.titleSmall,
          //                   fontWeight: FontWeight.w500),
          //               labelSmall: GoogleFonts.outfit(
          //                   textStyle: textTheme.labelSmall,
          //                   fontWeight: FontWeight.w400),

          //               // headlineMedium: GoogleFonts.outfit(
          //               //     textStyle: textTheme.bodyMedium, color: Colors.white),
          //               // bodyMedium: GoogleFonts.outfit(
          //               //     textStyle: textTheme.bodyMedium, color: Colors.white),
          //             )
          //             .apply(
          //               //  displayColor: Colors.white,
          //               bodyColor: Colors.white,
          //             ),
          //         scaffoldBackgroundColor: const Color(0xff282834),
          //         dialogBackgroundColor: Colors.white.withOpacity(0.3),
          //         //  dialogTheme: const DialogTheme(backgroundColor: Colors.white),
          //         // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          //         useMaterial3: true,
          //         primaryColor: HexColor("#FEB20F"),
          //         secondaryHeaderColor: HexColor("#1AAD64"),
          //         disabledColor: const Color(0xffa2a7ad),
          //         brightness: Brightness.dark,
          //         hintColor: const Color(0xFFbebebe),
          //         shadowColor: const Color(0xFF1B1B25),
          //         cardColor: Colors.black,
          //         textButtonTheme: TextButtonThemeData(
          //             style: TextButton.styleFrom(
          //                 foregroundColor: const Color(0xFFcda335))),
          //         appBarTheme: const AppBarTheme(
          //             backgroundColor: Colors.black,
          //             //  Color(0xff282834),
          //             foregroundColor: Colors.white),
          //         visualDensity: VisualDensity.comfortable,
          //         colorScheme: const ColorScheme.dark(
          //                 primary: Color(0xFFcda335),
          //                 secondary: Color(0xFFcda335))
          //             .copyWith(background: Colors.black)
          //             .copyWith(
          //               error: const Color(0xFFdd3135),
          //             ))
          //     :
          //     ThemeData(
          //         iconTheme: const IconThemeData(color: Colors.black),
          //         iconButtonTheme: const IconButtonThemeData(
          //             style: ButtonStyle(
          //                 iconColor: MaterialStatePropertyAll(Colors.black))),
          //         actionIconTheme: ActionIconThemeData(
          //           backButtonIconBuilder: (context) {
          //             return const Icon(
          //               Icons.arrow_back_ios,
          //               color: Colors.black,
          //             );
          //           },
          //         ),
          //         // buttonTheme: const ButtonThemeData(buttonColor: Colors.black),
          //         // iconButtonTheme: const IconButtonThemeData(
          //         //     style: ButtonStyle(
          //         //         foregroundColor: MaterialStatePropertyAll(Colors.black),
          //         //         iconColor: MaterialStatePropertyAll(Colors.black))),
          //         // iconTheme: const IconThemeData(color: Colors.black),
          //         textTheme: GoogleFonts.outfitTextTheme(textTheme)
          //             .copyWith(
          //               labelMedium: GoogleFonts.outfit(
          //                   textStyle: textTheme.labelMedium,
          //                   fontWeight: FontWeight.w700),
          //               displayLarge: GoogleFonts.outfit(
          //                   textStyle: textTheme.displayLarge,
          //                   fontWeight: FontWeight.w100),
          //               displayMedium: GoogleFonts.outfit(
          //                   textStyle: textTheme.displayMedium,
          //                   fontWeight: FontWeight.w400),
          //               displaySmall: GoogleFonts.outfit(
          //                   textStyle: textTheme.displaySmall,
          //                   fontWeight: FontWeight.w400),
          //               headlineMedium: GoogleFonts.outfit(
          //                   textStyle: textTheme.headlineMedium,
          //                   fontWeight: FontWeight.w400),
          //               headlineSmall: GoogleFonts.outfit(
          //                   textStyle: textTheme.headlineSmall,
          //                   fontWeight: FontWeight.w800),
          //               titleLarge: GoogleFonts.outfit(
          //                   textStyle: textTheme.titleLarge,
          //                   fontWeight: FontWeight.w500),
          //               titleMedium: GoogleFonts.outfit(
          //                   textStyle: textTheme.titleMedium,
          //                   fontWeight:
          //                       isMobile() ? FontWeight.w200 : FontWeight.w400),
          //               bodyLarge: GoogleFonts.outfit(
          //                   textStyle: textTheme.bodyLarge,
          //                   fontWeight: FontWeight.w500),
          //               bodyMedium: GoogleFonts.outfit(
          //                   textStyle: textTheme.bodyMedium,
          //                   fontWeight: FontWeight.w700),
          //               bodySmall: GoogleFonts.outfit(
          //                   textStyle: textTheme.bodySmall,
          //                   fontWeight: FontWeight.w500),
          //               labelLarge: GoogleFonts.outfit(
          //                   textStyle: textTheme.labelLarge,
          //                   fontWeight: FontWeight.w700),
          //               titleSmall: GoogleFonts.outfit(
          //                   textStyle: textTheme.titleSmall,
          //                   fontWeight: FontWeight.w500),
          //               labelSmall: GoogleFonts.outfit(
          //                   textStyle: textTheme.labelSmall,
          //                   fontWeight: FontWeight.w400),
          //             )
          //             .apply(bodyColor: Colors.black),
          //         dialogBackgroundColor: Colors.black.withOpacity(0.3),
          //         scaffoldBackgroundColor:
          //             const Color.fromARGB(255, 251, 251, 251),
          //         // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          //         primaryColor: HexColor("#053092"),
          //         secondaryHeaderColor: const Color(0xFF4794FF),
          //         disabledColor: const Color(0xFFBABFC4),
          //         brightness: Brightness.light,
          //         shadowColor: const Color.fromARGB(255, 248, 248, 248),
          //         hintColor: const Color(0xFF9F9F9F),
          //         cardColor: Colors.white,
          //         textButtonTheme: TextButtonThemeData(
          //             style: TextButton.styleFrom(
          //                 foregroundColor: const Color(0xFFdcb247))),
          //         appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
          //         visualDensity: VisualDensity.compact,
          //         colorScheme: const ColorScheme.light(
          //                 primary: Color(0xFFdcb247),
          //                 secondary: Color(0xFFdcb247))
          //             .copyWith(background: const Color(0xFFFCFCFC))
          //             .copyWith(error: const Color(0xFFE84D4F))
          //             .copyWith()),
        );
      });
    });
  }
}
