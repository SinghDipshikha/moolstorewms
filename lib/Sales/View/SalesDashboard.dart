import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/View/Employee/AddEmployee.dart';
import 'package:moolwmsstore/Owner/View/Employee/EmployeeList.dart';
import 'package:moolwmsstore/Owner/View/WarehouseList.dart';
import 'package:moolwmsstore/Owner/View/addWarehouse.dart';
import 'package:moolwmsstore/Sales/View/addCompany.dart';
import 'package:moolwmsstore/Sales/View/companyList.dart';
import 'package:moolwmsstore/utils/globals.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

////@RoutePage()
class SalesDashboard extends StatefulWidget {
  const SalesDashboard({super.key});

  @override
  State<SalesDashboard> createState() => _SalesDashboardState();
}

class _SalesDashboardState extends State<SalesDashboard> {
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
            // GetBuilder<OwnerController>(builder: (ownerController) {
            //   return
            Theme(
              data: Theme.of(context).copyWith(
                dividerTheme: const DividerThemeData(color: Colors.transparent),
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
                                  // height: 0,
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
                              // height: 0,
                              // letterSpacing: -0.56,
                            ),
                          ),
                          const Text(
                            'Owner',
                            style: TextStyle(
                              color: Color(0xFFFF5789),
                              fontSize: 16,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              // height: 0,
                              // letterSpacing: -0.64,
                            ),
                          )
                        ],
                      )
                    ],
                  )),
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
                    "assets/icons/PO Icon (R).png",
                    height: 28,
                  ),
                  title: const Text(
                    'Ticket',
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
                      title: "Create Ticket",
                      onTap: () {
                        // Get.to(const AddWarehouse(), id: ownerNavigationKey);
                      },
                    ),
                    CurvedLineConatainer(
                      title: "View Ticket List",
                      isShowextendedLine: false,
                      onTap: () {
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

                    height: 28,
                  ),
                  title: const Text(
                    'Company',
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
              ],
            )),
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
                        height: 0,
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
          'Sales Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w500,
            height: 0,
            letterSpacing: -0.80,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: Get.height * 0.8,
          alignment: Alignment.center,
          child: const Text(
            "This is sales dashboard",
          ),
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
                      height: 0,
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
