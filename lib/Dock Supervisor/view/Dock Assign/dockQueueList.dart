import 'package:elapsed_time_display/elapsed_time_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/dock.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsController.dart';

class DockQueueListScreen extends StatefulWidget {
  const DockQueueListScreen({super.key});

  @override
  State<DockQueueListScreen> createState() => _DockQueueListScreenState();
}

class _DockQueueListScreenState extends State<DockQueueListScreen> {
  @override
  final List tags = [
    {"title": "Dock No.", "flex": 1},
    {"title": 'Vehicle No.', "flex": 1},
    {
      "title": "Timer",
      "flex": 1,
    },
    {
      "title": "View",
      "flex": 1,
    },
  ];

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

  List<Dock>? dockList;
  @override
  void initState() {
    super.initState();
    Get.find<DmsController>().dmsRepo.getAllDockListByWarehouseId().then((v) {
      setState(() {
        dockList = v;
        Logger().d(dockList);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ]).paddingSymmetric(horizontal: 20, vertical: 12),
          dockList == null
              ? const Expanded(
                  child: Center(
                    child: SpinKitDoubleBounce(
                      color: Color(0xFF5A57FF),
                    ),
                  ),
                )
              : Expanded(
                  child: dockList!.isEmpty
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
                          itemCount: dockList!.length,
                          itemBuilder: (context, i) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
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
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Text(
                                              dockList?[i].dock_name ?? "--",
                                              style: headerStyle,
                                            ),
                                          )),
                                      const Gap(3),
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Text(
                                              dockList?[i].vehicle_number ??
                                                  "--",
                                              style: headerStyle,
                                            ),
                                          )),
                                      const Gap(3),
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: dockList?[i].updated_at ==
                                                    null
                                                ? Text(
                                                    "--",
                                                    style: headerStyle,
                                                  )
                                                : ElapsedTimeDisplay(
                                                    startTime: dockList?[i]
                                                        .updated_at as DateTime,
                                                        
                                                  ),
                                          )),
                                      const Gap(3),
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              dockList?[i].vehicle_status ==
                                                      "Dock Assigned"
                                                  ? "Dock Assigned"
                                                  : "Not Assigned",
                                              style: headerStyle.copyWith(
                                                  color: dockList?[i]
                                                              .vehicle_status ==
                                                          "Dock Assigned"
                                                      ? Colors.green
                                                      : Colors.red),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          })),
        ],
      ),
    );
  }
}
