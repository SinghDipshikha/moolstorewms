import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsController.dart';

class DockQueueListScreen extends StatelessWidget {
  DockQueueListScreen({super.key});

  @override
  final List tags = [
    {"title": "Dock No.", "flex": 1},
    {"title": 'Indent No.', "flex": 1},
    {
      "title": "Status",
      "flex": 1,
    },
    {
      "title": "View",
      "flex": 1,
    },
  ];

  bool isSelected = false;

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

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DmsController>(initState: (s) {
      Get.find<DmsController>().getAllDockListByWarehouseId();
    }, builder: (context) {
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
            ]).paddingSymmetric(horizontal: 8),
            Expanded(
              child: GetBuilder<DmsController>(builder: (dmsController) {
                return dmsController.dockList.isEmpty
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
                        itemCount: dmsController.dockList.length,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFFAF9FF),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0x195A57FF)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                child: Row(
                                  children: [],
                                ),
                              ),
                            ),
                          );
                        });
              }),
            ),
          ],
        ),
      );
    });
  }
}
