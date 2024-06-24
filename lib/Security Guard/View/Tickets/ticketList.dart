//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:moolwmsstore/Security%20Guard/Controllers/securityGuardController.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/ticket.dart';
import 'package:moolwmsstore/Security%20Guard/View/Register/verifyEmployeeByIdAndQrScan.dart';
import 'package:moolwmsstore/Security%20Guard/View/Tickets/ticketVerifyForSg.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonButtons.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/globals.dart';

//@RoutePage()
class TicketListScreen extends StatefulWidget {
  const TicketListScreen({super.key});

  @override
  State<TicketListScreen> createState() => _TicketListScreenState();
}

class _TicketListScreenState extends State<TicketListScreen> {
  @override
  final List tags = [
    {"title": 'Indent ID', "flex": 1},
    {"title": "Vehicle No.", "flex": 1},
    {"title": "Driver Name", "flex": 1},
    {"title": 'Date Time', "flex": 1},
    {
      "title": "Status",
      "flex": 1,
    },
    {
      "title": "Verify",
      "flex": 1,
    },
  ];
  final List dataList = [
    {"title": "#TC-130", "flex": 1},
    {"title": "MH XY- 1234", "flex": 1},
    {"title": "Alec Benjamin", "flex": 1},
    {"title": "25-06-2024 10:35 AM", "flex": 1},
    {"title": "icon1", "flex": 1},
    {"title": "icon2", "flex": 1},
  ];
  bool isSelected = false;

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

