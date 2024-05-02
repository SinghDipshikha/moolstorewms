import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Security%20Guard/View/dashboard.dart';
import 'package:moolwmsstore/utils/globals.dart';

////@RoutePage()
class SecurityGuard extends StatelessWidget {
  const SecurityGuard({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isPhone
        ? GetNavigator(

      key: Get.nestedKey(securityGuardNavigation),
      pages: const [
        MaterialPage(
          key: ValueKey('SecurityGuardDashBoard'),
          child: SecurityGuardDashBoard(),
        )
      ],
      // onGenerateInitialRoutes: (navigator, initialRoute) =>,

      onPopPage: (route, result) => route.didPop(result),
      // key: const Key("1"),
    )   : Container(
            color: Colors.white,
            child: Center(
              child: Card(
                margin: EdgeInsets.zero,
                elevation: 20,
                child: Container(
                  height: double.infinity,
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: GetNavigator(

      key: Get.nestedKey(securityGuardNavigation),
      pages: const [
        MaterialPage(
          key: ValueKey('SecurityGuardDashBoard'),
          child: SecurityGuardDashBoard(),
        )
      ],
      // onGenerateInitialRoutes: (navigator, initialRoute) =>,

      onPopPage: (route, result) => route.didPop(result),
      // key: const Key("1"),
    ) ,
                ),
              ),
            ),
          );
  }
}
