import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/vehicle.dart';
import 'package:moolwmsstore/Dock%20Supervisor/View/assignChamber.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsController.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonButtons.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/globals.dart';

class VehicleQueueListScreen extends StatefulWidget {
  const VehicleQueueListScreen({super.key});

  @override
  State<VehicleQueueListScreen> createState() => _VehicleQueueListScreenState();
}

class _VehicleQueueListScreenState extends State<VehicleQueueListScreen> {
  @override
  bool isSelected = false;
  final List tags = [
    {"title": "Vehicle No.", "flex": 1},
    {"title": 'Date Time', "flex": 1},
    {"title": "Movement", "flex": 1},
    {
      "title": "Status",
      "flex": 1,
    },
  ];

  final List dataList = [
    {"title": "MH 01-1234", "flex": 1},
    {"title": "12-06-2024", "flex": 1},
    {"title": "Inward", "flex": 1},
    {"title": "icon2", "flex": 1},
  ];
  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              backgroundColor: Colors.white,
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: [
                          Container(
                            height: 82,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF5A57FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(32),
                                  topRight: Radius.circular(32),
                                ),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Assign Dock',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          const Gap(30),
                          Row(
                            children: [
                              Container(
                                width: 145,
                                height: 60,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF5A57FF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0xFF000000),
                                      blurRadius: 0,
                                      offset: Offset(6, 6),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    const Gap(30),
                                    const Text(
                                      'D-01',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Gap(10),
                                    Container(
                                        width: 31,
                                        height: 31,
                                        decoration: const BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                            boxShadow: [BoxShadow()]),
                                        child: const Icon(Icons.check)),
                                  ],
                                ),
                              ),
                              const Gap(10),
                              Container(
                                width: 145,
                                height: 60,
                                decoration: ShapeDecoration(
                                  color: const Color(0x195E57FC),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0x195E57FC)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    'D-02',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF595959),
                                      fontSize: 24,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Gap(20),
                          Row(
                            children: [
                              Container(
                                width: 145,
                                height: 60,
                                decoration: ShapeDecoration(
                                  color: const Color(0x195E57FC),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0x195E57FC)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    'D-02',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF595959),
                                      fontSize: 24,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(10),
                              Container(
                                width: 145,
                                height: 60,
                                decoration: ShapeDecoration(
                                  color: const Color(0x195E57FC),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0x195E57FC)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    'D-02',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF595959),
                                      fontSize: 24,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 140,
                                height: 50,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 8),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFF94F46),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(const AssignChamberScreen(),
                                      id: dmsNavigationKey);
                                },
                                child: Container(
                                  width: 140,
                                  height: 50,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 8),
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF02A676),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Assign',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
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
              actions: const <Widget>[],
            );
          },
        );
      },
    );
  }

  DateTime start = DateTime.now();

  DateTime end = DateTime.now().subtract(const Duration(days: 1));

  TextStyle subHeaderStyle = const TextStyle(
    color: Color(0xFF5A57FF),
    fontSize: 12,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w400,
  );

  TextStyle headerStyle = const TextStyle(
    color: Color(0xFF353535),
    fontSize: 12,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
  );


  // @override
  // oninit() {}

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<DmsController>(initState: (s) {
        Get.find<DmsController>().getAllVehicleListByWarehouseId();
      }, builder: (context) {
        return Expanded(
          child: Column(
            children: [
              const Gap(20),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 337,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFAF9FF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x195E57FC)),
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                child: Text(
                                  tags[0]["title"],
                                  style: subHeaderStyle,
                                ),
                              )),
                          const Gap(3),
                          Expanded(
                              flex: 1,
                              child: Container(
                                child: Text(
                                  tags[1]["title"],
                                  style: subHeaderStyle,
                                ),
                              )),
                          const Gap(3),
                          Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  tags[2]["title"],
                                  style: subHeaderStyle,
                                ),
                              )),
                          const Gap(3),
                          Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  tags[3]["title"],
                                  style: subHeaderStyle,
                                ),
                              )),
                          // const Gap(3),
                          // Expanded(
                          //     flex: 1,
                          //     child: Container(
                          //       alignment: Alignment.center,
                          //       child: Text(
                          //         tags[4]["title"],
                          //         style: subHeaderStyle,
                          //       ),
                          //     )),
                        ]).paddingSymmetric(horizontal: 20),
                        Expanded(
                          child: GetBuilder<DmsController>(
                              builder: (dmsController) {
                            return dmsController.vehicleList.isEmpty
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
                                    itemCount: dmsController.vehicleList.length,
                                    itemBuilder: (context, i) {
                                      Vehicle entry =
                                          dmsController.vehicleList[i];
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 382,
                                          height: 60,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFAF9FF),
                                            shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 1,
                                                  color: Color(0x195A57FF)),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10),
                                            child: Row(
                                              children: List.generate(
                                                  dataList.length, (index) {
                                                if (dataList[index]["title"] ==
                                                    "MH 01-1234") {
                                                  return Expanded(
                                                      flex: dataList[index]
                                                          ["flex"],
                                                      child: Text(
                                                        entry.vehicle_number ??
                                                            "",
                                                        style: const TextStyle(
                                                          color:
                                                              Color(0xFF353535),
                                                          fontSize: 12,
                                                          fontFamily:
                                                              'SF Pro Text',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          //height: 0,
                                                          letterSpacing: -0.48,
                                                        ),
                                                      ));
                                                }
                                                if (dataList[index]["title"] ==
                                                    "12-06-2024") {
                                                  return Expanded(
                                                      flex: dataList[index]
                                                          ["flex"],
                                                      child: Container(
                                                        height: 100,
                                                        decoration:
                                                            ShapeDecoration(
                                                          color: Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            entry.created_at
                                                                    .toString() ??
                                                                "",
                                                            style:
                                                                const TextStyle(
                                                              color: Color(
                                                                  0xFF353535),
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'SF Pro Text',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ),
                                                      ));
                                                }
          
                                                if (dataList[index]["title"] ==
                                                    "Inward") {
                                                  return Expanded(
                                                      flex: dataList[index]
                                                          ["flex"],
                                                      child: Center(
                                                        child: Text(
                                                          entry.movement ?? "",
                                                          style:
                                                              const TextStyle(
                                                            color: Color(
                                                                0xFF353535),
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'SF Pro Text',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            //height: 0,
                                                          ),
                                                        ),
                                                      ));
                                                }
                                                if (dataList[index]["title"] ==
                                                        "icon2" &&
                                                    entry.vehicle_status ==
                                                        "Not Assigned") {
                                                  return Expanded(
                                                    flex: dataList[index]
                                                        ["flex"],
                                                    child: Container(
                                                      height: 22,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color: const Color(
                                                            0xFFFFD9DC),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side: const BorderSide(
                                                              width: 1,
                                                              color: Color(
                                                                  0x33E23744)),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          'Vehicle Out',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFFE23744),
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'SF Pro Display',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
          
                                                if (dataList[index]["title"] ==
                                                        "icon2" &&
                                                    entry.vehicle_status ==
                                                        "Dock Assigned") {
                                                  return Expanded(
                                                    flex: dataList[index]
                                                        ["flex"],
                                                    child: Container(
                                                      width: 80,
                                                      height: 22,
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10,
                                                          vertical: 4),
                                                      decoration:
                                                          ShapeDecoration(
                                                        color: const Color(
                                                            0xFFD1FFF2),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side: const BorderSide(
                                                              width: 1,
                                                              color: Color(
                                                                  0x33019C6F)),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          'Vehicle In',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF019C6F),
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'SF Pro Display',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
          
                                                return Expanded(
                                                  flex: tags[index]["flex"],
                                                  child: Container(),
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
                ),
              ),
            ],
          ),
        );
      });
  }
}
