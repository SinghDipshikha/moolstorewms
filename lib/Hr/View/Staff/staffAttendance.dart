//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:moolwmsstore/Security%20Guard/Controllers/securityGuardController.dart';
import 'package:moolwmsstore/Security%20Guard/Model/Indent/indentElement.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/dateRangeButtton.dart';
import 'package:moolwmsstore/utils/dimensions.dart';

//@RoutePage()
class StaffAttendanceListScreen extends StatefulWidget {
  const StaffAttendanceListScreen({super.key});

  @override
  State<StaffAttendanceListScreen> createState() =>
      _StaffAttendanceListScreenState();
}

class _StaffAttendanceListScreenState extends State<StaffAttendanceListScreen> {
  @override
  final List tags = [
    {"title": 'Staff Name', "flex": 1},
    {"title": "Designation", "flex": 1},
    {"title": "Entry Time", "flex": 1},
    {"title": 'Status', "flex": 1},
    {"title": '', "flex": 1},
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
  DateTime start = DateTime.now();
  DateTime end = DateTime.now().subtract(const Duration(days: 1));
  static const _pageSize = 20;
  final PagingController<int, IndentElement> _pagingController =
      PagingController(firstPageKey: 1);
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

  Future<List<IndentElement>?> getAllindents(int pageKey) async {
    var res = await Get.find<SecurityGuardController>().apiClient.postData(
        "visitor/getAllVisitors?recordsPerPage=$_pageSize&next=$pageKey", {
      "indent_number": "",
      "vehicle_number": "",
      "driver_name": "",
      "warehouse_id": Get.find<SecurityGuardController>()
          .currentlySelectedWarehouse!
          .warehouse_id,
      "start_date": "",
      "end_date": ""
    });
    if (res.data["message"] == "Indent Details found") {
      return (res.data["result"] as List)
          .map((e) => IndentElement.fromJson(e))
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
          .getAllindents(recordsPerPage: 20, page: pageKey)
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
          centerTitle: false,
          title: const Text(
            'Attendance List',
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
            ]).paddingSymmetric(horizontal: 8),
            Expanded(
                child: PagedListView<int, IndentElement>(
              pagingController: _pagingController,
              builderDelegate: PagedChildBuilderDelegate<IndentElement>(
                  itemBuilder: (context, entry, index) {
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                child: Container(
                                  height: 20,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Color(0x195A57FF)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: Center(
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
                                ),
                              ),
                              const Gap(20),
                              InkWell(
                                onTap: () {},
                                child: Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 56,
                                    height: 20,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFD2FFF1),
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 1, color: Color(0x1902A676)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Verify',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    // print(entry);
                                    // Get.to(
                                    //     PersonInfoScreen(
                                    //       personDetails: entry,
                                    //     ),
                                    //     id: securityGuardNavigation);
                                  },
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFFAF9FF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/icons/eyeNew.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ));
              }),
            )),
          ],
        ).paddingSymmetric(
            horizontal: Dimensions.horizontalBodyPad,
            vertical: Dimensions.vericalBodyPad));
  }
}