  final PagingController<int, int> _pagingController =
      PagingController(firstPageKey: 0);
  Future<void> _fetchPage(int pageKey) async {
    _pagingController.appendLastPage(List.generate(16, (i) {
      return i;
    }));
    // try {
    //   final newItems = await RemoteApi.getBeerList(pageKey, _pageSize);
    //   final isLastPage = newItems.length < _pageSize;
    //   if (isLastPage) {
    //     _pagingController.appendLastPage(newItems);
    //   } else {
    //     final nextPageKey = pageKey + newItems.length;
    //     _pagingController.appendPage(newItems, nextPageKey);
    //   }
    // } catch (error) {
    //   _pagingController.error = error;
    // }
  }

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(
        title: 'Verify',
        textColor: Colors.white,
        //  leftIcon: 'assets/icons/qr_icon.png',
        color: const Color(0xFF5A57FF),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const RegistrationTypeOptions(),
          ));
        },
      ),
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Indent List',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: GetBuilder<SecurityGuardController>(initState: (state) {
        Get.find<SecurityGuardController>().getAllTicketList();
      }, builder: (sgController) {
        return Column(
          children: [
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
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      tags[4]["title"],
                      style: subHeaderStyle,
                    ),
                  )),
              const Gap(3),
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      tags[5]["title"],
                      style: subHeaderStyle,
                    ),
                  )),
            ]).paddingSymmetric(horizontal: 8),
            Expanded(
              child: GetBuilder<SecurityGuardController>(initState: (state) {
                Get.find<SecurityGuardController>().getAllTicketList();
              }, builder: (securityGuardController) {
                return securityGuardController.allTicketsList.isEmpty
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
                            securityGuardController.allTicketsList.length,
                        itemBuilder: (context, i) {
                          TicketSG entry =
                              securityGuardController.allTicketsList[i];
                              
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          entry.indent_number.toString() ?? "",
                                          style: const TextStyle(
                                            color: Color(0xFF353535),
                                            fontSize: 12,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                            letterSpacing: -0.48,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          entry.vehicle_number ?? "",
                                          style: const TextStyle(
                                            color: Color(0xFF353535),
                                            fontSize: 12,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                            letterSpacing: -0.48,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          entry.visitor_name ?? "",
                                          style: const TextStyle(
                                            color: Color(0xFF353535),
                                            fontSize: 12,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                            letterSpacing: -0.48,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          entry.created_at.toString() ??
                                              "${DateTime.now()}",
                                          style: const TextStyle(
                                            color: Color(0xFFCCCCCC),
                                            fontSize: 10,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.40,
                                          ),
                                        ),
                                      ),
                                      entry.status == "IN"
                                          ? Expanded(
                                              flex: 1,
                                              child: Container(
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFFAF9FF),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  image: const DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/check_in.png"),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Expanded(
                                              flex: 1,
                                              child: Container(
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFFAF9FF),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  image: const DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/check_out.png"),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                      InkWell(
                                        onTap: () {
                                          Get.to(
                                              TicketEntryReviewScreenForSG(
                                                indentElement: entry
                                                        .indent_number
                                                        .toString() ??
                                                    "",
                                              ),
                                              id: securityGuardNavigation);
                                        },
                                        child: Expanded(
                                          flex: 1,
                                          child: Container(
                                            width: 60,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFF5A57FF),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'Verify',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ]
                                    //     List.generate(dataList.length, (index) {
                                    //   if (dataList[index]["title"] == "#TC-130") {
                                    //     return Expanded(
                                    //         flex: dataList[index]["flex"],
                                    //         child: Text(
                                    //           entry.indent_number.toString() ??
                                    //               "",
                                    //           style: const TextStyle(
                                    //             color: Color(0xFF353535),
                                    //             fontSize: 12,
                                    //             fontFamily: 'SF Pro Text',
                                    //             fontWeight: FontWeight.w500,
                                    //             height: 0,
                                    //             letterSpacing: -0.48,
                                    //           ),
                                    //         ));
                                    //   }
                                    //   if (dataList[index]["title"] ==
                                    //       "MH XY- 1234") {
                                    //     return Expanded(
                                    //         flex: dataList[index]["flex"],
                                    //         child: Text(
                                    //           entry.vehicle_number ?? "",
                                    //           style: const TextStyle(
                                    //             color: Color(0xFF353535),
                                    //             fontSize: 12,
                                    //             fontFamily: 'SF Pro Text',
                                    //             fontWeight: FontWeight.w500,
                                    //             height: 0,
                                    //             letterSpacing: -0.48,
                                    //           ),
                                    //         ));
                                    //   }
                                    //   if (dataList[index]["title"] ==
                                    //       "Alec Benjamin") {
                                    //     return Expanded(
                                    //         flex: dataList[index]["flex"],
                                    //         child: Text(
                                    //           entry.visitor_name ?? "",
                                    //           style: const TextStyle(
                                    //             color: Color(0xFF353535),
                                    //             fontSize: 12,
                                    //             fontFamily: 'SF Pro Text',
                                    //             fontWeight: FontWeight.w500,
                                    //             height: 0,
                                    //             letterSpacing: -0.48,
                                    //           ),
                                    //         ));
                                    //   }
                                    //   if (dataList[index]["title"] ==
                                    //       "25-06-2024 10:35 AM") {
                                    //     return Expanded(
                                    //         flex: dataList[index]["flex"],
                                    //         child: Text(
                                    //           entry.created_at.toString() ??
                                    //               "${DateTime.now()}",
                                    //           style: const TextStyle(
                                    //             color: Color(0xFFCCCCCC),
                                    //             fontSize: 10,
                                    //             fontFamily: 'SF Pro Text',
                                    //             fontWeight: FontWeight.w400,
                                    //             height: 0,
                                    //             letterSpacing: -0.40,
                                    //           ),
                                    //         ));
                                    //   }
                                    //   if (dataList[index]["title"] == "icon1" &&
                                    //       entry.status == "IN") {
                                    //     return Expanded(
                                    //       flex: dataList[index]["flex"],
                                    //       child: Container(
                                    //         decoration: ShapeDecoration(
                                    //           color: const Color(0xFFFAF9FF),
                                    //           shape: RoundedRectangleBorder(
                                    //               borderRadius:
                                    //                   BorderRadius.circular(5)),
                                    //           image: const DecorationImage(
                                    //             image: AssetImage(
                                    //                 "assets/images/check_in.png"),
                                    //             fit: BoxFit.contain,
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     );
                                    //   }
                                    //   if (dataList[index]["title"] == "icon1" &&
                                    //       entry.status == "OUT") {
                                    //     return Expanded(
                                    //       flex: dataList[index]["flex"],
                                    //       child: Container(
                                    //         decoration: ShapeDecoration(
                                    //           color: const Color(0xFFFAF9FF),
                                    //           shape: RoundedRectangleBorder(
                                    //               borderRadius:
                                    //                   BorderRadius.circular(5)),
                                    //           image: const DecorationImage(
                                    //             image: AssetImage(
                                    //                 "assets/images/check_out.png"),
                                    //             fit: BoxFit.contain,
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     );
                                    //   }
                                    //   if (dataList[index]["title"] == "icon2") {
                                    //     return Expanded(
                                    //       flex: dataList[index]["flex"],
                                    //       child: Container(
                                    //         decoration: ShapeDecoration(
                                    //           color: const Color(0xFF5A57FF),
                                    //           shape: RoundedRectangleBorder(
                                    //             borderRadius:
                                    //                 BorderRadius.circular(30),
                                    //           ),
                                    //         ),
                                    //         child: const Center(
                                    //           child: Text(
                                    //             'Verify',
                                    //             style: TextStyle(
                                    //                 color: Colors.white),
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     );
                                    //   }
                                    //   return Expanded(
                                    //     flex: tags[index]["flex"],
                                    //     child: Text(
                                    //       tags[index]["title"],
                                    //       style: const TextStyle(
                                    //         color: Colors.black,
                                    //         fontWeight: FontWeight.w700,
                                    //       ),
                                    //     ),
                                    //   );
                                    // }),

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
            vertical: Dimensions.vericalBodyPad);
      }),
    );
  }
}
