import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Dock%20Supervisor/View/dashboard.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/globals.dart';

class DMS extends StatelessWidget {
  const DMS({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isPhone
        ? GetNavigator(
            key: Get.nestedKey(dmsNavigationKey),
            pages: [
              MaterialPage(
                key: const ValueKey('DMSDashBoard'),
                child: DMSDashboard(),
              )
            ],
            // onGenerateInitialRoutes: (navigator, initialRoute) =>,

            onPopPage: (route, result) => route.didPop(result),
            // key: const Key("1"),
          )
        : Container(
            color: AppColors.linkedInBGColor,
            child: Center(
              child: Card(
                margin: EdgeInsets.zero,
                elevation: 20,
                child: Container(
                  height: double.infinity,
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: GetNavigator(
                    key: Get.nestedKey(dmsNavigationKey),
                    pages: [
                      MaterialPage(
                        key: const ValueKey('DMSDashBoard'),
                        child: DMSDashboard(),
                      )
                    ],
                    // onGenerateInitialRoutes: (navigator, initialRoute) =>,

                    onPopPage: (route, result) => route.didPop(result),
                    // key: const Key("1"),
                  ),
                ),
              ),
            ),
          );
  }
}
