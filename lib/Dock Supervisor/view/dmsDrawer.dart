import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Dock%20Supervisor/View/Dock%20Assign/dockAssign.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsController.dart';
import 'package:moolwmsstore/common/widgets/ownerSwitchRoleButton.dart';
import 'package:moolwmsstore/utils/globals.dart';

class DmsDrawer extends StatelessWidget {
  const DmsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: const Color.fromARGB(255, 22, 22, 22),
      backgroundColor: const Color.fromARGB(255, 22, 22, 22),
      child: Column(
        children: [
          GetBuilder<DmsController>(builder: (dmsController) {
            return Theme(
              data: Theme.of(context).copyWith(
                dividerTheme: const DividerThemeData(color: Colors.transparent),
              ),
              child: DrawerHeader(
                  curve: Curves.bounceOut,
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide.none)),
                  child: Row(
                    children: [
                      InkWell(
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: const ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/100x100"),
                              fit: BoxFit.fill,
                            ),
                            shape: OvalBorder(
                              side: BorderSide(
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0x195A57FF),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Gap(12),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 40,
                                width: 120,
                                child: Text(
                                  '${dmsController.user.first_name} ${dmsController.user.last_name ?? ""}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const Gap(12),
                              Image.asset(
                                "assets/icons/candle.png",
                                height: 22,
                              )
                            ],
                          ),
                          Text(
                            dmsController.user.email ?? "",
                            style: const TextStyle(
                              color: Color(0xFFACACAC),
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const Text(
                            'Dock-Supervisor',
                            style: TextStyle(
                              color: Color(0xFFFF5789),
                              fontSize: 16,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            );
          }),
          Expanded(
              child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: Image.asset(
                  "assets/icons/grid-3.png",
                  height: 28,
                ),
                title: const Text(
                  'Dashboard',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFFA7A7A7),
                    fontSize: 16,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {},
              ),
              ExpansionTile(
                collapsedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                iconColor: Colors.white,
                collapsedIconColor: Colors.white,
                shape: Border.all(
                  color: const Color.fromARGB(255, 22, 22, 22),
                ),
                leading: Image.asset(
                  "assets/images/dockDrawer.png",
                  height: 28,
                ),
                title: const Text(
                  'Docks',
                  style: TextStyle(
                    color: Color(0xFFACACAC),
                    fontSize: 16,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.64,
                  ),
                ),
                children: [
                  CurvedLineConatainer(
                    title: "Dock Assign",
                    isShowextendedLine: false,
                    onTap: () {
                      Get.to(const DockAssignScreen(), id: dmsNavigationKey);
                    },
                  ),

                  // CurvedLineConatainer(
                  //   title: "Vehicle Queue",
                  //   isShowextendedLine: false,
                  // ),
                ],
              ),
              ExpansionTile(
                collapsedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                iconColor: Colors.white,
                collapsedIconColor: Colors.white,
                shape: Border.all(
                  color: const Color.fromARGB(255, 22, 22, 22),
                ),
                leading: Image.asset(
                  "assets/images/chamberDrawer.png",
                  height: 28,
                ),
                title: const Text(
                  'Chamber Variable Phase',
                  style: TextStyle(
                    color: Color(0xFFACACAC),
                    fontSize: 16,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.64,
                  ),
                ),
                children: [
                  CurvedLineConatainer(
                    title: "Chamber List",
                    isShowextendedLine: false,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          )),
          GetBuilder<DmsController>(builder: (dmsController) {
            if (dmsController.isOwner) {
              return const OwnerSwitchRoleButton();
            }

            if (dmsController.user.person_type != null) {
              if (dmsController.user.person_type!.isNotEmpty) {
                return DropdownButtonFormField2<String>(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 12),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  hint: const Text('Switch Role',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.64,
                      )),
                  items: dmsController.user.person_type!.map((item) {
                    return DropdownMenuItem<String>(
                      value: item["person_type"].toString(),
                      child: Text(
                        item["person_type"].toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.64,
                        ),
                      ),
                    );
                  }).toList(),
                  validator: (value) {
                    if (value == null) {
                      return 'Switch Role';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    if (value != null) {
                      dmsController.switchRole(value);
                    }
                  },
                  onSaved: (value) {},
                  buttonStyleData: const ButtonStyleData(
                    overlayColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  iconStyleData: const IconStyleData(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    iconSize: 24,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ).paddingSymmetric(horizontal: 12, vertical: 12);
              }
            }
            return Container();
          }),
          InkWell(
            onTap: () {
              Get.find<DmsController>().dmsLogout();
            },
            child: Container(
              height: 60,
              decoration: ShapeDecoration(
                color: const Color(0xFF383838),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/export.png",
                    height: 28,
                  ).paddingSymmetric(horizontal: 12),
                  const Text(
                    'Logout',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.64,
                    ),
                  )
                ],
              ),
            ).paddingSymmetric(
              horizontal: 12,
            ),
          ),
          const Gap(60),
        ],
      ),
    );
  }
}

class CurvedLineConatainer extends StatelessWidget {
  String title;
  bool isShowextendedLine;
  void Function()? onTap;

  CurvedLineConatainer(
      {super.key,
      required this.title,
      this.isShowextendedLine = true,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //  color: Color(0xFF918FFA),
      height: 40,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(30),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(12)),
                  color: isShowextendedLine ? Colors.grey : Colors.transparent,
                ),
                height: 60,
                width: 1,
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(12)),
                    color: Colors.transparent,
                    border: Border(
                        // right: BorderSide(width: 1, color: Colors.transparent),
                        //  top: BorderSide(width: 1, color: Colors.transparent),
                        bottom: BorderSide(width: 1, color: Colors.grey),
                        left: BorderSide(width: 1, color: Colors.grey))),
                height: 22,
                width: 22,
              ),
            ],
          ),
          const Gap(12),
          Expanded(
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: onTap,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFFA7A7A7),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.64,
                    ),
                  ),
                ],
              ).paddingOnly(left: 8),
            ),
          ),
          const Gap(12),
        ],
      ),
    );
  }
}
