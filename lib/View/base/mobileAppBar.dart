import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/base/mobileWebBody.dart';
import 'package:moolwmsstore/View/base/profileAvatar.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';

AppBar appBarMobile(BuildContext context) {
  return AppBar(
    leading: IconButton(
        onPressed: () => scaffoldKey.currentState!.openDrawer(),
        icon: Icon(Icons.menu, color: Theme.of(context).primaryColor)),
    //backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: InkWell(
      onTap: () async {
        //context.router.current.name ;

        // await globals.authStore!.getUserDetail();
        // showLocationSelectionBottomSheet();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor, width: 1),
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
                    .copyWith(color: Theme.of(context).primaryColor))
          ],
        ),
      ),
    ),
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
  );
}
