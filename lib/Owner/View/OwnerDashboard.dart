import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/View/Employee/AddEmployee.dart';
import 'package:moolwmsstore/Owner/View/Employee/EmployeeList.dart';
import 'package:moolwmsstore/Owner/View/WarehouseList.dart';
import 'package:moolwmsstore/Owner/View/addWarehouse.dart';
import 'package:moolwmsstore/common/widgets/ownerSwitchRoleButton.dart';
import 'package:moolwmsstore/utils/globals.dart';

////@RoutePage()
class OwnerDashboard extends StatefulWidget {
  const OwnerDashboard({super.key});

  @override
  State<OwnerDashboard> createState() => _OwnerDashboardState();
}

class _OwnerDashboardState extends State<OwnerDashboard> {
  @override
  DateTime? _selectedDate;
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

  @override
  void initState() {
    super.initState();
    // showAnimatedDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         backgroundColor: Colors.black,
    //         content: Image.asset("assets/icons/WareHouse Added Icon.png"),
    //       );
    //     });
  }

  final double _indent = 33;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        drawer: Drawer(
          //  width: context.isPhone ? MediaQuery.sizeOf(context).width - 100 : 400,
          surfaceTintColor: const Color.fromARGB(255, 22, 22, 22),
          backgroundColor: const Color.fromARGB(255, 22, 22, 22),
          child: Column(
            //padding: EdgeInsets.zero,
            children: [
              GetBuilder<OwnerController>(builder: (ownerController) {
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
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        '${ownerController.user.first_name}',
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
                                if (ownerController.user.last_name != null)
                                  Text(
                                    ownerController.user.last_name ?? "",
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
                                Text(
                                  ownerController.user.email ?? "",
                                  style: const TextStyle(
                                    color: Color(0xFFACACAC),
                                    fontSize: 14,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w300,
                                    // //height: 0,
                                    // letterSpacing: -0.56,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const Text(
                                  'Owner',
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
                            ),
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
                      "assets/icons/New House Icon (R).png",
                      height: 28,
                    ),
                    title: const Text(
                      'Warehouse',
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
                        title: "Add Warehouse",
                        onTap: () {
                          Get.to(const AddWarehouse(), id: ownerNavigationKey);
                        },
                      ),
                      CurvedLineConatainer(
                        title: "View Warehouse",
                        isShowextendedLine: false,
                        onTap: () {
                          Get.find<OwnerController>().setloadingtrue();
                          Get.to(const WarehouseList(), id: ownerNavigationKey);
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
                  // ListTile(
                  //   leading: Image.asset(
                  //     "assets/icons/Sales Icon (R).png",
                  //     height: 28,
                  //   ),
                  //   title: const Text(
                  //     'Sales',
                  //     textAlign: TextAlign.left,
                  //     style: TextStyle(
                  //       color: Color(0xFFA7A7A7),
                  //       fontSize: 16,
                  //       fontFamily: 'SF Pro Text',
                  //       fontWeight: FontWeight.w500,
                  //     ),
                  //   ),
                  //   onTap: () {},
                  // ),
                  // ListTile(
                  //   leading: Image.asset(
                  //     "assets/icons/HR Icon (R).png",
                  //     height: 28,
                  //   ),
                  //   title: const Text(
                  //     'HR',
                  //     textAlign: TextAlign.left,
                  //     style: TextStyle(
                  //       color: Color(0xFFA7A7A7),
                  //       fontSize: 16,
                  //       fontFamily: 'SF Pro Text',
                  //       fontWeight: FontWeight.w500,
                  //     ),
                  //   ),
                  //   onTap: () {},
                  // ),
                  ExpansionTile(
                    collapsedShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    iconColor: Colors.white,
                    collapsedIconColor: Colors.white,
                    shape: Border.all(
                      color: const Color.fromARGB(255, 22, 22, 22),
                    ),
                    leading: Image.asset(
                      "assets/icons/Staff Profile Icons (R).png",
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
                      CurvedLineConatainer(
                        title: "Add Staff",
                        onTap: () {
                          Get.to(AddEmployee(), id: ownerNavigationKey);
                        },
                      ),
                      CurvedLineConatainer(
                        title: "Staff List",
                        isShowextendedLine: false,
                        onTap: () {
                          Get.to(const EmployeeList(), id: ownerNavigationKey);
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
              const OwnerSwitchRoleButton(),
              InkWell(
                onTap: () {
                  Get.find<OwnerController>().ownerLogout();
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
          centerTitle: false,
          backgroundColor: const Color(0xFF232323),
          title: const Text(
            'Dashboard',
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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Gap(10),
                Container(
                  width: 370,
                  height: 140,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(-1.00, -0.00),
                      end: Alignment(1, 0),
                      colors: [Color(0xFF5A57FF), Color(0xFF6A68FF)],
                    ),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Column(
                          children: [
                            Text(
                              'Warehouses',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '10',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 54,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Total No. of Warehouses',
                              style: TextStyle(
                                color: Color(0xFFC2C0FF),
                                fontSize: 10,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const Gap(20),
                        Column(
                          children: [
                            Container(
                              width: 169.64,
                              height: 112,
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/wareHouseImage.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        _selectDate(context);
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
                            const Gap(20),
                            const Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xFFACACAC),
                              size: 20,
                            ),
                            const Gap(20),
                            Text(
                              _selectedDate == null
                                  ? 'All Time'
                                  : _selectedDate.toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.56,
                              ),
                            ),
                            const Gap(20),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFFACACAC),
                              size: 20,
                            ),
                            const Gap(20),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _selectDate(context);
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
                            const Gap(20),
                            const Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xFFACACAC),
                              size: 20,
                            ),
                            const Gap(20),
                            Text(
                              _selectedDate == null
                                  ? 'All Time'
                                  : _selectedDate.toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.56,
                              ),
                            ),
                            const Gap(20),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFFACACAC),
                              size: 20,
                            ),
                            const Gap(20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                Container(
                  width: 380,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF303030),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 42,
                              height: 42,
                              decoration: const BoxDecoration(
                                color: Color(0xFF303030),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/box.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const Text(
                              'Material',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Material In',
                                  style: TextStyle(
                                    color: Color(0xFF8C8C8C),
                                    fontSize: 16,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Gap(30),
                                Text(
                                  '80',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Material Out',
                                  style: TextStyle(
                                    color: Color(0xFF8C8C8C),
                                    fontSize: 16,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Gap(20),
                                Text(
                                  '80',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                Container(
                  width: 380,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF303030),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 12.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 42,
                              height: 42,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Person Icon (R) Dash.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const Text(
                              'Person',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Person In',
                                style: TextStyle(
                                  color: Color(0xFF8C8C8C),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(30),
                              Text(
                                '120',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Person Out',
                                style: TextStyle(
                                  color: Color(0xFF8C8C8C),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(20),
                              Text(
                                '80',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                Container(
                  width: 380,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF303030),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 42,
                            height: 42,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/vehicleVector.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Text(
                            'Vehicle',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Vehicle In',
                                style: TextStyle(
                                  color: Color(0xFF8C8C8C),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(30),
                              Text(
                                '220',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Vehicle Out',
                                style: TextStyle(
                                  color: Color(0xFF8C8C8C),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(20),
                              Text(
                                '80',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                Container(
                  width: 380,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF303030),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 12.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 42,
                              height: 42,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Dashboard Icons (R).png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const Text(
                              'Visitor',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Visitor In',
                                style: TextStyle(
                                  color: Color(0xFF8C8C8C),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(40),
                              Text(
                                '50',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Visitor Out',
                                style: TextStyle(
                                  color: Color(0xFF8C8C8C),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(30),
                              Text(
                                '80',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 180,
                      height: 150,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF303030),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            const Gap(30),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Gap(20),
                                const Text(
                                  'Occupancy ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Gap(20),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Vacant',
                                      style: TextStyle(
                                        color: Color(0xFF8C8C8C),
                                        fontSize: 10,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Gap(60),
                                    Text(
                                      '80%',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Occupied',
                                      style: TextStyle(
                                        color: Color(0xFF8C8C8C),
                                        fontSize: 10,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Gap(50),
                                    Text(
                                      '80%',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                const Gap(20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 20,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.50,
                                              color: Color(0xFF2A2A2A)),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Warehouse',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 7,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 20,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.50,
                                              color: Color(0xFF2A2A2A)),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Chamber',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 7,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 40,
                                      height: 20,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.50,
                                              color: Color(0xFF2A2A2A)),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Pallet',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 7,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Gap(8),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 150,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF303030),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Gap(20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Gap(20),
                              const Text(
                                'Tickets',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              const Center(
                                child: Text(
                                  '40',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 54,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 12,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.50,
                                              color: Color(0xFF2A2A2A)),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'AllTickets',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 7,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 37,
                                      height: 12,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.50,
                                              color: Color(0xFF2A2A2A)),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Sales',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 7,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 60,
                                      height: 12,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.50,
                                              color: Color(0xFF2A2A2A)),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Security Guard',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 7,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(40)
              ],
            ),
          ),
        ));
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
