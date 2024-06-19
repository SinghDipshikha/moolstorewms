//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:moolwmsstore/Security%20Guard/Controllers/securityGuardController.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/visitor.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonButtons.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/dateRangeButtton.dart';
import 'package:moolwmsstore/utils/dimensions.dart';

//@RoutePage()
class VisitorListScreen extends StatefulWidget {
  const VisitorListScreen({super.key});

  @override
  State<VisitorListScreen> createState() => _VisitorListScreenState();
}

class _VisitorListScreenState extends State<VisitorListScreen> {
  @override
  final List tags = [
    {"title": "Visitor ID", "flex": 1},
    {"title": "Visitor Name", "flex": 1},
    {"title": "Mobile", "flex": 2},
    {
      "title": "Status",
      "flex": 1,
    },
  ];
  final List dataList = [
    {"title": "#TC-130", "flex": 1},
    {"title": "Johnson Charles", "flex": 1},
    {"title": "123456789", "flex": 2},
    {"title": "icon", "flex": 1},
    {"title": "icon2", "flex": 1},
  ];
  bool isSelected = false;
  DateTime start = DateTime.now();
  DateTime end = DateTime.now().subtract(const Duration(days: 1));

  static const _pageSize = 20;

  final PagingController<int, Visitor> _pagingController =
      PagingController(firstPageKey: 1);
  Future<void> _fetchPage(int pageKey) async {
    try {
      await getAllVisitorList(pageKey).then((v) {
        if (v != null) {
          final newItems = v;

          final isLastPage = newItems.length < _pageSize;
          if (isLastPage) {
            _pagingController.appendLastPage(newItems);
          } else {
            final nextPageKey = pageKey + newItems.length;
            _pagingController.appendPage(newItems, nextPageKey);
          }
        }
      });
    } catch (error) {
      _pagingController.error = error;
    }
  }

  Future<List<Visitor>?> getAllVisitorList(int pageKey) async {
    var value = await Get.find<SecurityGuardController>().apiClient.postData(
        "visitor/getAllVisitors?recordsPerPage=$_pageSize&next=$pageKey", {
      "name": "",
      "phone_no": "",
      "start_date": "2024-05-28",
      "end_date": "2024-05-28",
      "visit_ticket_number": "",
      "warehouse_id": 2
    });
    if (value.data["message"] == "Visitor details fetched Successfully!") {
      return (value.data["result"] as List)
          .map((e) => Visitor.fromJson(e))
          .toList();
    } else {
      return null;
    }
  }

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
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: CustomFloatingActionButton(
        title: 'Verify',
        //  leftIcon: 'assets/icons/qr_icon.png',
        color: const Color(0xFF5A57FF),
        textColor: Colors.white,
        onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (context) => const RegistrationTypeOptions(),
          // ));
        },
      ),
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Visitor List',
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
              Expanded(
                  child: DateRangeButtton(
                      height: 49,
                      startDate: start,
                      endDate: end,
                      onApplyClick: (start, end) {})),
              const Gap(10),
              const Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xFFACACAC),
                      size: 20,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0x195A57FF)),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0x195A57FF)),
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              )),
            ],
          ),
          const Gap(12),
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
            child: GetBuilder<SecurityGuardController>(
                builder: (securityGuardController) {
              return securityGuardController.allVisitorList.isEmpty
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
                      itemCount: securityGuardController.allVisitorList.length,
                      itemBuilder: (context, i) {
                        Visitor entry =
                            securityGuardController.allVisitorList[i];
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
                                  if (dataList[index]["title"] == "#TC-130") {
                                    return Expanded(
                                        flex: dataList[index]["flex"],
                                        child: Text(
                                          entry.visit_ticket_number ?? "",
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
                                      "Johnson Charles") {
                                    return Expanded(
                                        flex: dataList[index]["flex"],
                                        child: Text(
                                          entry.visitor_name ?? "",
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
                                  if (dataList[index]["title"] == "123456789") {
                                    return Expanded(
                                        flex: dataList[index]["flex"],
                                        child: Text(
                                          entry.visitor_ph_number ?? "",
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
      ).paddingSymmetric(
          horizontal: Dimensions.horizontalBodyPad,
          vertical: Dimensions.vericalBodyPad),
    );
  }
}
