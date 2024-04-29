import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/dashboard.dart';
import 'package:moolwmsstore/utils/globals.dart';

////@RoutePage()
class SecurityGuard extends StatelessWidget {
  const SecurityGuard({super.key});

  @override
  Widget build(BuildContext context) {
    return GetNavigator(
      // initialRoute: RouteTable.splash,
      // key: navigatorKeyokoko1,
      key: Get.nestedKey(securityGuardNavigation),
      pages: const [
        MaterialPage(
          key: ValueKey('Splash'),
          child: SecurityGuardDashBoard(),
        )
      ],
      // onGenerateInitialRoutes: (navigator, initialRoute) =>,

      onPopPage: (route, result) => route.didPop(result),
      // key: const Key("1"),
    );
  }
}
