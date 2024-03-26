import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:moolwmsstore/Controller/salesController.dart';
import 'package:moolwmsstore/Data/Model/Sales/PurchaseOrder.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/customButton.dart';
import 'package:moolwmsstore/View/common/myTextField.dart';

@RoutePage()
class PoList extends StatelessWidget {
  PoList({super.key});

  final DateFormat formatter = DateFormat('dd-MM-yyyy');
  final DateFormat timeformatter = DateFormat.jms();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          context.isPhone
              ? Container()
              : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    width: double.infinity,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 2,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'List of Items',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        CustomButton2(
                                leftIcon: "assets/icons/Add Red2.png",
                                title: "Create New")
                            .paddingSymmetric(vertical: 10, horizontal: 12)
                      ],
                    ),
                  ),
                ),
          context.isPhone
              ? Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
                  child: Row(
                    children: [
                      Expanded(
                          child: MyTextField(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            "assets/icons/Search Icon.png",
                            height: 12,
                          ),
                        ),
                        labelText: "Search",
                      )),
                    ],
                  ),
                )
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Row(
                    children: [
                      Expanded(child: Container()),
                      Expanded(
                          child: MyTextField(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            "assets/icons/Search Icon.png",
                            height: 12,
                          ),
                        ),
                        labelText: "Search",
                      )),
                    ],
                  ),
                ),
          Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 47,
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: const BoxDecoration(color: Colors.black),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 44,
                    child: const Text(
                      "S.No.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: Text(
                      "Item Name",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: Text(
                      "Date Created",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  context.isPhone
                      ? Container()
                      : const Expanded(
                          flex: 2,
                          child: Text(
                            "Order No.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                  context.isPhone
                      ? Container()
                      : const Expanded(
                          flex: 2,
                          child: Text(
                            "Vendor ID",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                  context.isPhone
                      ? Container()
                      : const Expanded(
                          flex: 2,
                          child: Text(
                            "Description",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.ellipsis,
                            //  textAlign: TextAlign.center,
                          ),
                        ),
                  context.isPhone
                      ? Container()
                      : const Expanded(
                          flex: 2,
                          child: Text(
                            "Time",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                  context.isPhone
                      ? Container()
                      : IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      ))
                ],
              )),
          const Gap(4),
          GetBuilder<SalesController>(initState: (state) {
            Get.find<SalesController>().getPoList();
          }, builder: (salesController) {
            return Expanded(
                child: ListView.builder(
                    itemCount: salesController.purchaseOrders.length,
                    itemBuilder: (context, i) {
                      final PurchaseOrder po =
                          salesController.purchaseOrders[i];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: Container(
                          width: double.infinity,

                          //  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x0C000000),
                                blurRadius: 2,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 40,
                                  child: Text(
                                    i < 9 ? "0${i + 1}" : "${i + 1}",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    po.name ?? "",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    po.created_at == null
                                        ? ""
                                        : formatter
                                            .format(po.created_at as DateTime),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                context.isPhone
                                    ? Container()
                                    : Expanded(
                                        flex: 2,
                                        child: Text(
                                          po.order_number ?? "",
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                context.isPhone
                                    ? Container()
                                    : Expanded(
                                        flex: 2,
                                        child: Text(
                                          po.vendor_id ?? "",
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                context.isPhone
                                    ? Container()
                                    : const Expanded(
                                        flex: 2,
                                        child: Text(
                                          "A small description goes here",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                context.isPhone
                                    ? Container()
                                    : Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12),
                                          child: Container(
                                            // width: 80,
                                            height: 38.90,
                                            decoration: const BoxDecoration(
                                                color: Color(0xFFEFEFEF)),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  timeformatter.format(po
                                                      .created_at as DateTime),
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 13.89,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                // const Icon(
                                                //   Icons.more_vert,
                                                //   color: Colors.black,
                                                //   size: 12,
                                                // ),
                                                // const Text(
                                                //   '40',
                                                //   textAlign: TextAlign.center,
                                                //   style: TextStyle(
                                                //     color: Colors.black,
                                                //     fontSize: 13.89,
                                                //     fontWeight: FontWeight.w600,
                                                //   ),
                                                // ),
                                                // const Icon(
                                                //   Icons.more_vert,
                                                //   color: Colors.black,
                                                //   size: 12,
                                                // ),
                                                // const Text(
                                                //   '00',
                                                //   textAlign: TextAlign.center,
                                                //   style: TextStyle(
                                                //     color: Colors.black,
                                                //     fontSize: 13.89,
                                                //     fontWeight: FontWeight.w600,
                                                //   ),
                                                // ),
                                                // const Text(
                                                //   'AM',
                                                //   textAlign: TextAlign.center,
                                                //   style: TextStyle(
                                                //     color: Colors.black,
                                                //     fontSize: 13.89,
                                                //     fontWeight: FontWeight.w600,
                                                //   ),
                                                // ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                context.isPhone
                                    ? Container()
                                    : IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          "assets/icons/Eye.png",
                                          height: 22,
                                        )),
                                IconButton(
                                    onPressed: () {
                                      // context.pushRoute(const ChamberViewRoute());
                                      // context
                                      //     .pushRoute(const ViewWarehouseDetailsRoute());
                                    },
                                    icon: const Icon(
                                      Icons.more_horiz,
                                      color: Colors.black,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      );
                    }));
          }),
          context.isPhone ? Container() : const Gap(20),
          context.isPhone
              ? CustomButton2(title: "Create New Purchase Order")
                  .paddingSymmetric(vertical: 26, horizontal: 12)
              : Container()
        ],
      ),
      appBar: AppBar(
        centerTitle: false,
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(
        //     bottom: Radius.circular(34),
        //   ),
        // ),
        backgroundColor: AppColors.scaffoldBackgroundColor,
        title: const Text(
          'Purchase Order List',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
