import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Walkthrough/walkThrough.dart';
import 'package:moolwmsstore/View/base/animated_dialog.dart';
import 'package:platform_detector/platform_detector.dart';

class RouteHelper {
  static const String initial = '/';
  static const String splash = '/splash';
  static const String home = '/home';

  static getInitialRoute() => initial;
  static getSplashRoute() => splash;
  static getHomeRoute(String name) => '$home?name=$name';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => Container(child: const WalkThrough())),
    // GetPage(name: splash, page: () => const WalkThrough()),
    GetPage(
      name: home,
      page: () => Container(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 300),
    ),
  ];

  static void openDialog(BuildContext context, Widget child,
      {bool isDismissible = true, AlignmentGeometry? alignment}) {
    isWeb()
        ? Get.bottomSheet(
            isDismissible: isDismissible,
            child,
            backgroundColor: Colors.transparent,
            enterBottomSheetDuration: const Duration(milliseconds: 100),
            isScrollControlled: true,
          )
        :
        // Get.dialog(
        //   useSafeArea: true,
        //
        //   transitionDuration: Duration(milliseconds: 300),
        //   Dialog(backgroundColor: Colors.transparent, child:  child,),
        // );
        showAnimatedDialog(
            context: context,
            duration: const Duration(milliseconds: 200),
            barrierDismissible: isDismissible,
            builder: (BuildContext context) {
              return Dialog(
                alignment: alignment,
                backgroundColor: Colors.transparent,
                child: child,
              );
            },
            animationType: DialogTransitionType.slideFromBottomFade,
          );
  }
}
