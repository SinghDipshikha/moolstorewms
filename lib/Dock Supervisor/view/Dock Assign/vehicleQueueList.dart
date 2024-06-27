import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/vehicle.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsController.dart';
import 'package:moolwmsstore/Dock%20Supervisor/view/Dock%20Assign/docklistDialog.dart';
import 'package:moolwmsstore/Dock%20Supervisor/view/Unloading%20material/unloadIngMaterial.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
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
    {"title": "Indent", "flex": 1},
    {"title": 'Date Time', "flex": 1},
    {"title": "Movement", "flex": 1},
    {
      "title": "Status",
      "flex": 1,
    },
  ];

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
    fontSize: 10,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w500,
  );

  // @override
  // oninit() {}

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DmsController>(initState: (s) {
      Get.find<DmsController>().getAllVehicleListByWarehouseId();
    }, builder: (context) {
      return Column(
        children: [
          Expanded(
            child: Container(
              decoration: ShapeDecoration(
                color: const Color(0xFFFAF9FF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x195E57FC)),
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
                    const Gap(6),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            tags[1]["title"],
                            style: subHeaderStyle,
                          ),
                        )),
                    const Gap(6),
                    Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            tags[2]["title"],
                            style: subHeaderStyle,
                          ),
                        )),
                    const Gap(6),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            tags[3]["title"],
                            style: subHeaderStyle,
                          ),
                        )),
                    const Gap(6),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            tags[4]["title"],
                            style: subHeaderStyle,
                          ),
                        )),
                  ]).paddingSymmetric(horizontal: 20, vertical: 12),
                  Expanded(
                    child: GetBuilder<DmsController>(builder: (dmsController) {
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
                                Vehicle entry = dmsController.vehicleList[i];

                                return Container(
                                  height: 60,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFFAF9FF),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Color(0x195A57FF)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Row(children: [
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Text(
                                            entry.vehicle_number ?? "--",
                                            style: headerStyle,
                                          ),
                                        )),
                                    const Gap(6),
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            entry.indent_number ?? "--",
                                            style: headerStyle,
                                          ),
                                        )),
                                    const Gap(6),
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      "${entry.created_at == null ? "--" : AppConstants.dateformatter.format(entry.created_at as DateTime)}\n",
                                                  style: const TextStyle(
                                                    color: Color(0xFF353535),
                                                    fontSize: 10,
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: entry.created_at == null
                                                      ? "--"
                                                      : AppConstants
                                                          .datetimeformatter
                                                          .format(
                                                              entry.created_at
                                                                  as DateTime),
                                                  style: const TextStyle(
                                                    color: Color(0xFF353535),
                                                    fontSize: 10,
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )),
                                    const Gap(6),
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            entry.movement ?? "--",
                                            style: headerStyle,
                                          ),
                                        )),
                                    const Gap(6),
                                    Expanded(
                                        flex: 1,
                                        child: entry.vehicle_status ==
                                                "Not Assigned"
                                            ? InkWell(
                                                onTap: () {
                                                  Get.dialog(
                                                      DocklistDialog(
                                                        entry: entry,
                                                      ),
                                                      navigatorKey: Get.nestedKey(
                                                          salesNavigationKey),
                                                      barrierColor:
                                                          Colors.transparent,
                                                      barrierDismissible:
                                                          false);
                                                  // Get.dialog(
                                                  //     const DocklistDialog());
                                                },
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  height: 30,
                                                  decoration: ShapeDecoration(
                                                    color:
                                                        const Color(0xFF5A57FF),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6)),
                                                  ),
                                                  child: Text(
                                                    'Assign Dock',
                                                    style: headerStyle.copyWith(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              )
                                            : InkWell(
                                                onTap: () {
                                                  Get.to(
                                                      const UnloadIngMaterial());
                                                },
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  height: 30,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.green,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6)),
                                                  ),
                                                  child: Text(
                                                    'Dock Assigned',
                                                    style: headerStyle.copyWith(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              )),
                                  ]).paddingSymmetric(horizontal: 14),
                                ).paddingSymmetric(horizontal: 6, vertical: 6);
                              });
                    }),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}
