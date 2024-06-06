import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsController.dart';
import 'package:moolwmsstore/Dock%20Supervisor/widget/commonDropDown.dart';
import 'package:moolwmsstore/utils/dimensions.dart';

class DockAssignScreen extends StatefulWidget {
  const DockAssignScreen({super.key});

  @override
  State<DockAssignScreen> createState() => _DockAssignScreenState();
}

class _DockAssignScreenState extends State<DockAssignScreen> {
  @override
  final List tags = [
    {"title": "Vehicle No.", "flex": 1},
    {"title": 'Date Time', "flex": 1},
    {"title": "Movement", "flex": 1},
    {
      "title": "Status",
      "flex": 1,
    },
    {
      "title": "View",
      "flex": 1,
    },
  ];
  final List dataList = [
    {"title": "MH 01-1234", "flex": 1},
    {"title": "12-06-2024", "flex": 1},
    {"title": "Inward", "flex": 1},
    {"title": "icon2", "flex": 1},
    {"title": "icon3", "flex": 1},
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
  final PagingController<int, int> _pagingController =
      PagingController(firstPageKey: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dock Assign',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(
        title: 'Assign Dock',
        onTap: () {},
      ),
      body: Column(
        children: [
          const Gap(20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Container(
                height: 337,
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
                      child:
                          GetBuilder<DmsController>(builder: (dmsController) {
                        return ListView.builder(
                            itemCount: dataList.length,
                            itemBuilder: (context, i) {
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
                                      children: List.generate(dataList.length,
                                          (index) {
                                        if (dataList[index]["title"] ==
                                            "MH 01-1234") {
                                          return Expanded(
                                              flex: dataList[index]["flex"],
                                              child: const Text(
                                                "MH 01-1234",
                                                style: TextStyle(
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
                                            "12-06-2024") {
                                          return Expanded(
                                              flex: dataList[index]["flex"],
                                              child: const Text(
                                                "12-06-2024\n08: 50 AM",
                                                style: TextStyle(
                                                  color: Color(0xFF353535),
                                                  fontSize: 12,
                                                  fontFamily: 'SF Pro Text',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ));
                                        }
                                        if (dataList[index]["title"] ==
                                            "Inward") {
                                          return Expanded(
                                              flex: dataList[index]["flex"],
                                              child: const Text(
                                                "Inward",
                                                style: TextStyle(
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
                                            "icon2") {
                                          return Expanded(
                                            flex: dataList[index]["flex"],
                                            child: Container(
                                              height: 22,
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFFFFD9DC),
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      width: 1,
                                                      color: Color(0x33E23744)),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                              ),
                                              child: const Text(
                                                'Vehicle Out',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFFE23744),
                                                  fontSize: 10,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        if (dataList[index]["title"] ==
                                            "icon3") {
                                          return Expanded(
                                            flex: dataList[index]["flex"],
                                            child: Container(
                                              height: 22,
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFFFFD9DC),
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      width: 1,
                                                      color: Color(0x33E23744)),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                              ),
                                              child: const Text(
                                                'Vehicle Out',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFFE23744),
                                                  fontSize: 12,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        return Expanded(
                                          flex: tags[index]["flex"],
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
                                      }),
                                    ),
                                  ),
                                ),
                              );
                            });
                      }),
                    ),
                  ],
                ).paddingSymmetric(
                    horizontal: Dimensions.horizontalBodyPad,
                    vertical: Dimensions.vericalBodyPad),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
