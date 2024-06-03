import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';
import 'package:moolwmsstore/Sales/Model/Visitor/visitorElement.dart';
import 'package:moolwmsstore/Sales/View/Visiitors/viewVisitor.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/dimensions.dart';

class VisitorsList extends StatefulWidget {
  const VisitorsList({super.key});

  @override
  State<VisitorsList> createState() => _VisitorsListState();
}

class _VisitorsListState extends State<VisitorsList> {
  final PagingController<int, VisitorElement> pagingController =
      PagingController(firstPageKey: 0);
  final DateFormat formatter = DateFormat('dd-MM-yyyy');
  DateFormat timeformatter = DateFormat('h:mm a');
  TextStyle headingstyle = const TextStyle(
    color: Color(0xFF5A57FF),
    fontSize: 12,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
  );
  TextStyle elementTextstyle = const TextStyle(
    color: Color(0xFF353535),
    fontSize: 12,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w500,
  );
  bool visitorsFound = true;

  @override
  void initState() {
    pagingController.addPageRequestListener((pageKey) {
      // getVisitors(page: pageKey + 1, count: 16);
      Get.find<SalesController>().apiClient.postData(
          "visitor/getAllVisitors?recordsPerPage=20&next=${pageKey + 1}",
          {"keyword": ""}).then((v) {
        // "message": "Visitor details fetched Successfully!",
        if (v.data["message"] == "Visitor details fetched Successfully!") {
          List<VisitorElement> newItems = (v.data["result"] as List)
              .map((e) => VisitorElement.fromJson(e))
              .toList();
          final isLastPage = newItems.length < 20;
          if (isLastPage) {
            pagingController.appendLastPage(newItems);
          } else {
            final nextPageKey = pageKey + newItems.length;
            pagingController.appendPage(newItems, nextPageKey);
          }
        }
        if (v.data["message"] == "No visitor found") {
          Snacks.redSnack(
            "No visitor found",
          );
        }
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            children: [
              Expanded(flex: 1, child: Text('Name', style: headingstyle)),
              Expanded(
                  flex: 2, child: Text('Mobile Number', style: headingstyle)),
              Expanded(
                  flex: 1,
                  child: Container(
                      child: Text('Valid Till', style: headingstyle))),
              Expanded(flex: 1, child: Text('Status', style: headingstyle)),
              Image.asset(
                "assets/icons/Menu 3 Dots Vertical.png",
                height: 22,
                width: 20,
                color: Colors.transparent,
              )
            ],
          ).paddingSymmetric(horizontal: 12, vertical: 12),
          Expanded(
              child: PagedListView<int, VisitorElement>(
            pagingController: pagingController,
            builderDelegate: PagedChildBuilderDelegate<VisitorElement>(
              itemBuilder: (context, item, index) {
                return Container(
                  width: 382,
                  height: 40,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFAF9FF),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x195A57FF)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Text(item.visitor_name ?? "--",
                              style: elementTextstyle)),
                      Expanded(
                          flex: 2,
                          child: Text(item.visitor_ph_number ?? "--",
                              style: elementTextstyle)),
                      Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                item.validTill == null
                                    ? "--"
                                    : formatter
                                        .format(item.validTill as DateTime),
                                style: const TextStyle(
                                  color: Color(0xFF353535),
                                  fontSize: 10,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: item.validTill == null
                                          ? "--"
                                          : timeformatter.format(
                                              item.validTill as DateTime),
                                      style: const TextStyle(
                                        color: Color(0xFF353535),
                                        fontSize: 10,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Text(item.in_out_status ?? "--",
                              style: headingstyle)),
                      InkWell(
                        onTap: () {
                          Get.to(ViewVisitor(
                            visitor: item,
                          ));
                        },
                        child: Image.asset(
                          "assets/icons/eyeNew.png",
                          height: 22,
                          width: 20,
                        ),
                      )
                    ],
                  ).paddingSymmetric(horizontal: 12, vertical: 4),
                ).paddingSymmetric(vertical: 4);
              },
            ),
          ))
        ],
      ).paddingSymmetric(
          vertical: Dimensions.vericalBodyPad,
          horizontal: Dimensions.horizontalBodyPad),
    );
  }
}
