import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/View/Employee/AddEmployee.dart';
import 'package:moolwmsstore/Owner/View/Employee/EmployeeList.dart';
import 'package:moolwmsstore/Owner/View/WarehouseList.dart';
import 'package:moolwmsstore/Owner/View/addWarehouse.dart';
import 'package:moolwmsstore/utils/globals.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

////@RoutePage()
class OwnerDashboard extends StatefulWidget {
  const OwnerDashboard({super.key});

  @override
  State<OwnerDashboard> createState() => _OwnerDashboardState();
}

class _OwnerDashboardState extends State<OwnerDashboard> {
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
                ListTile(
                  leading: Image.asset(
                    "assets/icons/Sales Icon (R).png",
                    height: 28,
                  ),
                  title: const Text(
                    'Sales',
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
                    "assets/icons/HR Icon (R).png",
                    height: 28,
                  ),
                  title: const Text(
                    'HR',
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
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: Wrap(
              // alignment: WrapAlignment.,
              runSpacing: 20,
              spacing: 20,
              children: List.generate(9, (index) {
                if (index == 1) {
                  return Container(
                    width: 400,
                    height: 240,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Color(0xFF373737), Colors.black],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Gap(20),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Vehicle\nMovement',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.57,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    decoration: const BoxDecoration(
                                        color: Colors.white),
                                  ),
                                  const Gap(10),
                                  const Text(
                                    'Inward',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17.14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFF9B9B9B)),
                                  ),
                                  const Gap(10),
                                  const Text(
                                    'Outward',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17.14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 200,
                              width: 200,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CircularPercentIndicator(
                                  animation: true,
                                  reverse: true,
                                  lineWidth: 40,
                                  percent: 0.5,
                                  radius: 80.0,
                                  circularStrokeCap: CircularStrokeCap.butt,
                                  progressColor: const Color(0xB2D3D3D3),
                                  backgroundColor: Colors.transparent,
                                ),
                                CircularPercentIndicator(
                                  animation: true,
                                  //reverse: true,
                                  lineWidth: 40,
                                  radius: 80.0,
                                  circularStrokeCap: CircularStrokeCap.butt,
                                  progressColor: Colors.white,
                                  percent: 0.75,
                                  backgroundColor: Colors.transparent,
                                ),
                              ]),
                            )
                          ],
                        ))
                      ],
                    ),
                  );
                }
                return Container(
                  width: 400,
                  height: 240,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF373737), Colors.black],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Gap(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'No. of\nWarehouses',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.57,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 12,
                                  height: 12,
                                  decoration:
                                      const BoxDecoration(color: Colors.white),
                                ),
                                const Gap(10),
                                const Text(
                                  'Added',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 12,
                                  height: 12,
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF9B9B9B)),
                                ),
                                const Gap(10),
                                const Text(
                                  'Deleted',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 200,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CircularPercentIndicator(
                                animation: true,
                                reverse: true,
                                lineWidth: 40,
                                percent: 0.5,
                                radius: 50.0,
                                circularStrokeCap: CircularStrokeCap.butt,
                                progressColor: const Color(0xB2D3D3D3),
                                backgroundColor: Colors.transparent,
                              ),
                              CircularPercentIndicator(
                                reverse: true,
                                lineWidth: 40,
                                radius: 80.0,
                                circularStrokeCap: CircularStrokeCap.butt,
                                progressColor: Colors.white,
                                percent: 0.75,
                                backgroundColor: Colors.transparent,
                              ),
                            ]),
                          )
                        ],
                      ))
                    ],
                  ),
                );
              }),
            )),
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
