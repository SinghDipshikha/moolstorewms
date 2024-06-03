import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/View/OwnerDashboard.dart';
import 'package:moolwmsstore/Owner/View/widget/ownerDrawer.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/globals.dart';

class Owner extends StatelessWidget {
  const Owner({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isPhone
        ? GetNavigator(
            // initialRoute: RouteTable.splash,
            // key: navigatorKeyokoko1,
            key: Get.nestedKey(ownerNavigationKey),
            pages: const [
              MaterialPage(
                key: ValueKey('OwnerDashboard'),
                child: OwnerDashboard(),
              )
            ],
            // onGenerateInitialRoutes: (navigator, initialRoute) =>,

            onPopPage: (route, result) => route.didPop(result),
            // key: const Key("1"),
          )
        : Container(
            color: AppColors.linkedInBGColor,
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.black,
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 340,
                        child: ClipRRect(
                                borderRadius: BorderRadius.circular(22),
                                //  constraints: const BoxConstraints(maxHeight: 600),
                                child: OwnerDrawer())
                            .paddingSymmetric(vertical: 44, horizontal: 10),
                      ),
                      Container(
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        height: double.infinity,
                        constraints: const BoxConstraints(
                            maxWidth: 600, maxHeight: double.infinity),
                        child: GetNavigator(
                          key: Get.nestedKey(ownerNavigationKey),
                          pages: const [
                            MaterialPage(
                              key: ValueKey('OwnerDashboard'),
                              child: OwnerDashboard(),
                            )
                          ],
                          // onGenerateInitialRoutes: (navigator, initialRoute) =>,

                          onPopPage: (route, result) => route.didPop(result),
                          // key: const Key("1"),
                        ),
                      ).paddingAll(4),
                      const SizedBox(
                        width: 340,
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
