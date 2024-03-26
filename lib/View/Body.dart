import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Roles/Owner/WarehouseList.dart';
// import 'package:moolwmsstore/View/Roles/Owner/WarehouseList.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';

@RoutePage()
class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  bool showWebDrawr = false;
  @override
  Widget build(BuildContext context) {
    if (!context.isPhone) {
      scaffoldkey.currentState?.closeDrawer();
    }

    Widget drawer = Drawer(
      width: context.isPhone ? null : 240,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      {
                        if (context.isPhone) {
                          scaffoldkey.currentState!.closeDrawer();
                        }
                        setState(() {
                          showWebDrawr = !showWebDrawr;
                        });
                      }
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    )),
                Image.asset(
                  "assets/images/Logo.png",
                  height: 40,
                ).paddingSymmetric(vertical: 8, horizontal: 24),
              ],
            ),
          ),
          ListTile(
            leading: Image.asset(
              "assets/icons/dashboard.png",
              height: 16,
            ),
            title: const Text('Dashboard'),
            onTap: () {
              context.pushRoute(const OwnerDashboard());
              if (context.isPhone) {
                scaffoldkey.currentState!.closeDrawer();
              }
              // setState(() {
              //   selectedIndex = 0;
              // });
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Image.asset("assets/icons/warehousedd.png", height: 16),
            title: const Text('Warehouse'),
            onTap: () {
            //  context.pushRoute( WarehouseList());
              if (context.isPhone) {
                scaffoldkey.currentState!.closeDrawer();
              }
              // setState(() {
              //   selectedIndex = 1;
              // });
            },
          ),
          ListTile(
            leading: Image.asset("assets/icons/3D Icon Set WareH NavBar.png",
                height: 16),
            title: const Text('Sales'),
            onTap: () {
              context.pushRoute(PoList());
              if (context.isPhone) {
                scaffoldkey.currentState!.closeDrawer();
              }
              // setState(() {
              //   selectedIndex = 2;
              // });
            },
          ),
          ListTile(
            leading: Image.asset("assets/icons/3D Icon Set WareH NavBar.png",
                height: 16),
            title: const Text('HR'),
            onTap: () {
            //  context.pushRoute(const WarehouseList());
              if (context.isPhone) {
                scaffoldkey.currentState!.closeDrawer();
              }
              // setState(() {
              //   selectedIndex = 2;
              // });
            },
          ),
        ],
      ),
    );

    return Material(
      child: Row(
        children: [
          if (!context.isPhone && showWebDrawr) drawer,
          Expanded(
            child: Scaffold(
              key: scaffoldkey,
              drawer: context.isPhone ? drawer : null,
              appBar: AppBar(
                centerTitle: false,
                title: (!context.isPhone && showWebDrawr)
                    ? null
                    : Image.asset(
                        "assets/icons/ic_logo.png",
                        height: 40,
                      ),
                // title: GetBuilder<UiController>(builder: (userController) {
                //   return Text(
                //     userController.title,
                //     style: const TextStyle(color: Colors.black),
                //   );
                // }),
                actions: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/icons/Subtract.png",
                            height: 15,
                          ),
                          const Gap(6),
                          Image.asset(
                            "assets/icons/Notifications.png",
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                  ).paddingSymmetric(horizontal: 12),
                  const CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.red,
                  ).paddingSymmetric(horizontal: 12)
                ],
                backgroundColor: Colors.white,
                leading: (!context.isPhone && showWebDrawr)
                    ? null
                    : IconButton(
                        onPressed: () {
                          if (context.isPhone) {
                            scaffoldkey.currentState!.openDrawer();
                          } else {
                            setState(() {
                              showWebDrawr = !showWebDrawr;
                            });
                          }
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.black,
                        )),
                elevation: 10,
              ),
              body: const Padding(
                  padding: EdgeInsets.all(12.0), child: AutoRouter()),
            ),
          ),
        ],
      ),
    );
  }
}

// class MyDrawer extends StatelessWidget {
//   GlobalKey<ScaffoldState> scaffoldkey;
//   MyDrawer({super.key, required this.scaffoldkey});

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
