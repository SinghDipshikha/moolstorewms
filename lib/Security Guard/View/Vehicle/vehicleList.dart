//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Security%20Guard/Controllers/securityGuardController.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/vehicle.dart';
import 'package:moolwmsstore/Security%20Guard/View/securityGuardDashboard.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonAppBar.dart';
import 'package:moolwmsstore/utils/globals.dart';

//@RoutePage()
class VehicleListScreen extends StatefulWidget {
  const VehicleListScreen({super.key});

  @override
  State<VehicleListScreen> createState() => _VehicleListScreenState();
}

class _VehicleListScreenState extends State<VehicleListScreen> {
  @override
  final List tags = [
    {"title": "Vehicle No.", "flex": 2},
    {"title": "Driver Name", "flex": 2},
    {"title": "Date & Time", "flex": 2},
    {
      "title": "Status",
      "flex": 1,
    },
  ];
  final List dataList = [
    {"title": "MH XY- 1234", "flex": 2},
    {"title": "Alec Benjamin", "flex": 2},
    {"title": "20-06-202301:29 PM", "flex": 2},
    {"title": "icon", "flex": 1},
    {"title": "icon2", "flex": 1},
  ];
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        onTap: () {
          Get.to(const SecurityGuardDashBoard(), id: securityGuardNavigation);
        },
        title: 'Vehicle List',
        actions: const [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 169,
                  height: 39,
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 30,
                    right: 10,
                    bottom: 10,
                  ),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x195A57FF)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Scan QR',
                        style: TextStyle(
                          color: Color(0xFFACACAC),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          //height: 0,
                        ),
                      ),
                      Icon(
                        Icons.sort,
                        color: Color(0xFFACACAC),
                        size: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 169,
                  height: 39,
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 30,
                    right: 10,
                    bottom: 10,
                  ),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x195A57FF)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Color(0xFFACACAC),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          //height: 0,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Color(0xFFACACAC),
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Gap(20),
            Row(
              children: List.generate(tags.length, (index) {
                if (tags[index]["title"] == "icon") {
                  return Expanded(
                    flex: tags[index]["flex"],
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )),
                  );
                }
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Expanded(
                      flex: tags[index]["flex"],
                      child: Text(
                        tags[index]["title"],
                        style: const TextStyle(
                          color: Color(0xFF5A57FF),
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                );
              }),
            ),
            Expanded(
              child: GetBuilder<SecurityGuardController>(initState: (state) {
                Get.find<SecurityGuardController>().getAllVehicleList();
              }, builder: (securityGuardController) {
                return securityGuardController.allVehicleList.isEmpty
                    ? const Center(
                        child: Text(
                          'No data found',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    : ListView.builder(
                        // shrinkWrap: true,
                        itemCount:
                            securityGuardController.allVehicleList.length,
                        itemBuilder: (context, i) {
                          VehicleEntry entry =
                              securityGuardController.allVehicleList[i];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 382,
                              height: 50,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFFAF9FF),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0x195A57FF)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                child: Row(
                                  children:
                                      List.generate(dataList.length, (index) {
                                    if (dataList[index]["title"] ==
                                        "MH XY- 1234") {
                                      return Expanded(
                                          flex: dataList[index]["flex"],
                                          child: Text(
                                            entry.vehicle_number ?? "",
                                            style: const TextStyle(
                                              color: Color(0xFF353535),
                                              fontSize: 12,
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w500,
                                              //height: 0,
                                              letterSpacing: -0.48,
                                            ),
                                          ));
                                    }
                                    if (dataList[index]["title"] ==
                                        "Alec Benjamin") {
                                      return Expanded(
                                          flex: dataList[index]["flex"],
                                          child: Text(
                                            entry.driver_name ?? "",
                                            style: const TextStyle(
                                              color: Color(0xFF353535),
                                              fontSize: 12,
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w500,
                                              //height: 0,
                                              letterSpacing: -0.48,
                                            ),
                                          ));
                                    }

                                    if (dataList[index]["title"] ==
                                        "20-06-202301:29 PM") {
                                      return Expanded(
                                          flex: dataList[index]["flex"],
                                          child: Text(
                                            entry.created_at.toString() ??
                                                "${DateTime.now()}",
                                            style: const TextStyle(
                                              color: Color(0xFFCCCCCC),
                                              fontSize: 10,
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w400,
                                              //height: 0,
                                              letterSpacing: -0.40,
                                            ),
                                          ));
                                    }
                                    if (dataList[index]["title"] == "icon" &&
                                        entry.status == "IN") {
                                      return Expanded(
                                        flex: dataList[index]["flex"],
                                        child: Container(
                                          // width: 20,
                                          // height: 30,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFAF9FF),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/check_in.png"),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    if (dataList[index]["title"] == "icon" &&
                                        entry.status == "OUT") {
                                      return Expanded(
                                        flex: dataList[index]["flex"],
                                        child: Container(
                                          // width: 20,
                                          // height: 30,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFAF9FF),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/check_out.png"),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    if (dataList[index]["title"] == "icon2") {
                                      return Expanded(
                                        flex: dataList[index]["flex"],
                                        child: const SizedBox(
                                          height: 10,
                                          width: 10,
                                          child: Icon(
                                            Icons.more_vert,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                        ),
                                      );
                                    }

                                    return Expanded(
                                      flex: tags[index]["flex"],
                                      child: Text(
                                        tags[index]["title"],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ),
                          );
                        });
              }),
            ),
          ],
        ),
      ),
    );
  }
}
