import 'package:cached_network_image/cached_network_image.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Security%20Guard/Controllers/securityGuardController.dart';
import 'package:moolwmsstore/Security%20Guard/View/Indent/addTicket.dart';
import 'package:moolwmsstore/Security%20Guard/View/Indent/personList.dart';
import 'package:moolwmsstore/Security%20Guard/View/Indent/ticketList.dart';
import 'package:moolwmsstore/Security%20Guard/View/Labour/addLabour.dart';
import 'package:moolwmsstore/Security%20Guard/View/Labour/labourList.dart';
import 'package:moolwmsstore/Security%20Guard/View/Material/materialList.dart';
import 'package:moolwmsstore/Security%20Guard/View/Register/isUserCheckedIn.dart';
import 'package:moolwmsstore/Security%20Guard/View/Register/registrationList.dart';
import 'package:moolwmsstore/Security%20Guard/View/Register/verifyEmployeeByIdAndQrScan.dart';

import 'package:moolwmsstore/Security%20Guard/View/Vehicle/vehicleList.dart';
import 'package:moolwmsstore/Security%20Guard/View/Visitor/addVisitor.dart';
import 'package:moolwmsstore/Security%20Guard/View/Visitor/visitorList.dart';
import 'package:moolwmsstore/Security%20Guard/View/cc.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/smallCard.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/common/widgets/ownerSwitchRoleButton.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/globals.dart';
import 'package:qr_bar_code_scanner_dialog/qr_bar_code_scanner_dialog.dart';

class SecurityGuardDashBoard extends StatefulWidget {
  const SecurityGuardDashBoard({super.key});

  @override
  State<SecurityGuardDashBoard> createState() => _SecurityGuardDashBoardState();
}

class _SecurityGuardDashBoardState extends State<SecurityGuardDashBoard> {
  @override
  DateTime? _selectedDate;

