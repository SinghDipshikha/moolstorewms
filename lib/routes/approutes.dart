// import 'package:get/get.dart';
// import 'package:get_it/get_it.dart';
// import 'package:moolwmsstore/Controller/authController.dart';

// import 'approutes.gr.dart';

// final getIt = GetIt.instance;

// // @AutoRouterConfig(replaceInRouteName: "Route")
// class AppRouter extends $AppRouter {
//   @override
//   List<AutoRoute> get routes => [
//         AutoRoute(page: BaseRoute.page, children: [
//           CustomRoute(
//               page: OwnerDashboardRoute.page,
//               transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
//               durationInMilliseconds: 400),
//         ]),
//         CustomRoute(
//             page: WarehouseListRoute.page,
//             transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
//             durationInMilliseconds: 400),
//         AutoRoute(
//             // initial: true,
//             //   path: "/",
//             page: AuthPageRoute.page,
//             children: [
//               CustomRoute(
//                   // initial: true,
//                   // path: ,
//                   page: SplashRoute.page,
//                   transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
//                   durationInMilliseconds: 400),
//               CustomRoute(
//                   path: "chooselanguage",
//                   page: ChooselanguageRoute.page,
//                   transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
//                   durationInMilliseconds: 400),
//               CustomRoute(
//                   path: "phoneSign",
//                   page: PhoneSignRoute.page,
//                   transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
//                   durationInMilliseconds: 400),
//               CustomRoute(
//                   path: "verifyOtp",
//                   page: OtpScreenRoute.page,
//                   transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
//                   durationInMilliseconds: 400),
//               CustomRoute(
//                   path: "selectrole",
//                   page: SelectRoleRoute.page,
//                   transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
//                   durationInMilliseconds: 400),
//               CustomRoute(
//                   path: "welcome",
//                   page: WelcomeRoute.page,
//                   transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
//                   durationInMilliseconds: 400),
//               CustomRoute(
//                   guards: [
//                     AutoRouteGuard.simple((resolver, router) {
//                       Get.find<AuthController>().getSignupFields();
//                       resolver.next(true);
//                     })
//                   ],
//                   path: "signup",
//                   page: SignupRoute.page,
//                   transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
//                   durationInMilliseconds: 400),
//             ]),
//         CustomRoute(
//             // path: ,

//             page: AddWarehouseRoute.page,
//             transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
//             durationInMilliseconds: 400),
//         CustomRoute(
//             // path: ,

//             page: AddWarehouseRoute.page,
//             transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
//             durationInMilliseconds: 400),
//         CustomRoute(
//             // path: ,

//             page: AddChamberRoute.page,
//             transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
//             durationInMilliseconds: 400),
//         CustomRoute(
//             // path: ,

//             page: ViewWarehouseDetailsRoute.page,
//             transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
//             durationInMilliseconds: 400),
//         CustomRoute(
//             // path: ,

//             page: ChamberListRoute.page,
//             transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
//             durationInMilliseconds: 400),

//         // AutoRoute(path: "/", page: MobileWebBodyRoute.page, children: [
//         //   AutoRoute(page: AddEmployeeRoute.page, path: "AddEmployee"),
//         //   AutoRoute(
//         //       initial: true,
//         //       page: OwnerDashboradRoute.page,
//         //       path: "OwnerDashboard",
//         //       children: [
//         //         AutoRoute(page: OwnerDashboardBodyRoute.page, initial: true),
//         //       ]),
//         //   AutoRoute(
//         //       page: GMSDashboardRoute.page,
//         //       path: "GMSDashboard",
//         //       children: [
//         //         AutoRoute(page: GMSDashboardBodyRoute.page, initial: true),
//         //         AutoRoute(page: MaterialPageBodyRoute.page, path: "Material"),
//         //         AutoRoute(page: MaterialInwardRoute.page, path: "MaterialIn"),
//         //       ]),
//         //   AutoRoute(
//         //       page: DmsDashboardRoute.page,
//         //       path: "DMSDashboard",
//         //       // initial: true,
//         //       children: [
//         //         AutoRoute(page: DmsDashboardBodyRoute.page, initial: true),
//         //         AutoRoute(page: MaterialPageBodyRoute.page, path: "Material"),
//         //         AutoRoute(
//         //             page: MaterialInwardRoute.page, path: "MaterialInward"),
//         //         AutoRoute(page: AssignDockRoute.page, path: "AssignDock"),
//         //         AutoRoute(page: UnloadingRoute.page, path: "Unloading"),
//         //       ]),
//         // ]),

//         // AutoRoute(
//         //   page: SignUpRoute.page,
//         // ),
//         // AutoRoute(
//         //   page: AddWarehouseRoute.page,
//         AutoRoute(
//           // path: ,
//           initial: true,
//           page: ChamberViewRoute.page,
//         ),
//       ];
// }
