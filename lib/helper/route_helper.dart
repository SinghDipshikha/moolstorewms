// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:moolwmsstore/View/Admin/GMSDashboard.dart';
// import 'package:moolwmsstore/View/DMS/MaterialInward.dart';
// import 'package:moolwmsstore/View/GMS/Material/MaterialPage.dart';
// import 'package:moolwmsstore/View/Walkthrough/walkThrough.dart';
// import 'package:moolwmsstore/View/auth/login.dart';
// import 'package:moolwmsstore/View/auth/signUp.dart';
// import 'package:moolwmsstore/View/base/animated_dialog.dart';
// import 'package:moolwmsstore/View/webBase/appBarWeb.dart';
// import 'package:platform_detector/platform_detector.dart';

// class RouteHelper {
//   static const String initial = '/';
//   static const String splash = '/splash';
//   static const String home = '/home';
//   static const String signup = '/signup';
//   static const String gMSDashboard = '/GMSDashboard';
//   static const String material = '/material';
//   static const String materialInward = '/inward';

//   // static getInitialRoute() => initial;
//   // static getSplashRoute() => splash;
//   // static getGMSDashboardRoute() => gMSDashboard;
//   // static getHomeRoute(String name) => '$home?name=$name';

//   static List<GetPage> routes = [
//     GetPage(
//         name: initial,
//         page: () => isMobile()
//             ? const WalkThrough()
//             : const Scaffold(
//                 // backgroundColor: Theme.of(context).primaryColor,
//                 body: Column(
//                 children: [
//                   AppBarWeb(),
//                   Expanded(
//                     child: Row(
//                       children: [
//                         Expanded(flex: 3, child: WalkThrough()),
//                         Expanded(flex: 2, child: Login()),
//                       ],
//                     ),
//                   ),
//                 ],
//               ))),
//     // GetPage(name: splash, page: () => const WalkThrough()),
//     GetPage(
//       name: home,
//       page: () => Container(),
//       transition: Transition.leftToRight,
//       transitionDuration: const Duration(milliseconds: 300),
//     ),
//     GetPage(
//       name: signup,
//       page: () => const SignUp(),
//       transition: Transition.leftToRight,
//       transitionDuration: const Duration(milliseconds: 300),
//     ),
//     GetPage(
//       name: gMSDashboard,
//       page: () => const GMSDashboard(),
//       transition: Transition.leftToRight,
//       transitionDuration: const Duration(milliseconds: 300),
//     ),
//     // GetPage(
//     //   name: material,
//     //   page: () => const MaterialPageInOut(),
//     //   transition: Transition.leftToRight,
//     //   transitionDuration: const Duration(milliseconds: 300),
//     //   children: [
//     //      GetPage(
//     //       name: materialInward,
//     //       page: () => MaterialInward(),
//     //     ),
//     //   ]
//     // ),
//   ];

//   static void openDialog(BuildContext context, Widget child,
//       {bool isDismissible = true, AlignmentGeometry? alignment}) {
//     isWeb()
//         ? Get.bottomSheet(
//             isDismissible: isDismissible,
//             child,
//             backgroundColor: Colors.transparent,
//             enterBottomSheetDuration: const Duration(milliseconds: 100),
//             isScrollControlled: true,
//           )
//         :
//         // Get.dialog(
//         //   useSafeArea: true,
//         //
//         //   transitionDuration: Duration(milliseconds: 300),
//         //   Dialog(backgroundColor: Colors.transparent, child:  child,),
//         // );
//         showAnimatedDialog(
//             context: context,
//             duration: const Duration(milliseconds: 200),
//             barrierDismissible: isDismissible,
//             builder: (BuildContext context) {
//               return Dialog(
//                 alignment: alignment,
//                 backgroundColor: Colors.transparent,
//                 child: child,
//               );
//             },
//             animationType: DialogTransitionType.slideFromBottomFade,
//           );
//   }
// }
