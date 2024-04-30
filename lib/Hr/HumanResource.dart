import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/View/hrDashboard.dart';
import 'package:moolwmsstore/utils/globals.dart';

class HumanResouce extends StatelessWidget {
  const HumanResouce({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isPhone
        ? GetNavigator(
            key: Get.nestedKey(hrNavigationKey),
            pages: const [
              MaterialPage(
                key: ValueKey('HR Dashboard'),
                child: HrDashboard(),
              )
            ],
            // onGenerateInitialRoutes: (navigator, initialRoute) =>,

            onPopPage: (route, result) => route.didPop(result),
            // key: const Key("1"),
          )
        : Container(
            color: Colors.white,
            child: Center(
              child: Card(
                margin: EdgeInsets.zero,
                elevation: 20,
                child: Container(
                  height: double.infinity,
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: GetNavigator(
                    key: Get.nestedKey(hrNavigationKey),
                    pages: const [
                      MaterialPage(
                        key: ValueKey('HR Dashboard'),
                        child: HrDashboard(),
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
