import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/View/splash.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/globals.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isPhone
        ? GetNavigator(
          
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
          )
        : Center(
            child: Container(
              height: double.infinity,
              constraints:
                  const BoxConstraints(maxWidth: Dimensions.mobileWidth),
              child: GetNavigator(
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
              ),
            ),
          );
  }
}
