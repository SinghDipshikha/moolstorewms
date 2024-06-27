import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/Model/Asset/assetElement.dart';
import 'package:moolwmsstore/Owner/View/Assets/assetEntry.dart';
import 'package:moolwmsstore/Owner/View/Common/ownerCommon.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/globals.dart';

class AssetsList extends StatefulWidget {
  int warehouseId;
  AssetsList({super.key, required this.warehouseId});

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

  final PagingController<int, AssetElement> pagingController =
      PagingController(firstPageKey: 1);
  int recordsPerPage = 20;
  bool noAssestsFound = false;
  @override
  void initState() {
    pagingController.addPageRequestListener((pageKey) {
      Get.find<OwnerController>()
          .ownerRepo
          .getAssetsList(
              recordsPerPage: recordsPerPage,
              page: pageKey,
              warehouse_id: widget.warehouseId)
          .then((v) {
        if (v != null) {
          if (v.length < recordsPerPage) {
            pagingController.appendLastPage(v);
          } else {
            final nextPageKey = pageKey + 1;
            pagingController.appendPage(v, nextPageKey);
          }
        } else if (pageKey == 1 && v == null) {
          setState(() {
            noAssestsFound = true;
          });
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
              child: noAssestsFound
                  ? const Center(
                      child: Text("No Assests found for this warehouse"),
                    )
                  : PagedListView<int, AssetElement>(
                      pagingController: pagingController,
                      builderDelegate: PagedChildBuilderDelegate<AssetElement>(
                        itemBuilder: (context, item, index) {
                          return Container(
                            width: 382,
                            height: 40,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFAF9FF),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0x195A57FF)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Text(item.asset_name ?? "--",
                                        style: elementTextstyle)),
                                const Gap(4),
                                Expanded(
                                    flex: 2,
                                    child: Text(
                                        item.asset_category == null
                                            ? "--"
                                            : Get.find<OwnerController>()
                                                .getCategotryname(
                                                    item.asset_category ?? 0),
                                        style: elementTextstyle)),
                                const Gap(4),
                                Expanded(
                                    flex: 2,
                                    child: Text(
                                        item.asset_cost.toString() ?? "--",
                                        style: elementTextstyle)),
                                const Gap(4),
                                Expanded(
                                    flex: 2,
                                    child: Text(item.invoice_no ?? "--",
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
                  Get.off(
                      AssetEntry(
                        warehouseId: widget.warehouseId,
                      ),
                      id: ownerNavigationKey);
                },
              ).paddingSymmetric(vertical: 12))
        ],
      ).paddingSymmetric(
          vertical: Dimensions.vericalBodyPad,
          horizontal: Dimensions.horizontalBodyPad),
    );
  }
}