  final _qrBarCodeScannerDialogPlugin = QrBarCodeScannerDialog();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        //  width: context.isPhone ? MediaQuery.sizeOf(context).width - 100 : 400,
        surfaceTintColor: const Color.fromARGB(255, 22, 22, 22),
        backgroundColor: Colors.black,
        child: Column(
          //padding: EdgeInsets.zero,
          children: [
            GetBuilder<SecurityGuardController>(
                builder: (securityGuardController) {
              return Theme(
                data: Theme.of(context).copyWith(
                  dividerTheme:
                      const DividerThemeData(color: Colors.transparent),
                ),
                child: DrawerHeader(
                    curve: Curves.bounceOut,
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide.none)),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            picker
                                .pickImage(
                                    source: ImageSource.gallery,
                                    imageQuality: 50)
                                .then((v) {
                              if (v != null) {
                                securityGuardController.updateProfilePic(v);
                              }
                            });
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                decoration: const ShapeDecoration(
                                  color: Colors.transparent,
                                  shape: OvalBorder(
                                    side: BorderSide(
                                      width: 1,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(112),
                                child: SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    imageUrl:
                                        securityGuardController.user.avatar ??
                                            "",
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(12),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '${securityGuardController.user.first_name} ${securityGuardController.user.last_name ?? ""}',
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w500,
                                    // //height: 0,
                                    // letterSpacing: -0.80,
                                  ),
                                ),
                                const Gap(12),
                                //  const Spacer(),
                                Image.asset(
                                  "assets/icons/candle.png",
                                  height: 22,
                                )
                              ],
                            ),
                            Text(
                              securityGuardController.user.email ?? "",
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 10,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w300,
                                // //height: 0,
                                // letterSpacing: -0.56,
                              ),
                            ),
                            const Text(
                              'Security Guard',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xFFFF5789),
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                // //height: 0,
                                // letterSpacing: -0.64,
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
                SizedBox(
                  height: 50,
                  child: GetBuilder<SecurityGuardController>(
                      builder: (securityGuardController) {
                    return DropdownButtonFormField2<WarehousesAcess>(
                      value: securityGuardController.currentlySelectedWarehouse,
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                            gapPadding: 0,
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 27, 23, 251),
                                width: 0.4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            gapPadding: 0,
                            borderSide: BorderSide(
                                color: Colors.white
                                    .withOpacity(0.30000001192092896),
                                width: 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      items:
                          securityGuardController.user.warehouse!.map((item) {
                        return DropdownMenuItem<WarehousesAcess>(
                          value: item,
                          child: Row(
                            children: [
                              Text(
                                item.warehouse_name ?? "--",
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
                          securityGuardController.changeDashBoardWarehouse(
                              warehouse: value);
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
                    "assets/images/registerDrawer.png",
                    height: 28,
                  ),
                  title: const Text(
                    'Register',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      // //height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                  children: [
                    CurvedLineConatainer(
                      title: "Regiter ",
                      onTap: () {
                        Get.to(const RegistrationTypeOptions(),
                            id: securityGuardNavigation);
                      },
                    ),
                    CurvedLineConatainer(
                      title: "Register List",
                      isShowextendedLine: false,
                      onTap: () {
                        Get.to(const RegistrationListScreen(),
                            id: securityGuardNavigation);
                      },
                    ),
                    // CurvedLineConatainer(title: "dcdc"),
                    // CurvedLineConatainer(
                    //   title: "dcdc",
                    //   isShowextendedLine: false,
                    //     ),
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
                    "assets/images/indent.png",
                    height: 28,
                  ),
                  title: const Text(
                    'Indents',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      // //height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                  children: [
                    CurvedLineConatainer(
                      title: "Initiate Indent",
                      onTap: () {
                        Get.to(const AddTicketScreen(),
                            id: securityGuardNavigation);
                      },
                    ),
                    CurvedLineConatainer(
                      title: "Indent List",
                      isShowextendedLine: false,
                      onTap: () {
                        Get.to(const TicketListScreen(),
                            id: securityGuardNavigation);
                      },
                    ),
                    // CurvedLineConatainer(title: "dcdc"),
                    // CurvedLineConatainer(
                    //   title: "dcdc",
                    //   isShowextendedLine: false,
                    //     ),
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
                    "assets/images/visitorDrawer.png",
                    height: 28,
                  ),
                  title: const Text(
                    'Visitors',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      // height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                  children: [
                    CurvedLineConatainer(
                      title: "Add Visitor",
                      onTap: () {
                        Get.to(AddVistorBySecurityGuard(),
                            id: securityGuardNavigation);
                      },
                    ),
                    CurvedLineConatainer(
                      title: "Visitor List",
                      isShowextendedLine: false,
                      onTap: () {
                        Get.to(const VisitorListScreen(),
                            id: securityGuardNavigation);
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
                    "assets/images/personDrawer.png",
                    height: 28,
                  ),
                  title: const Text(
                    'Person',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      // height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                  children: [
                    CurvedLineConatainer(
                      title: "Add Person",
                      onTap: () {
                        Get.to(AddVistorBySecurityGuard(),
                            id: securityGuardNavigation);
                      },
                    ),
                    CurvedLineConatainer(
                      title: "Person List",
                      isShowextendedLine: false,
                      onTap: () {
                        Get.to(const MaterialListScreen(),
                            id: securityGuardNavigation);
                      },
                    ),
                    // CurvedLineConatainer(title: "dcdc"),
                    // CurvedLineConatainer(
                    //   title: "dcdc",
                    //   isShowextendedLine: false,
                    //     ),
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
                    "assets/images/labourDrawer.png",
                    height: 28,
                  ),
                  title: const Text(
                    'Labour',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      // height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                  children: [
                    CurvedLineConatainer(
                      title: "Add Labour",
                      onTap: () {
                        Get.to(AddLabourBySecurityGuard(),
                            id: securityGuardNavigation);
                      },
                    ),
                    CurvedLineConatainer(
                      title: "Labour List",
                      isShowextendedLine: false,
                      onTap: () {
                        Get.to(const LabourListScreen(),
                            id: securityGuardNavigation);
                      },
                    ),
                  ],
                ),
              ],
            )),
            GetBuilder<SecurityGuardController>(
                builder: (securityGuardController) {
              if (securityGuardController.isOwner) {
                return const OwnerSwitchRoleButton();
              }
              if (securityGuardController.user.person_type != null) {
                if (securityGuardController.user.person_type!.isNotEmpty) {
                  if (securityGuardController.user.person_type!.length == 1) {
                    return Container();
                  }

                  return DropdownButtonFormField2<String>(
                    //  isExpanded: true,

                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 12),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // Add more decoration..
                    ),
                    hint: const Text('Switch Role',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          //height: 0,
                          letterSpacing: -0.64,
                        )),
                    items:
                        securityGuardController.user.person_type!.map((item) {
                      return DropdownMenuItem<String>(
                        value: item["person_type"].toString(),
                        child: Text(
                          item["person_type"].toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            //height: 0,
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
                        securityGuardController.switchRole(value);
                      }
                      // Logger().i(value);
                      //Do something when selected item is changed.
                    },
                    onSaved: (value) {
                      // selectedValue = value.toString();
                    },
                    buttonStyleData: const ButtonStyleData(
                      //decoration: BoxDecoration(color: Colors.white),
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
                Get.find<SecurityGuardController>().logout();
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
                        //height: 0,
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
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Security Guard Dashboard",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: GetBuilder<SecurityGuardController>(
            builder: (securityGuardController) {
          return Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: GetBuilder<SecurityGuardController>(
                      builder: (securityGuardController) {
                    return InkWell(
                      onTap: () {
                        showCustomDateRangePicker(
                          context,
                          dismissible: true,
                          minimumDate:
                              DateTime.now().subtract(const Duration(days: 30)),
                          maximumDate: DateTime.now(),
                          endDate: securityGuardController.dashBoardEndDate,
                          startDate: securityGuardController.dashBoardStartDate,
                          backgroundColor: Colors.black,
                          primaryColor: const Color(0xFF6A68FF),
                          onApplyClick: (start, end) {
                            securityGuardController.changeDashBoardDate(
                                start: start, end: end);
                          },
                          onCancelClick: () {},
                        );
                      },
                      child: Container(
                        height: 30,
                        decoration: ShapeDecoration(
                          color: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color:
                                  Colors.white.withOpacity(0.30000001192092896),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x0C000000),
                              blurRadius: 4,
                              offset: Offset(3, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          children: [
                            const Gap(8),
                            const Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xFFACACAC),
                              size: 20,
                            ),
                            Expanded(
                              child: Text(
                                "${AppConstants.dayMonrhormatter.format(securityGuardController.dashBoardStartDate)} - ${AppConstants.dayMonrhormatter.format(securityGuardController.dashBoardEndDate)}",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                                maxLines: 1,
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFFACACAC),
                              size: 20,
                            ),
                            const Gap(8),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmallCard(
                  cardColor: const Color(0xFF0070F2),
                  imagePath: "assets/images/ticket-star.png",
                  title: 'Ticket',
                  onTap: () {
                    Get.to(const TicketListScreen(),
                        id: securityGuardNavigation);
                  },
                ),
                const Gap(8),
                SmallCard(
                  cardColor: const Color(0xFFCC00DC),
                  imagePath: "assets/images/visitor_user.png",
                  title: 'Visitor',
                  onTap: () {
                    Get.to(const VisitorListScreen(),
                        id: securityGuardNavigation);
                  },
                ),
                const Gap(8),
                SmallCard(
                  cardColor: const Color(0xFF5D36FF),
                  imagePath: "assets/images/register_user.png",
                  title: 'Register',
                  onTap: () {
                    Get.to(const RegistrationListScreen(),
                        id: securityGuardNavigation);
                  },
                ),
                const Gap(8),
                SmallCard(
                  cardColor: const Color(0xFFDF127B),
                  imagePath: "assets/images/scan_barcode.png",
                  title: 'Scan QR',
                  onTap: () {
                    _qrBarCodeScannerDialogPlugin.getScannedQrBarCode(
                        context: context,
                        onCode: (code) {
                          String embededCode = "";
                          String type = "";
                          if (code!.contains("TYPE")) {
                            code.split(",").forEach((v) {
                              List x =
                                  v.split(":").map((e) => e.trim()).toList();

                              Logger().i(x[0] + x[1]);

                              if (x[0] == "TYPE") {
                                type = x[1];
                              }
                              if (x[0] == "CODE") {
                                embededCode = x[1];
                              }
                            });

                            if (type == "VISITOR") {
                              Get.to(const IsUserCheckedInScreen(),
                                  id: securityGuardNavigation);
                            }
                          } else {
                            Snacks.redSnack(
                                "This Qr does not belong to this moolcode");
                          }
                        });
                  },
                ),
              ],
            ),
            const Gap(12),
            Row(children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        // _showPopup(context);
                        Get.to(const CreateTicketPopUp(),
                            id: securityGuardNavigation);
                      },
                      child: Container(
                        height: 106,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF5A57FF),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0x3FFAF9FF)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                top: 40.0,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Initiate\n',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                      height: 0.05,
                                    ),
                                  ),
                                  Gap(20),
                                  Text(
                                    'Ticket\n',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w600,
                                      height: 0.04,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/ticketVector.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(8),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    Get.to(AddVistorBySecurityGuard(),
                        id: securityGuardNavigation);
                  },
                  child: Container(
                    height: 106,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF5A57FF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x3FFAF9FF)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 40.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Add\n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                  height: 0.05,
                                ),
                              ),
                              Gap(20),
                              Text(
                                'Visitor\n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w600,
                                  height: 0.04,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/visitorVector.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(8),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    Get.to(AddLabourBySecurityGuard(),
                        id: securityGuardNavigation);
                  },
                  child: Container(
                    height: 106,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF5A57FF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x3FFAF9FF)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 40.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Add\n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                  height: 0.05,
                                ),
                              ),
                              Gap(20),
                              Text(
                                'Labour\n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w600,
                                  height: 0.04,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/visitorVector.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            const Gap(8),
            InkWell(
              onTap: () {
                Get.to(const MaterialListScreen(), id: securityGuardNavigation);
              },
              child: Container(
                width: double.infinity,
                // height: 134,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: const Alignment(1.00, 0.00),
                    end: const Alignment(-1, 0),
                    colors: [
                      Colors.white.withOpacity(0.10000000149011612),
                      Colors.white.withOpacity(0.10000000149011612)
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: GetBuilder<SecurityGuardController>(initState: (d) {
                  Get.find<SecurityGuardController>().getMaterialCount();
                }, builder: (context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Material',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w600,
                          //height: 0,
                          letterSpacing: -0.72,
                        ),
                      ).paddingOnly(top: 20, left: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              securityGuardController.isGetMaterialCountLoading
                                  ? LoadingAnimationWidget.staggeredDotsWave(
                                      color: Colors.white,
                                      size: 20,
                                    )
                                  : Text(
                                      '${securityGuardController.materialCountIn}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                              const Text(
                                'Check In',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  //height: 0,
                                  letterSpacing: -0.56,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              securityGuardController.isGetMaterialCountLoading
                                  ? LoadingAnimationWidget.staggeredDotsWave(
                                      color: Colors.white,
                                      size: 20,
                                    )
                                  : Text(
                                      '${securityGuardController.materialCountOut}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                              const Text(
                                'Check Out',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  //height: 0,
                                  letterSpacing: -0.56,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 92,
                            height: 90,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/material.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                }),
              ),
            ).paddingSymmetric(vertical: 8),
            InkWell(
              onTap: () {
                Get.to(const VehicleListScreen(), id: securityGuardNavigation);
              },
              child: Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: const Alignment(1.00, 0.00),
                    end: const Alignment(-1, 0),
                    colors: [
                      Colors.white.withOpacity(0.10000000149011612),
                      Colors.white.withOpacity(0.10000000149011612)
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: GetBuilder<SecurityGuardController>(initState: (d) {
                  Get.find<SecurityGuardController>().getPersonCount();
                }, builder: (context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Vehicle',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w600,
                          //height: 0,
                          letterSpacing: -0.72,
                        ),
                      ).paddingOnly(top: 20, left: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              securityGuardController.isGetVehicleCountLoading
                                  ? LoadingAnimationWidget.staggeredDotsWave(
                                      color: Colors.white,
                                      size: 20,
                                    )
                                  : Text(
                                      '${securityGuardController.vehicleCountIn}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                              const Text(
                                'Vehicle In',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  //height: 0,
                                  letterSpacing: -0.56,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              securityGuardController.isGetVehicleCountLoading
                                  ? LoadingAnimationWidget.staggeredDotsWave(
                                      color: Colors.white,
                                      size: 20,
                                    )
                                  : Text(
                                      '${securityGuardController.vehicleCountOut}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                              const Text(
                                'Vehicle Out',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  //height: 0,
                                  letterSpacing: -0.56,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 120,
                            height: 90,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/vehicle.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                }),
              ),
            ).paddingSymmetric(vertical: 8),
            InkWell(
              onTap: () {
                Get.to(const PersonsListScreen(), id: securityGuardNavigation);
              },
              child: Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: const Alignment(1.00, 0.00),
                    end: const Alignment(-1, 0),
                    colors: [
                      Colors.white.withOpacity(0.10000000149011612),
                      Colors.white.withOpacity(0.10000000149011612)
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: GetBuilder<SecurityGuardController>(initState: (d) {
                  Get.find<SecurityGuardController>().getVehicleCount();
                }, builder: (context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Person',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.72,
                        ),
                      ).paddingOnly(top: 20, left: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              securityGuardController.isGetPersonCountLoading
                                  ? LoadingAnimationWidget.staggeredDotsWave(
                                      color: Colors.white,
                                      size: 20,
                                    )
                                  : Text(
                                      '${securityGuardController.personCountIn}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                              const Text(
                                'Person In',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.56,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              securityGuardController.isGetPersonCountLoading
                                  ? LoadingAnimationWidget.staggeredDotsWave(
                                      color: Colors.white,
                                      size: 20,
                                    )
                                  : Text(
                                      '${securityGuardController.personCountOut}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                              const Text(
                                'Person Out',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.56,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 92,
                            height: 90,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/person.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                }),
              ),
            ).paddingSymmetric(vertical: 8),
            InkWell(
              onTap: () {
                Get.to(const VisitorListScreen(), id: securityGuardNavigation);
              },
              child: Container(
                width: double.infinity,
                height: 140,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: const Alignment(1.00, 0.00),
                    end: const Alignment(-1, 0),
                    colors: [
                      Colors.white.withOpacity(0.10000000149011612),
                      Colors.white.withOpacity(0.10000000149011612)
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: GetBuilder<SecurityGuardController>(initState: (d) {
                  Get.find<SecurityGuardController>().getVisitorCount();
                }, builder: (context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Visitor',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.72,
                        ),
                      ).paddingOnly(top: 20, left: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              securityGuardController.isGetVisitorCountLoading
                                  ? LoadingAnimationWidget.staggeredDotsWave(
                                      color: Colors.white,
                                      size: 20,
                                    )
                                  : Text(
                                      '${securityGuardController.visitorCountIn}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                              const Text(
                                'Visitor In',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.56,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              securityGuardController.isGetVisitorCountLoading
                                  ? LoadingAnimationWidget.staggeredDotsWave(
                                      color: Colors.white,
                                      size: 20,
                                    )
                                  : Text(
                                      '${securityGuardController.visitorCountOut}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                              const Text(
                                'Visitor Out',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.56,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 92,
                            height: 90,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/visitor.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                }),
              ),
            ).paddingSymmetric(vertical: 8),
            InkWell(
              onTap: () {
                Get.to(const LabourListScreen(), id: securityGuardNavigation);
              },
              child: Container(
                width: double.infinity,
                height: 140,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: const Alignment(1.00, 0.00),
                    end: const Alignment(-1, 0),
                    colors: [
                      Colors.white.withOpacity(0.10000000149011612),
                      Colors.white.withOpacity(0.10000000149011612)
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: GetBuilder<SecurityGuardController>(initState: (d) {
                  Get.find<SecurityGuardController>().getVisitorCount();
                }, builder: (context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Labour',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.72,
                        ),
                      ).paddingOnly(top: 20, left: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              securityGuardController.isGetVisitorCountLoading
                                  ? LoadingAnimationWidget.staggeredDotsWave(
                                      color: Colors.white,
                                      size: 20,
                                    )
                                  : Text(
                                      '${securityGuardController.visitorCountIn}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                              const Text(
                                'Labour In',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.56,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              securityGuardController.isGetVisitorCountLoading
                                  ? LoadingAnimationWidget.staggeredDotsWave(
                                      color: Colors.white,
                                      size: 20,
                                    )
                                  : Text(
                                      '${securityGuardController.visitorCountOut}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                              const Text(
                                'Labour Out',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.56,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 92,
                            height: 90,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/labour.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                }),
              ),
            ).paddingSymmetric(vertical: 8),
            const Gap(20)
          ]);
        }),
      ).paddingSymmetric(
          horizontal: Dimensions.horizontalBodyPad,
          vertical: Dimensions.vericalBodyPad),
    );
  }
}

class CreateTicketPopUp extends StatefulWidget {
  const CreateTicketPopUp({super.key});

  @override
  State<CreateTicketPopUp> createState() => _CreateTicketPopUpState();
}

class _CreateTicketPopUpState extends State<CreateTicketPopUp> {
  @override
  bool isCheckedMaterial = false;

  bool isCheckedVehicle = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Container(
              width: 358,
              height: 292,
              decoration: ShapeDecoration(
                color: const Color(0xFFFAF9FF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  const Gap(20),
                  const Center(
                    child: Text(
                      'Create Ticket',
                      style: TextStyle(
                        color: Color(0xFF5A57FF),
                        fontSize: 18,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Gap(20),
                  Container(
                    width: 283,
                    height: 52,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x195A57FF)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/car.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Gap(10),
                      const Text(
                        'Do you have a Vehicle?',
                        style: TextStyle(
                          color: Color(0xFF353535),
                          fontSize: 18,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Gap(5),
                      Checkbox(
                        value: isCheckedVehicle,
                        activeColor: const Color(0xFF5A57FF),
                        onChanged: (value) {
                          setState(() {
                            isCheckedVehicle = value!;
                          });
                        },
                        side: const BorderSide(
                          color: Colors.grey,
                          width: 1.5,
                        ),
                      ),
                    ]),
                  ),
                  const Gap(20),
                  Container(
                    width: 283,
                    height: 52,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x195A57FF)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/box.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Gap(10),
                      const Text(
                        'Do you have Material?',
                        style: TextStyle(
                          color: Color.fromRGBO(53, 53, 53, 1),
                          fontSize: 18,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Gap(5),
                      Checkbox(
                        value: isCheckedMaterial,
                        activeColor: const Color(0xFF5A57FF),
                        onChanged: (value) {
                          setState(() {
                            isCheckedMaterial = value!;
                          });
                        },
                        side: const BorderSide(
                          color: Colors.grey,
                          width: 1.5,
                        ),
                      ),
                    ]),
                  ),
                  const Gap(20),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      if (isCheckedVehicle || isCheckedMaterial) {
                        Get.to(const AddTicketScreen(),
                            id: securityGuardNavigation);
                      } else {
                        Get.to(AddVistorBySecurityGuard(),
                            id: securityGuardNavigation);
                      }
                    },
                    child: Container(
                      width: 282,
                      height: 45,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF5A57FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Proceed',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: const <Widget>[],
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
      //  color: Colors.amber,
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
