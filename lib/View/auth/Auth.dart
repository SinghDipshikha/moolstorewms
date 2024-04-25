import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Auth/View/splash.dart';
import 'package:moolwmsstore/utils/globals.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return GetNavigator(
      // initialRoute: RouteTable.splash,
      // key: navigatorKeyokoko1,
      key: Get.nestedKey(authNavigationKey),
      pages: const [
        MaterialPage(
          key: ValueKey('Splash'),
          child: Splash(),
        )
      ],
      // onGenerateInitialRoutes: (navigator, initialRoute) =>,

      onPopPage: (route, result) => route.didPop(result),
      // key: const Key("1"),
    );
  }
}
