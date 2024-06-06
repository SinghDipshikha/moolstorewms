//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Security%20Guard/Controllers/securityGuardController.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/material.dart';

//@RoutePage()
class MaterialListScreen extends StatefulWidget {
  const MaterialListScreen({super.key});

  @override
  State<MaterialListScreen> createState() => _MaterialListScreenState();
}

class _MaterialListScreenState extends State<MaterialListScreen> {
  @override
  final List tags = [
    {"title": "Product Name", "flex": 1},
    {"title": "Qunatity", "flex": 2},
    {"title": "Date & Time", "flex": 2},
    {
      "title": "Status",
      "flex": 1,
    },
  ];
  final List dataList = [
    {"title": "K. Printer", "flex": 1},
    {"title": "1200 Pcs", "flex": 2},
    {"title": "24-06-2023 10:35 AM", "flex": 2},
    {"title": "icon", "flex": 1},
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
  static const _pageSize = 20;

  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Material List',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
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
            const Gap(10),
            Row(children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerLeft,
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
              const Gap(3),
            ]).paddingSymmetric(horizontal: 8),
            Expanded(
              child: GetBuilder<SecurityGuardController>(initState: (state) {
                Get.find<SecurityGuardController>().getAllMaterialList();
              }, builder: (securityGuardController) {
                return securityGuardController.allMaterialList.isEmpty
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
                            securityGuardController.allMaterialList.length,
                        itemBuilder: (context, i) {
                          MaterialEntry entry =
                              securityGuardController.allMaterialList[i];
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
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
                                        "K. Printer") {
                                      return Expanded(
                                          flex: dataList[index]["flex"],
                                          child: Text(
                                            entry.product_name ?? "",
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
                                        "1200 Pcs") {
                                      return Expanded(
                                          flex: dataList[index]["flex"],
                                          child: Text(
                                            entry.qty.toString() ?? "",
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
                                        "24-06-2023 10:35 AM") {
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
