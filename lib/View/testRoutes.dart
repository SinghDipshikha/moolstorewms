import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Auth/splash.dart';
import 'package:moolwmsstore/View/Roles/Owner/OwnerDashboard.dart';
import 'package:moolwmsstore/utils/globals.dart';

@RoutePage()
class TestRoutes extends StatelessWidget {
  const TestRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              width: 430,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Authentictaion"),
                      const Spacer(),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Get.back(id: authNavigationKey);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ))
                    ],
                  ),
                  Expanded(
                    child: Container(
                        width: 430,
                        // height: double.infinity,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shadows: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          gradient: const LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [
                              Color(0xFF2C2C2C),
                              Color(0xFF2C2C2C),
                              Color(0xFF1E1E1E)
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        child: GetNavigator(
                          // initialRoute: RouteTable.splash,
                          // key: navigatorKeyokoko1,
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
                        )).paddingSymmetric(vertical: 12, horizontal: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 430,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Owner"),
                      const Spacer(),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Get.back(id: ownerNavigationKey);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ))
                    ],
                  ),
                  Expanded(
                    child: Container(
                        width: 430,
                        // height: double.infinity,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shadows: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          gradient: const LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [
                              Color(0xFF2C2C2C),
                              Color(0xFF2C2C2C),
                              Color(0xFF1E1E1E)
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        child: GetNavigator(
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
                        )).paddingSymmetric(vertical: 12, horizontal: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 430,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("HR"),
                      const Spacer(),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Get.back(id: hrNavigationKey);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ))
                    ],
                  ),
                  Expanded(
                    child: Container(
                        width: 430,
                        // height: double.infinity,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shadows: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          gradient: const LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [
                              Color(0xFF2C2C2C),
                              Color(0xFF2C2C2C),
                              Color(0xFF1E1E1E)
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        child: GetNavigator(
                          // initialRoute: RouteTable.splash,
                          // key: navigatorKeyokoko1,
                          key: Get.nestedKey(hrNavigationKey),
                          pages: const [
                            MaterialPage(
                              key: ValueKey('Splash'),
                              child: Splash(),
                            )
                          ],
                          // onGenerateInitialRoutes: (navigator, initialRoute) =>,

                          onPopPage: (route, result) => route.didPop(result),
                          // key: const Key("1"),
                        )).paddingSymmetric(vertical: 12, horizontal: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 430,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Sales"),
                      const Spacer(),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Get.back(id: salesNavigationKey);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ))
                    ],
                  ),
                  Expanded(
                    child: Container(
                        width: 430,
                        // height: double.infinity,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shadows: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          gradient: const LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [
                              Color(0xFF2C2C2C),
                              Color(0xFF2C2C2C),
                              Color(0xFF1E1E1E)
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        child: GetNavigator(
                          // initialRoute: RouteTable.splash,
                          // key: navigatorKeyokoko1,
                          key: Get.nestedKey(salesNavigationKey),
                          pages: const [
                            MaterialPage(
                              key: ValueKey('Splash'),
                              child: Splash(),
                            )
                          ],
                          // onGenerateInitialRoutes: (navigator, initialRoute) =>,

                          onPopPage: (route, result) => route.didPop(result),
                          // key: const Key("1"),
                        )).paddingSymmetric(vertical: 12, horizontal: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 430,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Security Guard"),
                      const Spacer(),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Get.back(id: securityGuardNavigation);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ))
                    ],
                  ),
                  Expanded(
                    child: Container(
                        width: 430,
                        // height: double.infinity,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shadows: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          gradient: const LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [
                              Color(0xFF2C2C2C),
                              Color(0xFF2C2C2C),
                              Color(0xFF1E1E1E)
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        child: GetNavigator(
                          // initialRoute: RouteTable.splash,
                          // key: navigatorKeyokoko1,
                          key: Get.nestedKey(securityGuardNavigation),
                          pages: const [
                            MaterialPage(
                              key: ValueKey('Splash'),
                              child: Splash(),
                            )
                          ],
                          // onGenerateInitialRoutes: (navigator, initialRoute) =>,

                          onPopPage: (route, result) => route.didPop(result),
                          // key: const Key("1"),
                        )).paddingSymmetric(vertical: 12, horizontal: 12),
                  ),
                ],
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 12, vertical: 10));
  }
}
