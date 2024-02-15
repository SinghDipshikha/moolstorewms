import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:moolwmsstore/Controller/userController.dart';
import 'package:moolwmsstore/View/Admin/NavigationDrawer.dart';
import 'package:moolwmsstore/View/common/mydropdown.dart';
import 'package:moolwmsstore/View/common/profileAvatar.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';
import 'package:platform_detector/platform_detector.dart';

@RoutePage()
class MobileWebBody extends StatefulWidget {
  PreferredSizeWidget? appBarMobile;
  PreferredSizeWidget? appBarWeb;

  Widget? floatingActionButton;
  MobileWebBody(
      {Key? key, this.floatingActionButton, this.appBarMobile, this.appBarWeb})
      : super(key: key);

  @override
  _MobileWebBodyState createState() => _MobileWebBodyState();
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class _MobileWebBodyState extends State<MobileWebBody> {
  List<String> locations = ["Mumbai", "Haryana", "Gujrat"];
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.sizeOf(context).height;
    // double width = MediaQuery.sizeOf(context).width;
    return GetBuilder<UserController>(builder: (userController) {
      return Scaffold(
        body: isMobile()
            ? Stack(
                children: [
                  const AutoRouter(),
                  if (userController.celebrate)
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Lottie.asset('assets/images/party3.json',
                            fit: BoxFit.cover),
                      ),
                    ),
                  if (userController.celebrate)
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Lottie.asset('assets/images/party1.json',
                            fit: BoxFit.contain),
                      ),
                    ),
                ],
              )
            : Stack(
                children: [
                  Row(
                    children: [
                      const MyNavigationDrawer(),
                      Expanded(
                          child: Container(
                              color: Theme.of(context).cardColor,
                              padding: const EdgeInsets.all(20)
                                  .copyWith(left: 0, top: 0, right: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      MyDropdown(
                                          list: locations,
                                          selectedValue: locations[0],
                                          onChanged: (x) {},
                                          labelText: locations[0]),
                                      // const Gap(10),
                                      badges.Badge(
                                        position: badges.BadgePosition.topEnd(
                                            top: 0, end: 3),
                                        badgeAnimation: const badges
                                            .BadgeAnimation.slide(
                                            // disappearanceFadeAnimationDuration: Duration(milliseconds: 200),
                                            // curve: Curves.easeInCubic,
                                            ),
                                        showBadge: true,
                                        badgeStyle: const badges.BadgeStyle(
                                          badgeColor: Colors.red,
                                        ),
                                        badgeContent: const Text(
                                          "1",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        child: IconButton(
                                            icon: const Icon(
                                              Icons.notifications,
                                              size: 30,
                                            ),
                                            onPressed: () {
                                              context.pushRoute(
                                                  const TesttextRoute());
                                              // Get.to(const Test());
                                            }),
                                      ),
                                      const Gap(25),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Alisha Demo",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium,
                                          ),
                                          Text(
                                            "Admin",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          ),
                                        ],
                                      ),
                                      const Gap(10),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: ProfileAvatar(
                                          radius: 20,
                                        ),
                                      ),
                                      const Gap(10),
                                    ],
                                  ),
                                  Expanded(
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(22),
                                        child: const AutoRouter()),
                                  ),
                                ],
                              )))
                    ],
                  ),
                  if (userController.celebrate)
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Lottie.asset('assets/images/party3.json',
                            fit: BoxFit.cover),
                      ),
                    ),
                  if (userController.celebrate)
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Lottie.asset('assets/images/party1.json',
                            fit: BoxFit.cover),
                      ),
                    ),
                  // SizedBox(
                  //   width: MediaQuery.sizeOf(context).width,
                  //   height: MediaQuery.sizeOf(context).height,
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: Lottie.asset('assets/images/party3.json',
                  //         fit: BoxFit.cover),
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: MediaQuery.sizeOf(context).width,
                  //   height: MediaQuery.sizeOf(context).height,
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: Lottie.asset('assets/images/party1.json',
                  //         fit: BoxFit.cover),
                  //   ),
                  // ),
                ],
              ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 10),
        //   child: ListView(
        //     children: [
        //       ...widget.body,
        //       Gap(AppBarTheme.of(context).toolbarHeight ?? kToolbarHeight)
        //     ],
        //   ),
        // ),
        backgroundColor: Theme.of(context).shadowColor,
        drawerScrimColor: Theme.of(context).primaryColor.withOpacity(0.1),
        drawer: isMobile() ? const MyNavigationDrawer() : null,
        key: scaffoldKey,
        appBar: isMobile()
            ? AppBar(
                leading: IconButton(
                    onPressed: () => scaffoldKey.currentState!.openDrawer(),
                    icon: Icon(Icons.menu,
                        color: Theme.of(context).primaryColor)),
                //backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
                title: MyDropdown(
                    shadow: true,
                    list: locations,
                    selectedValue: locations[0],
                    onChanged: (x) {},
                    labelText: locations[0]),
                // title: InkWell(
                //   onTap: () async {
                //     //context.router.current.name ;

                //     // await globals.authStore!.getUserDetail();
                //     // showLocationSelectionBottomSheet();
                //   },
                //   child: Container(
                //     padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                //     decoration: BoxDecoration(
                //         border: Border.all(color: Theme.of(context).primaryColor, width: 1),
                //         borderRadius: BorderRadius.circular(18)),
                //     child: Row(
                //       mainAxisSize: MainAxisSize.min,
                //       children: [
                //         Icon(
                //           Icons.location_on,
                //           color: Theme.of(context).primaryColor,
                //           size: 20,
                //         ),
                //         const SizedBox(width: 4),
                //         Text(
                //             // userStore?.location?.name ??
                //             ("location".tr),
                //             style: Theme.of(context)
                //                 .textTheme
                //                 .bodyMedium!
                //                 .copyWith(color: Theme.of(context).primaryColor))
                //       ],
                //     ),
                //   ),
                // ),
                actions: [
                  PopupMenuButton(
                      icon: ProfileAvatar(
                        radius: 28,
                      ),
                      onSelected: (dynamic val) async {
                        if (val == "PROFILE") {
                          Navigator.of(context).pushNamed("/profile");
                        } else if (val == "CHANGEPASSWORD") {
                          Navigator.of(context).pushNamed("/changepassword");
                        } else if (val == "TEXT") {
                          AutoRouter.of(context).push(const TesttextRoute());
                        }
                      },
                      itemBuilder: (context) => <PopupMenuEntry<String>>[
                            const PopupMenuItem(
                              value: "PROFILE",
                              child: Row(
                                children: [Text(("profile"))],
                              ),
                            ),
                            PopupMenuItem(
                              value: "CHANGEPASSWORD",
                              child: Row(
                                children: [Text(("change_password".tr))],
                              ),
                            ),
                            PopupMenuItem(
                              value: "TEXT",
                              child: Row(
                                children: [Text(("TEXT".tr))],
                              ),
                            ),
                          ]),
                ],
              )
            : null,

        // AppBar(
        //   leading: IconButton(
        //       onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        //       icon: Icon(Icons.menu,
        //           color: Theme.of(context).primaryColor)),
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   //centerTitle: true,
        //   actions: [
        //     MyDropdown(
        //         list: locations,
        //         selectedValue: locations[0],
        //         onChanged: (x) {},
        //         labelText: locations[0]),
        //     // const Gap(10),
        //     badges.Badge(
        //       position: badges.BadgePosition.topEnd(top: 0, end: 3),
        //       badgeAnimation: const badges.BadgeAnimation.slide(
        //           // disappearanceFadeAnimationDuration: Duration(milliseconds: 200),
        //           // curve: Curves.easeInCubic,
        //           ),
        //       showBadge: true,
        //       badgeStyle: const badges.BadgeStyle(
        //         badgeColor: Colors.red,
        //       ),
        //       badgeContent: const Text(
        //         "1",
        //         style: TextStyle(color: Colors.white),
        //       ),
        //       child: IconButton(
        //           icon: const Icon(
        //             Icons.notifications,
        //             size: 30,
        //           ),
        //           onPressed: () {
        //             context.pushRoute(const TesttextRoute());
        //             // Get.to(const Test());
        //           }),
        //     ),
        //     const Gap(25),
        //     Column(
        //       crossAxisAlignment: CrossAxisAlignment.end,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text(
        //           "Alisha Demo",
        //           style: Theme.of(context).textTheme.titleMedium,
        //         ),
        //         Text(
        //           "Admin",
        //           style: Theme.of(context).textTheme.labelMedium,
        //         ),
        //       ],
        //     ),
        //     const Gap(10),
        //     Padding(
        //       padding: const EdgeInsets.only(top: 5),
        //       child: ProfileAvatar(),
        //     ),
        //     const Gap(10)
        //   ],
        // )
      );
    });
  }
}
