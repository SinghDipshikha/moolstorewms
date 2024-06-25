import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Customer/Controller/customerController.dart';
import 'package:moolwmsstore/Dock%20Supervisor/View/Dock%20Assign/dockAssign.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsController.dart';
import 'package:moolwmsstore/common/widgets/profileAvatar.dart';
import 'package:moolwmsstore/utils/globals.dart';

class CustomerDrawer extends StatelessWidget {
  const CustomerDrawer({super.key});

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
                      ProfileAvatar(
                          imageUrl: dmsController.user.avatar,
                          initialWidget:
                              Image.asset("assets/icons/employeeAvater.png"),
                          onImageUploaded: (v) {
                            dmsController.updateProfilePic(v);
                          }),
                      const Gap(12),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '${dmsController.user.first_name} ${dmsController.user.last_name ?? ""}',
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
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
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Color(0xFFACACAC),
                              fontSize: 10,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const Text(
                            'Customer',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0xFFFF5789),
                              fontSize: 12,
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
          SizedBox(
            height: 50,
            child: GetBuilder<CustomerController>(builder: (dmsController) {
              return DropdownButtonFormField2<WarehousesAcess>(
                value: dmsController.currentlySelectedWarehouse,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      gapPadding: 0,
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 27, 23, 251), width: 0.4),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      gapPadding: 0,
                      borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.30000001192092896),
                          width: 1),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                hint: const Text(
                  'Select Warehouses',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                items: dmsController.user.warehouse!.map((item) {
                  return DropdownMenuItem<WarehousesAcess>(
                    value: item,
                    child: Row(
                      children: [
                        Text(
                          item.warehouse_name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  );
                }).toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Required';
                  }
                  return null;
                },
                onChanged: (value) {
                  if (value != null) {
                    dmsController.changeDashBoardWarehouse(warehouse: value);
                    if (context.isPhone) {
                      Navigator.of(context).pop();
                    }
                  }
                },
                onSaved: (value) {},
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.zero,
                  overlayColor: WidgetStatePropertyAll(Colors.white),
                ),
                iconStyleData: IconStyleData(
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ).paddingOnly(right: 10),
                  iconSize: 24,
                ),
                dropdownStyleData: DropdownStyleData(
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 8)),
              );
            }),
          ).paddingSymmetric(horizontal: 8),
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
                  'Indent',
                  style: TextStyle(
                    color: Color(0xFFACACAC),
                    fontSize: 16,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.64,
                  ),
                ),
                children: [
                  CurvedLineContainer(
                    title: "Create Indent",
                    isShowextendedLine: false,
                    onTap: () {
                      if (context.isPhone) {
                        Navigator.of(context).pop();
                      }
                      Get.to(const CustomToggleWidget(), id: dmsNavigationKey);
                    },
                  ),
                  CurvedLineContainer(
                    title: "Indent List",
                    isShowextendedLine: false,
                    onTap: () {
                      if (context.isPhone) {
                        Navigator.of(context).pop();
                      }
                      Get.to(const CustomToggleWidget(), id: dmsNavigationKey);
                    },
                  ),
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
                  'Chamber',
                  style: TextStyle(
                    color: Color(0xFFACACAC),
                    fontSize: 16,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.64,
                  ),
                ),
                children: [
                  CurvedLineContainer(
                    title: "Chamber List",
                    isShowextendedLine: false,
                    onTap: () {
                      if (context.isPhone) {
                        Navigator.of(context).pop();
                      }
                    },
                  ),
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
                  'Material',
                  style: TextStyle(
                    color: Color(0xFFACACAC),
                    fontSize: 16,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.64,
                  ),
                ),
                children: [
                  CurvedLineContainer(
                    title: "Material",
                    isShowextendedLine: false,
                    onTap: () {
                      if (context.isPhone) {
                        Navigator.of(context).pop();
                      }
                    },
                  ),
                ],
              ),
            ],
          )),
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

class CurvedLineContainer extends StatelessWidget {
  String title;
  bool isShowextendedLine;
  void Function()? onTap;

  CurvedLineContainer(
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
