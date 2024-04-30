import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/View/OwnerDashboard.dart';
import 'package:moolwmsstore/Sales/View/SalesDashboard.dart';
import 'package:moolwmsstore/utils/globals.dart';

class Sales extends StatelessWidget {
  const Sales({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isPhone
        ? GetNavigator(
            // initialRoute: RouteTable.splash,
            // key: navigatorKeyokoko1,
            key: Get.nestedKey(salesNavigationKey),
            pages: const [
              MaterialPage(
                key: ValueKey('SalesDashboard'),
                child: SalesDashboard(),
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
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: GetNavigator(
                    key: Get.nestedKey(salesNavigationKey),
                    pages: const [
                      MaterialPage(
                        key: ValueKey('SalesDashboard'),
                        child: SalesDashboard(),
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
