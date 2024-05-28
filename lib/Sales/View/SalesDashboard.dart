import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:moolwmsstore/Sales/View/Ticket/createticket.dart';
import 'package:moolwmsstore/Sales/View/Ticket/ticketList.dart';
import 'package:moolwmsstore/Sales/View/Visiitors/addVistor.dart';
import 'package:moolwmsstore/Sales/View/Visiitors/visitorsList.dart';
import 'package:moolwmsstore/Sales/View/addCompany.dart';
import 'package:moolwmsstore/Sales/View/companyList.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/common/widgets/ownerSwitchRoleButton.dart';
import 'package:moolwmsstore/utils/globals.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

////@RoutePage()
class SalesDashboard extends StatelessWidget {
  SalesDashboard({super.key});

  final DateFormat formatter = DateFormat('yyyy-MM-dd');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232323),
      drawer: Drawer(
        //  width: context.isPhone ? MediaQuery.sizeOf(context).width - 100 : 400,
        surfaceTintColor: const Color.fromARGB(255, 22, 22, 22),
        backgroundColor: const Color.fromARGB(255, 22, 22, 22),
        child: Column(
          //padding: EdgeInsets.zero,
          children: [
            // GetBuilder<OwnerController>(builder: (ownerController) {
            //   return
            Theme(
              data: Theme.of(context).copyWith(
                dividerTheme: const DividerThemeData(color: Colors.transparent),
              ),
              child: GetBuilder<SalesController>(builder: (salesController) {
                return DrawerHeader(
                    curve: Curves.bounceOut,
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide.none)),
                    child: Row(
                      children: [
                        Container(
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
                        const Gap(12),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  '',
                                  // '${ownerController.user.first_name} ${ownerController.user.last_name ?? ""}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
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
                            const Text(
                              // ownerController.user.email ?? "",
                              '',
                              style: TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w300,
                                // //height: 0,
                                // letterSpacing: -0.56,
                              ),
                            ),
                            const Text(
                              'Sales',
                              style: TextStyle(
                                color: Color(0xFFFF5789),
                                fontSize: 16,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                // //height: 0,
                                // letterSpacing: -0.64,
                              ),
                            )
                          ],
                        )
                      ],
                    ));
              }),
            ),
            // }),
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
                    "assets/icons/Indent.png",
                    height: 28,
                    color: HexColor("#ACACAC"),
                  ),
                  title: const Text(
                    'Indent',
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
                      title: "Create Indent",
                      onTap: () {
                        Get.to(const Createticket(), id: salesNavigationKey);
                      },
                    ),
                    CurvedLineConatainer(
                      title: "View Indent List",
                      isShowextendedLine: false,
                      onTap: () {
                        Get.to(const TicketList(), id: salesNavigationKey);
                        // Get.find<OwnerController>().setloadingtrue();
                        // Get.to(const WarehouseList(), id: ownerNavigationKey);
                        // WarehouseList
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
                    // "assets/icons/Staff Profile Icons (R).png",PO Icon (R).png
                    "assets/icons/Company Icon (R).png",
                    color: HexColor("#ACACAC"),
                    height: 28,
                  ),
                  title: const Text(
                    'Company',
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
                      title: "Add Company",
                      onTap: () {
                        Get.to(AddCompany(), id: salesNavigationKey);
                      },
                    ),
                    CurvedLineConatainer(
                      title: "Company List",
                      isShowextendedLine: false,
                      onTap: () {
                        Get.to(const CompanyList(), id: salesNavigationKey);
                        // Get.find<OwnerController>().setloadingtrue();
                        // Get.to(const WarehouseList(), id: ownerNavigationKey);
                        // WarehouseList
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
                    // "assets/icons/Staff Profile Icons (R).png",PO Icon (R).png
                    "assets/icons/visitors.png",
                    color: HexColor("#ACACAC"),
                    height: 28,
                  ),
                  title: const Text(
                    'Visitor',
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
                      title: "Add Visitor",
                      onTap: () {
                        Get.to(AddVistor(), id: salesNavigationKey);
                      },
                    ),
                    CurvedLineConatainer(
                      title: "Visitor List",
                      isShowextendedLine: false,
                      onTap: () {
                        Get.to(const VisitorsList(), id: salesNavigationKey);
                        // Get.find<OwnerController>().setloadingtrue();
                        // Get.to(const WarehouseList(), id: ownerNavigationKey);
                        // WarehouseList
                      },
                    ),
                    // CurvedLineConatainer(title: "dcdc"),
                    // CurvedLineConatainer(
                    //   title: "dcdc",
                    //   isShowextendedLine: false,
                    //     ),
                  ],
                ),
              ],
            )),
            GetBuilder<SalesController>(builder: (salesController) {
              if (salesController.isOwner) {
                return const OwnerSwitchRoleButton();
              }
              if (salesController.user.person_type != null) {
                if (salesController.user.person_type!.isNotEmpty) {
                  if (salesController.user.person_type!.length > 1) {
                    return DropdownButtonFormField2<String>(
                      //  isExpanded: true,

                      decoration: InputDecoration(
                        // Add Horizontal padding using menuItemStyleData.padding so it matches
                        // the menu padding when button's width is not specified.
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 12),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
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
                      items: salesController.user.person_type!.map((item) {
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
                          salesController.switchRole(value);
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
              }
              return Container();
            }),

            InkWell(
              onTap: () {
                Get.find<SalesController>().saleLogout();
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
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: false,
        //  backgroundColor: const Color(0xFF232323),
        foregroundColor: Colors.white,
        title: const Text(
          'Sales Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w500,
            //height: 0,
            letterSpacing: -0.80,
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Get.to(const Createticket(), id: salesNavigationKey);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 70,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(-1.00, 0.00),
                        end: Alignment(1, 0),
                        colors: [Color(0xFF5A57FF), Color(0xFF8C8AFF)],
                      ),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFF918FFA)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Create Indent',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Get.to(const TicketList(), id: salesNavigationKey);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 70,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(-1.00, 0.00),
                        end: Alignment(1, 0),
                        colors: [Color(0xFFFF5789), Color(0xFFFF97B6)],
                      ),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFFF85A9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'View Indents',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const Gap(12),
          GetBuilder<SalesController>(initState: (state) {
            Get.find<SalesController>().salesDashBoardApi();
          }, builder: (salesController) {
            Future<void> selectDate(BuildContext context) async {
              // await showDatePicker(
              //           context: context,
              //           initialDate: DateTime.now(),
              //           firstDate: DateTime(2000),
              //           lastDate: DateTime(2101),
              //         );

              showOmniDateTimePicker(
                theme: ThemeData(
                    primaryColor: const Color(0xFF5A57FF),
                    textTheme: const TextTheme(
                      displayLarge: TextStyle(color: Colors.black),
                      displayMedium: TextStyle(color: Colors.black),
                      displaySmall: TextStyle(color: Colors.black),
                      headlineLarge: TextStyle(color: Colors.black),
                      headlineMedium: TextStyle(color: Colors.black),
                      headlineSmall: TextStyle(color: Colors.black),
                      titleLarge: TextStyle(color: Colors.black),
                      titleMedium: TextStyle(color: Colors.black),
                      titleSmall: TextStyle(color: Colors.black),
                      bodyLarge: TextStyle(color: Colors.black),
                      bodyMedium: TextStyle(color: Colors.black),
                      bodySmall: TextStyle(color: Colors.black),
                      labelLarge: TextStyle(color: Colors.black),
                      labelMedium: TextStyle(color: Colors.black),
                      labelSmall: TextStyle(color: Colors.black),
                    )),
                context: context,
                initialDate: salesController.checkIndateTime ?? DateTime.now(),
                firstDate: DateTime(1600).subtract(const Duration(days: 3652)),
                lastDate: DateTime.now().add(
                  const Duration(days: 3652),
                ),
                is24HourMode: false,
                type: OmniDateTimePickerType.date,
                isShowSeconds: false,
                minutesInterval: 1,
                secondsInterval: 1,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                constraints: const BoxConstraints(
                  maxWidth: 350,
                  maxHeight: 650,
                ),
                transitionBuilder: (context, anim1, anim2, child) {
                  return FadeTransition(
                    opacity: anim1.drive(
                      Tween(
                        begin: 0,
                        end: 1,
                      ),
                    ),
                    child: child,
                  );
                },
                transitionDuration: const Duration(milliseconds: 200),
                barrierDismissible: true,
                selectableDayPredicate: (dateTime) {
                  // Disable 25th Feb 2023
                  if (dateTime == DateTime(2023, 2, 25)) {
                    return false;
                  } else {
                    return true;
                  }
                },
              ).then((v) {
                if (v != null) {
                  if (v != salesController.dashBoardSelectedDate) {
                    salesController.dashBoardSelectedDate = v;
                    salesController.salesDashBoardApi();
                  }
                }
              });
            }

            return InkWell(
              onTap: () {
                selectDate(context);
              },
              child: Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: Colors.white.withOpacity(0.30000001192092896),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  formatter.format(salesController.dashBoardSelectedDate),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    // height: 0,
                    // letterSpacing: -0.56,
                  ),
                ).paddingAll(12),
              ).paddingSymmetric(vertical: 12),
            );
          }),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
            height: 180,
            decoration: ShapeDecoration(
              color: const Color(0xFF303030),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    width: 0.3, color: Color.fromARGB(255, 191, 190, 190)),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                    // flex: 2,
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Indents',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(child: Container()),
                    GetBuilder<SalesController>(builder: (salesController) {
                      if (salesController.loading) {
                        return LoadingAnimationWidget.staggeredDotsWave(
                          color: Colors.white,
                          size: 80,
                        );
                      }
                      return Text(
                        "${salesController.dashboardData["TicketCount"] ?? "--"}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                    const Text(
                      'Indents Created',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )),
                Expanded(
                  //  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/icons/handyman.png",
                        height: 114,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ).paddingSymmetric(vertical: 12),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
            height: 180,
            decoration: ShapeDecoration(
              color: const Color(0xFF303030),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    width: 0.3, color: Color.fromARGB(255, 191, 190, 190)),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                    // flex: 2,
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Visitor',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(child: Container()),
                    Container(
                      width: 200,
                      height: 36,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Visitor In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          const SizedBox(width: 28),
                          GetBuilder<SalesController>(
                              builder: (salesController) {
                            if (salesController.loading) {
                              return LoadingAnimationWidget.staggeredDotsWave(
                                color: Colors.white,
                                size: 30,
                              );
                            }
                            return Text(
                              "${salesController.dashboardData["VisitorCount"]["InCount"] ?? "--"}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 36,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Visitor Out',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          const SizedBox(width: 28),
                          GetBuilder<SalesController>(
                              builder: (salesController) {
                            if (salesController.loading) {
                              return LoadingAnimationWidget.staggeredDotsWave(
                                color: Colors.white,
                                size: 30,
                              );
                            }
                            return Text(
                              "${salesController.dashboardData["VisitorCount"]["OutCount"] ?? "--"}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                  ],
                )),
                Expanded(
                  //  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/icons/karamChari.png",
                        height: 144,
                      ).paddingOnly(right: 10),
                    ],
                  ),
                )
              ],
            ),
          ).paddingSymmetric(vertical: 12),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
            height: 180,
            decoration: ShapeDecoration(
              color: const Color(0xFF303030),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    width: 0.3, color: Color.fromARGB(255, 191, 190, 190)),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                    // flex: 2,
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Company',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(child: Container()),
                    GetBuilder<SalesController>(builder: (salesController) {
                      if (salesController.loading) {
                        return LoadingAnimationWidget.staggeredDotsWave(
                          color: Colors.white,
                          size: 80,
                        );
                      }
                      return Text(
                        "${salesController.dashboardData["CompanyCount"] ?? "--"}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      );
                    }),
                    const Text(
                      'Companies Added',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )),
                Expanded(
                  //  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/icons/pta nhi.png",
                        height: 144,
                      ).paddingOnly(right: 10),
                    ],
                  ),
                )
              ],
            ),
          ).paddingSymmetric(vertical: 12),
        ],
      ).paddingSymmetric(vertical: 12, horizontal: 16),
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
                      //height: 0,
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
