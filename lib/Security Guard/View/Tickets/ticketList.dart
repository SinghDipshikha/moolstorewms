//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:moolwmsstore/Security%20Guard/View/Register/verifyEmployeeByIdAndQrScan.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonButtons.dart';
import 'package:moolwmsstore/utils/dimensions.dart';

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
  ];
  final List dataList = [
    {"title": "#TC-130", "flex": 1},
    {"title": "MH XY- 1234", "flex": 2},
    {"title": "Alec Benjamin", "flex": 2},
    {"title": "icon", "flex": 1},
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
      body: Column(
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
                    side: const BorderSide(width: 1, color: Color(0x195A57FF)),
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
                    side: const BorderSide(width: 1, color: Color(0x195A57FF)),
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
          ]).paddingSymmetric(horizontal: 8),

        
        
          Expanded(
              child: PagedListView<int, int>(
            padding: EdgeInsets.zero,
            pagingController: _pagingController,
            builderDelegate: PagedChildBuilderDelegate<int>(
              itemBuilder: (context, item, index) => Container(
                decoration: ShapeDecoration(
                  color: const Color(0xFFFAF9FF),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '09876',
                            style: headerStyle,
                          ),
                        )),
                    const Gap(3),
                    Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            'PJ-23 4321',
                            style: headerStyle,
                          ),
                        )),
                    const Gap(3),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'John Doek',
                            style: headerStyle,
                          ),
                        )),
                    const Gap(3),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '18-06-2023',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFCCCCCC),
                                  fontSize: 10,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '12:30 ',
                                      style: TextStyle(
                                        color: Color(0xFFCCCCCC),
                                        fontSize: 10,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'PM',
                                      style: TextStyle(
                                        color: Color(0xFFCCCCCC),
                                        fontSize: 6,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        )),
                    const Gap(3),
                    Expanded(
                        flex: 1,
                        child: Image.asset(
                          "assets/images/check_in.png",
                          height: 20,
                        )),
                  ],
                ).paddingSymmetric(horizontal: 6, vertical: 8),
              ).paddingSymmetric(vertical: 4),
            ),
          ))
          // Expanded(
          //   child: GetBuilder<SecurityGuardController>(initState: (state) {
          //     Get.find<SecurityGuardController>().getAllTicketList();
          //   }, builder: (securityGuardController) {
          //     return  ListView.builder(
          //             // shrinkWrap: true,
          //             itemCount: securityGuardController.allTicketList.length,
          //             itemBuilder: (context, i) {
          //               Ticket entry = securityGuardController.allTicketList[i];
          //               return Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Container(
          //                   width: 382,
          //                   height: 50,
          //                   decoration: ShapeDecoration(
          //                     color: const Color(0xFFFAF9FF),
          //                     shape: RoundedRectangleBorder(
          //                       side: const BorderSide(
          //                           width: 1, color: Color(0x195A57FF)),
          //                       borderRadius: BorderRadius.circular(10),
          //                     ),
          //                   ),
          //                   child: Padding(
          //                     padding: const EdgeInsets.symmetric(
          //                         horizontal: 12, vertical: 12),
          //                     child: Row(
          //                       children:
          //                           List.generate(dataList.length, (index) {
          //                         if (dataList[index]["title"] == "#TC-130") {
          //                           return Expanded(
          //                               flex: dataList[index]["flex"],
          //                               child: Text(
          //                                 entry.visit_ticket_number ?? "",
          //                                 style: const TextStyle(
          //                                   color: Color(0xFF353535),
          //                                   fontSize: 12,
          //                                   fontFamily: 'SF Pro Text',
          //                                   fontWeight: FontWeight.w500,
          //                                   //height: 0,
          //                                   letterSpacing: -0.48,
          //                                 ),
          //                               ));
          //                         }
          //                         if (dataList[index]["title"] ==
          //                             "MH XY- 1234") {
          //                           return Expanded(
          //                               flex: dataList[index]["flex"],
          //                               child: Text(
          //                                 entry.visitor_ph_number ?? "",
          //                                 style: const TextStyle(
          //                                   color: Color(0xFF353535),
          //                                   fontSize: 12,
          //                                   fontFamily: 'SF Pro Text',
          //                                   fontWeight: FontWeight.w500,
          //                                   //height: 0,
          //                                   letterSpacing: -0.48,
          //                                 ),
          //                               ));
          //                         }
          //                         if (dataList[index]["title"] ==
          //                             "Alec Benjamin") {
          //                           return Expanded(
          //                               flex: dataList[index]["flex"],
          //                               child: Text(
          //                                 entry.created_at.toString() ??
          //                                     "${DateTime.now()}",
          //                                 style: const TextStyle(
          //                                   color: Color(0xFFCCCCCC),
          //                                   fontSize: 10,
          //                                   fontFamily: 'SF Pro Text',
          //                                   fontWeight: FontWeight.w400,
          //                                   //height: 0,
          //                                   letterSpacing: -0.40,
          //                                 ),
          //                               ));
          //                         }
          //                         if (dataList[index]["title"] == "icon" &&
          //                             entry.status == "IN") {
          //                           return Expanded(
          //                             flex: dataList[index]["flex"],
          //                             child: Container(
          //                               // width: 20,
          //                               // height: 30,
          //                               decoration: ShapeDecoration(
          //                                 color: const Color(0xFFFAF9FF),
          //                                 shape: RoundedRectangleBorder(
          //                                     borderRadius:
          //                                         BorderRadius.circular(5)),
          //                                 image: const DecorationImage(
          //                                   image: AssetImage(
          //                                       "assets/images/check_in.png"),
          //                                   fit: BoxFit.contain,
          //                                 ),
          //                               ),
          //                             ),
          //                           );
          //                         }
          //                         if (dataList[index]["title"] == "icon" &&
          //                             entry.status == "OUT") {
          //                           return Expanded(
          //                             flex: dataList[index]["flex"],
          //                             child: Container(
          //                               // width: 20,
          //                               // height: 30,
          //                               decoration: ShapeDecoration(
          //                                 color: const Color(0xFFFAF9FF),
          //                                 shape: RoundedRectangleBorder(
          //                                     borderRadius:
          //                                         BorderRadius.circular(5)),
          //                                 image: const DecorationImage(
          //                                   image: AssetImage(
          //                                       "assets/images/check_out.png"),
          //                                   fit: BoxFit.contain,
          //                                 ),
          //                               ),
          //                             ),
          //                           );
          //                         }
          //                         if (dataList[index]["title"] == "icon2") {
          //                           return Expanded(
          //                             flex: dataList[index]["flex"],
          //                             child: const SizedBox(
          //                               height: 10,
          //                               width: 10,
          //                               child: Icon(
          //                                 Icons.more_vert,
          //                                 color: Colors.black,
          //                                 size: 20,
          //                               ),
          //                             ),
          //                           );
          //                         }

          //                         return Expanded(
          //                           flex: tags[index]["flex"],
          //                           child: Text(
          //                             tags[index]["title"],
          //                             style: const TextStyle(
          //                               color: Colors.black,
          //                               fontWeight: FontWeight.w700,
          //                             ),
          //                           ),
          //                         );
          //                       }),
          //                     ),
          //                   ),
          //                 ),
          //               );
          //             });
          //   }),
          // ),
        ],
      ).paddingSymmetric(
          horizontal: Dimensions.horizontalBodyPad,
          vertical: Dimensions.vericalBodyPad),
    );
  }
}
