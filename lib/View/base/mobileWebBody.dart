import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Admin/NavigationDrawer.dart';
import 'package:moolwmsstore/View/base/mydropdown.dart';
import 'package:moolwmsstore/View/base/profileAvatar.dart';
import 'package:moolwmsstore/test.dart';
import 'package:platform_detector/platform_detector.dart';

@RoutePage()
class MobileWebBody extends StatefulWidget {
  PreferredSizeWidget? appBarMobile;
  PreferredSizeWidget? appBarWeb;

  List<Widget> body;
  Widget? floatingActionButton;
  MobileWebBody(
      {Key? key,
      required this.body,
      this.floatingActionButton,
      this.appBarMobile,
      this.appBarWeb})
      : super(key: key);

  @override
  _MobileWebBodyState createState() => _MobileWebBodyState();
}

class _MobileWebBodyState extends State<MobileWebBody> {
  List<String> locations = ["Mumbai", "Haryana", "Gujrat"];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.sizeOf(context).height;
    // double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        body: const AutoRouter(),
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
        drawer: const MyNavigationDrawer(),
        key: _scaffoldKey,
        appBar: isMobile()
            ? widget.appBarMobile ??
                AppBar(
                  leading: IconButton(
                      onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                      icon: Icon(Icons.menu,
                          color: Theme.of(context).primaryColor)),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  centerTitle: true,
                  title: InkWell(
                    onTap: () async {
                      // await globals.authStore!.getUserDetail();
                      // showLocationSelectionBottomSheet();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).primaryColor, width: 1),
                          borderRadius: BorderRadius.circular(18)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Theme.of(context).primaryColor,
                            size: 20,
                          ),
                          const SizedBox(width: 4),
                          Text(
                              // userStore?.location?.name ??
                              ("location".tr),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Theme.of(context).primaryColor))
                        ],
                      ),
                    ),
                  ),
                  actions: [
                    PopupMenuButton(
                        icon: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Text(
                              // userStore?.appUser?.name
                              //         ?.substring(0, 1)
                              //         ?.toUpperCase() ??
                              "X",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                      color: Theme.of(context).cardColor,
                                      fontWeight: FontWeight.bold)),
                        ),
                        onSelected: (dynamic val) async {
                          if (val == "PROFILE") {
                            Navigator.of(context).pushNamed("/profile");
                          } else if (val == "CHANGEPASSWORD") {
                            Navigator.of(context).pushNamed("/changepassword");
                          } else if (val == "TEXT") {
                            Get.to(const Test());
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
            : widget.appBarWeb ??
                AppBar(
                  leading: IconButton(
                      onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                      icon: Icon(Icons.menu,
                          color: Theme.of(context).primaryColor)),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  //centerTitle: true,
                  actions: [
                    MyDropdown(
                        list: locations,
                        selectedValue: locations[0],
                        onChanged: (x) {},
                        labelText: locations[0]),
                    // const Gap(10),
                    badges.Badge(
                      position: badges.BadgePosition.topEnd(top: 0, end: 3),
                      badgeAnimation: const badges.BadgeAnimation.slide(
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
                            Get.to(const Test());
                          }),
                    ),
                    const Gap(25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Alisha Demo",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          "Admin",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    const Gap(10),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: ProfileAvatar(),
                    ),
                    const Gap(10)
                  ],
                ));
  }
}
