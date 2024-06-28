import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:moolwmsstore/Security%20Guard/Controllers/securityGuardController.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/labour.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/dateRangeButtton.dart';

//@RoutePage()
class LabourListScreen extends StatefulWidget {
  const LabourListScreen({super.key});

  @override
  State<LabourListScreen> createState() => _LabourListScreenState();
}

class _LabourListScreenState extends State<LabourListScreen> {
  @override
  final List tags = [
    {"title": "Labour Name", "flex": 1},
    {"title": "Date & Time", "flex": 2},
    {"title": "Mobile No.", "flex": 2},
    {
      "title": "Status",
      "flex": 1,
    },
  ];
  final List dataList = [
    {"title": "K. Printer", "flex": 1},
    {"title": "24-06-2023 10:35 AM", "flex": 2},
    {"title": "0000000000", "flex": 2},
    {"title": "icon", "flex": 1},
  ];
  DateTime start = DateTime.now();
  DateTime end = DateTime.now().subtract(const Duration(days: 1));
  static const _pageSize = 20;
  final PagingController<int, LabourEntry> _pagingController =
      PagingController(firstPageKey: 1);
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

  bool isSelected = false;
  Future<void> _fetchPage(int pageKey) async {
    try {
      await getAllindents(pageKey).then((v) {
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

  Future<List<LabourEntry>?> getAllindents(int pageKey) async {
    var res = await Get.find<SecurityGuardController>().apiClient.postData(
        "visitor/getAllVisitors?recordsPerPage=$_pageSize&next=$pageKey", {
      {
        "name": "",
        "phone_no": "",
        "start_date": "",
        "end_date": "",
        "warehouse_id": Get.find<SecurityGuardController>()
            .currentlySelectedWarehouse!
            .warehouse_id
      }
    });
    if (res.data["message"] == "Labour Data Retrieved Successfully!") {
      return (res.data["result"] as List)
          .map((e) => LabourEntry.fromJson(e))
          .toList();
    } else {
      return null;
    }
  }

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      Get.find<SecurityGuardController>()
          .secGaurdRepo
          .getAllLabours(recordsPerPage: 20, page: pageKey)
          .then((v) {
        if (v != pageKey) {
          if (v!.length < 2) {
            _pagingController.appendLastPage(v);
          } else {
            final nextPageKey = pageKey + 1;
            _pagingController.appendPage(v, nextPageKey);
          }
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Labour List',
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
                Get.find<SecurityGuardController>().getAllLabourList();
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
                          LabourEntry entry =
                              securityGuardController.allLabourList[i];
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
                                            entry.full_name ?? "",
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
                                    if (dataList[index]["title"] ==
                                        "0000000000") {
                                      return Expanded(
                                          flex: dataList[index]["flex"],
                                          child: Text(
                                            entry.mobile_number.toString() ??
                                                "",
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
        ),
      ),
    );
  }
}
