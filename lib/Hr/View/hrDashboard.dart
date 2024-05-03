import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';

class HrDashboard extends StatefulWidget {
  const HrDashboard({super.key});

  @override
  State<HrDashboard> createState() => _HrDashboardState();
}

class _HrDashboardState extends State<HrDashboard> {
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
            //height: 0,
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
                                // Text(
                                //   '${ownerController.user.first_name} ${ownerController.user.last_name ?? ""}',
                                //   style: const TextStyle(
                                //     color: Colors.white,
                                //     fontSize: 20,
                                //     fontFamily: 'SF Pro Text',
                                //     fontWeight: FontWeight.w500,
                                //     // height: 0,
                                //     // letterSpacing: -0.80,
                                //   ),
                                // ),
                                const Gap(12),
                                //  const Spacer(),
                                Image.asset(
                                  "assets/icons/candle.png",
                                  height: 22,
                                )
                              ],
                            ),
                            // Text(
                            //   ownerController.user.email ?? "",
                            //   style: const TextStyle(
                            //     color: Color(0xFFACACAC),
                            //     fontSize: 14,
                            //     fontFamily: 'SF Pro Text',
                            //     fontWeight: FontWeight.w300,
                            //     // height: 0,
                            //     // letterSpacing: -0.56,
                            //   ),
                            // ),
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
                      // height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                  children: [
                    CurvedLineConatainer(
                      title: "Add Warehouse",
                      onTap: () {},
                    ),
                    CurvedLineConatainer(
                      title: "View Warehouse",
                      isShowextendedLine: false,
                      onTap: () {
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
                      // height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                  children: [
                    CurvedLineConatainer(
                      title: "Add Staff",
                      onTap: () {},
                    ),
                    CurvedLineConatainer(
                      title: "Staff List",
                      isShowextendedLine: false,
                      onTap: () {},
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
      body: Center(
        child: Column(
          children: [
            const Gap(20),
            Container(
              width: 358,
              height: 173,
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
                          height: 0,
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
                                color: Color(0xFFEDEDFC),
                                fontSize: 22,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                                height: 0,
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
                        color: Color(0xFFACACAC),
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
                      color: const Color(0xFF5A57FF),
                      textColor: Colors.white,
                      title: 'View Attendance',
                    ),
                  )
                ],
              ),
            ),
            // const Gap(20),
            // Container(
            //   width: 358,
            //   height: 173,
            //   decoration: ShapeDecoration(
            //     gradient: LinearGradient(
            //       begin: const Alignment(1.00, 0.00),
            //       end: const Alignment(-1, 0),
            //       colors: [
            //         Colors.white.withOpacity(0.10000000149011612),
            //         Colors.white.withOpacity(0.10000000149011612)
            //       ],
            //     ),
            //     shape: RoundedRectangleBorder(
            //       side: const BorderSide(width: 1, color: Colors.white),
            //       borderRadius: BorderRadius.circular(25),
            //     ),
            //   ),
            // ),
            // const Gap(20),
            // Container(
            //   width: 358,
            //   height: 173,
            //   decoration: ShapeDecoration(
            //     gradient: LinearGradient(
            //       begin: const Alignment(1.00, 0.00),
            //       end: const Alignment(-1, 0),
            //       colors: [
            //         Colors.white.withOpacity(0.10000000149011612),
            //         Colors.white.withOpacity(0.10000000149011612)
            //       ],
            //     ),
            //     shape: RoundedRectangleBorder(
            //       side: const BorderSide(width: 1, color: Colors.white),
            //       borderRadius: BorderRadius.circular(25),
            //     ),
            //   ),
            // ),
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
