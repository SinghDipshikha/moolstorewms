import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/View/demo.dart';
import 'package:moolwmsstore/Hr/View/staffList.dart';
import 'package:moolwmsstore/Hr/View/viewAttendane.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/View/widget/commonDropDown.dart';
import 'package:moolwmsstore/common/widgets/ownerSwitchRoleButton.dart';
import 'package:moolwmsstore/utils/globals.dart';

class HrDashboard extends StatefulWidget {
  const HrDashboard({super.key});

  @override
  State<HrDashboard> createState() => _HrDashboardState();
}

class _HrDashboardState extends State<HrDashboard> {
  @override
  List<String> shiftsDataList = [
    'Shift1',
    'Shift2',
    'Shift3',
  ];
  String? selectedShift = 'Shift1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232323),
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Human Resouce Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
            ////height: 0,
          ),
        ),
      ),
      drawer: Drawer(
        //  width: context.isPhone ? MediaQuery.sizeOf(context).width - 100 : 400,
        surfaceTintColor: const Color.fromARGB(255, 22, 22, 22),
        backgroundColor: const Color.fromARGB(255, 22, 22, 22),
        child: Column(
          //padding: EdgeInsets.zero,
          children: [
            GetBuilder<HRController>(builder: (hrController) {
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
                                    '${hrController.user.first_name} ${hrController.user.last_name ?? ""}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w500,
                                      // //height: 0,
                                      // letterSpacing: -0.80,
                                    ),
                                    overflow: TextOverflow.ellipsis,
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
                              hrController.user.email ?? "",
                              style: const TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w300,

                                // //height: 0,
                                // letterSpacing: -0.56,
                              ),
                            ),
                            const Text(
                              'Human Resource',
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
                    "assets/images/peopleVector.png",
                    height: 28,
                  ),
                  title: const Text(
                    'Staff',
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
                    // CurvedLineConatainer(
                    //   title: "Add Staff",
                    //   onTap: () {},
                    // ),
                    CurvedLineConatainer(
                      title: "View Staff",
                      isShowextendedLine: false,
                      onTap: () {
                        Get.to(const HrEmployeeList(), id: hrNavigationKey);
                      },
                    ),
                    // CurvedLineConatainer(title: "dcdc"),
                    // CurvedLineConatainer(
                    //   title: "dcdc",
                    //   isShowextendedLine: false,
                    //     ),
                  ],
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/images/messageVector.png",
                    height: 28,
                  ),
                  title: const Text(
                    'Messages',
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
                ListTile(
                  leading: Image.asset(
                    "assets/images/calenderVector.png",
                    height: 28,
                  ),
                  title: const Text(
                    'Calender',
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
                    "assets/images/reportVector.png",
                    height: 28,
                  ),
                  title: const Text(
                    'Report',
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
                      title: "Add report",
                      onTap: () {},
                    ),
                    CurvedLineConatainer(
                      title: "Report List",
                      isShowextendedLine: false,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            )),
            GetBuilder<HRController>(builder: (hrController) {
              if (hrController.isOwner) {
                return const OwnerSwitchRoleButton();
              }

              if (hrController.user.person_type != null) {
                if (hrController.user.person_type!.isNotEmpty) {
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
                    items: hrController.user.person_type!.map((item) {
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
                        hrController.switchRole(value);
                      }
                      // Logger().i(value);
                      //Do something when selected item is changed.
                    },
                    onSaved: (value) {
                      // selectedValue = value.toString();
                    },
                    buttonStyleData: const ButtonStyleData(
                      //decoration: BoxDecoration(color: Colors.white),
                      overlayColor: MaterialStatePropertyAll(Colors.white),
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
                // Get.find<OwnerController>().ownerLogout();
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
      body: Center(
        child: Column(
          children: [
            const Gap(20),
            InkWell(
              onTap: () {
                Get.to(const DemoScreen(), id: hrNavigationKey);
              },
              child: Container(
                width: 370,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Today',
                          style: TextStyle(
                            color: Color(0xFFEDEDFC),
                            fontSize: 32,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            //height: 0,
                          ),
                        ),
                        Container(
                          width: 124,
                          height: 38,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF2C2C2C),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '09 : 41 AM',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                  //height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40.0, top: 20),
                      child: Text(
                        '18th March, 2024',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 0.05,
                        ),
                      ),
                    ),
                    const Gap(20),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CommonButton(
                        onTap: () {
                          Get.to(const ViewAttendanceList(),
                              id: hrNavigationKey);
                        },
                        color: const Color(0xFF5A57FF),
                        textColor: Colors.white,
                        title: 'View Attendance',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(20),
            Container(
              width: 370,
              height: 166,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Gap(10),
                                // Container(
                                //   width: 60,
                                //   height: 60,
                                //   decoration: const BoxDecoration(
                                //     image: DecorationImage(
                                //       image: AssetImage(
                                //           "assets/images/hrDashBoardEmployee.png"),
                                //       fit: BoxFit.fill,
                                //     ),
                                //   ),
                                // ),
                                // const Gap(5),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Total Employee',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '110',
                                      style: TextStyle(
                                        color: Color(0xFF918FFA),
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Gap(5),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: 120,
                                height: 39,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Present\nWorkforce',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '80',
                                      style: TextStyle(
                                        color: Color(0xFF918FFA),
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Gap(5),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: 120,
                                height: 39,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Absent\nWorkforce',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '80',
                                      style: TextStyle(
                                        color: Color(0xFF918FFA),
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 134.48,
                        height: 106.82,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage("assets/images/totalEmployee.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ).paddingOnly(right: 10),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(20),
            Container(
              width: 370,
              height: 166,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Gap(10),
                                // Container(
                                //   width: 60,
                                //   height: 60,
                                //   decoration: const BoxDecoration(
                                //     image: DecorationImage(
                                //       image: AssetImage(
                                //           "assets/images/arrival.png"),
                                //       fit: BoxFit.fill,
                                //     ),
                                //   ),
                                // ),
                                // const Gap(5),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Arrivals',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    CommomDropDownBlackTheme(
                                      labelText: "Select Gate",
                                      list: shiftsDataList,
                                      onChanged: (v) {
                                        setState(() {
                                          selectedShift = v;
                                        });
                                      },
                                      selectedValue: selectedShift,
                                      hintText: 'Select Gate',
                                    ),
                                    // Text(
                                    //   '110',
                                    //   style: TextStyle(
                                    //     color: Colors.white,
                                    //     fontSize: 24,
                                    //     fontFamily: 'SF Pro Display',
                                    //     fontWeight: FontWeight.w500,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                            const Gap(5),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: 120,
                                height: 39,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'On Time',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '80',
                                      style: TextStyle(
                                        color: Color(0xFF918FFA),
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Gap(5),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: 120,
                                height: 39,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Late',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '80',
                                      style: TextStyle(
                                        color: Color(0xFF918FFA),
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 134.48,
                        height: 106.82,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage("assets/images/arrivalCounts.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ).paddingOnly(right: 10),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(20),
            Container(
              width: 370,
              height: 201,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(10),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Gap(20),
                                // Container(
                                //   width: 60,
                                //   height: 60,
                                //   decoration: const BoxDecoration(
                                //     image: DecorationImage(
                                //       image: AssetImage(
                                //           "assets/images/shifts.png"),
                                //       fit: BoxFit.fill,
                                //     ),
                                //   ),
                                // ),
                                // const Gap(5),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Shifts',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    // Text(
                                    //   '110',
                                    //   style: TextStyle(
                                    //     color: Colors.white,
                                    //     fontSize: 24,
                                    //     fontFamily: 'SF Pro Display',
                                    //     fontWeight: FontWeight.w500,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                            const Gap(5),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: 120,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'On-Site',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '80',
                                      style: TextStyle(
                                        color: Color(0xFF918FFA),
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Gap(5),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: 120,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Hybrid',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '80',
                                      style: TextStyle(
                                        color: Color(0xFF918FFA),
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Gap(5),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: 120,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Remote',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '80',
                                      style: TextStyle(
                                        color: Color(0xFF918FFA),
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 134.48,
                        height: 106.82,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/shiftsCount.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ).paddingOnly(right: 10),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
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
