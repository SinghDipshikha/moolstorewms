import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/View/Assets/assetEntry.dart';
import 'package:moolwmsstore/Owner/View/Common/ownerCommon.dart';
import 'package:moolwmsstore/Sales/Model/Visitor/visitorElement.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/globals.dart';

class AssetsList extends StatefulWidget {
  const AssetsList({super.key});

  @override
  State<AssetsList> createState() => _AssetsListState();
}

class _AssetsListState extends State<AssetsList> {
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

  final PagingController<int, VisitorElement> pagingController =
      PagingController(firstPageKey: 1);
  @override
  void initState() {
    pagingController.addPageRequestListener((pageKey) {
      List<VisitorElement> newItems = (List.generate(
              29,
              (i) => VisitorElement.fromJson({}).copyWith(
                    visit_ticket_number: "cdjcdjncdjncjdn",
                    visitor_name: "cdjcdjncdjncjdn",
                    visitor_ph_number: "cdjcdjncdjncjdn",
                    in_out_status: "cdjcdjncdjncjdn",
                  )))
          // .map((e) => VisitorElement.fromJson(e))
          // .map((e) => 1)
          .toList();
      pagingController.appendLastPage(newItems);
      Get.find<OwnerController>().apiClient.postData(
          "asset/getAllAssets?recordsPerPage=10&next=$pageKey ",
          {"keyword": ""}).then((v) {
        // "message": "Visitor details fetched Successfully!",
        if (v.data["message"] == "Visitor details fetched Successfully!") {
          // List<VisitorElement> newItems = (v.data["result"] as List)
          //     .map((e) => VisitorElement.fromJson(e))
          //     // .map((e) => 1)
          //     .toList();
          final isLastPage = newItems.length < 10;
          if (isLastPage) {
            pagingController.appendLastPage(newItems);
          } else {
            final nextPageKey = pageKey + newItems.length;
            pagingController.appendPage(newItems, nextPageKey);
          }
        }
        if (v.data["message"] == "no asset found") {
          Snacks.redSnack(
            "No asset found",
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
          'Asset List',
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
              Expanded(flex: 2, child: Text('Asset Name', style: headingstyle)),
              const Gap(4),
              Expanded(flex: 2, child: Text('Category', style: headingstyle)),
              const Gap(4),
              Expanded(flex: 2, child: Text('Asset Cost', style: headingstyle)),
              const Gap(4),
              Expanded(
                  flex: 2, child: Text('Invoice No.', style: headingstyle)),
              const Gap(4),
              Expanded(
                  flex: 1,
                  child: Text(
                    'Logs',
                    style: headingstyle,
                    textAlign: TextAlign.center,
                  )),
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
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Text(item.visitor_name ?? "--",
                              style: elementTextstyle)),
                      const Gap(4),
                      Expanded(
                          flex: 2,
                          child: Text(item.visitor_ph_number ?? "--",
                              style: elementTextstyle)),
                      const Gap(4),
                      Expanded(
                          flex: 2,
                          child: Text(item.visitor_ph_number ?? "--",
                              style: elementTextstyle)),
                      const Gap(4),
                      Expanded(
                          flex: 2,
                          child: Text(item.in_out_status ?? "--",
                              style: const TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 10,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ))),
                      const Gap(4),
                      Expanded(
                        flex: 1,
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
          )),
          Container(
              color: Colors.white,
              child: CustomButton(
                title: "Add Asset",
                onTap: () {
                  Get.off( AssetEntry(), id: ownerNavigationKey);
                },
              ).paddingSymmetric(vertical: 12))
        ],
      ).paddingSymmetric(
          vertical: Dimensions.vericalBodyPad,
          horizontal: Dimensions.horizontalBodyPad),
    );
  }
}
