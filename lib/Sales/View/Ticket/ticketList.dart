// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';
// import 'package:moolwmsstore/Sales/Model/PurchaseOrder.dart';
// import 'package:moolwmsstore/Sales/controller/salesController.dart';
// import 'package:moolwmsstore/View/Styles/Styles..dart';
// import 'package:moolwmsstore/View/common/customButton.dart';
// import 'package:moolwmsstore/View/common/myTextField.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';
import 'package:moolwmsstore/Sales/Model/Indent/indentElement.dart';
import 'package:moolwmsstore/Sales/View/Ticket/createticket.dart';
import 'package:moolwmsstore/Sales/View/Ticket/indentInOut.dart';
import 'package:moolwmsstore/Sales/View/Ticket/viewindent.dart';
import 'package:moolwmsstore/Sales/View/common/widgets/customButton.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/utils/globals.dart';

class TicketList extends StatefulWidget {
  const TicketList({super.key});

  @override
  State<TicketList> createState() => _TicketListState();
}

class _TicketListState extends State<TicketList> {
  final DateFormat formatter = DateFormat('dd-MM-yyyy');

  DateFormat timeformatter = DateFormat('h:mm a');

  final PagingController<int, IndentElement> pagingController =
      PagingController(firstPageKey: 1);

  @override
  @override
  void initState() {
    pagingController.addPageRequestListener((pageKey) {
      Get.find<SalesController>().apiClient.postData(
          "user/getAllPoList?recordsPerPage=20&next=$pageKey ",
          {"keyword": "", "date": "", "warehouse_id": null}).then((v) {
        if (v.data["message"] == "Data Retrieved Successfully!") {
          List<IndentElement> newItems = (v.data["result"] as List)
              .map((e) => IndentElement.fromJson(e))
              .toList();
          final isLastPage = newItems.length < 20;
          if (isLastPage) {
            pagingController.appendLastPage(newItems);
          } else {
            final nextPageKey = pageKey + newItems.length;
            pagingController.appendPage(newItems, nextPageKey);
          }
        }
      });
    });
    super.initState();
  }

  @override
  bool loading = true;
  @override
  Widget build(BuildContext context) {
    final List tags = [
      {
        "title": 'Ticket ID',
        "flex": 1,
      },
      {"title": 'Order No.', "flex": 1},
      {"title": 'Shipped To', "flex": 1},
      {"title": "Date & Time", "flex": 1},
      {"title": "In/Out", "flex": 1},
      {"title": "Info", "flex": 1},
      // {"title": "icon", "flex": 1},
    ];

    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: const Color(0xFF232323),
          title: const Text(
            'Ticket List',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w500,
              //height: 0,
              letterSpacing: -0.80,
            ),
          ),
        ),
        body: Column(
          children: [
            const Gap(14),
            Row(
              children: List.generate(tags.length, (index) {
                if (tags[index]["title"] == "Info") {
                  return IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Text(
                        tags[index]["title"],
                        style: const TextStyle(
                          color: Color(0xFF5A57FF),
                          fontSize: 10,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ));
                }

                if (tags[index]["title"] == "In/Out") {
                  return IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Text(
                        tags[index]["title"],
                        style: const TextStyle(
                          color: Color(0xFF5A57FF),
                          fontSize: 10,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ));
                }

                return Expanded(
                    flex: tags[index]["flex"],
                    child: Text(
                      tags[index]["title"],
                      style: const TextStyle(
                        color: Color(0xFF5A57FF),
                        fontSize: 10,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                      ),
                    ));
              }),
            ).paddingSymmetric(horizontal: 20),
            Expanded(
                child: PagedListView<int, IndentElement>(
              pagingController: pagingController,
              builderDelegate: PagedChildBuilderDelegate<IndentElement>(
                itemBuilder: (context, item, index) {
                  return Container(
                    height: 70,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFAF9FF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x195A57FF)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: List.generate(tags.length, (index) {
                        if (tags[index]["title"] == "Info") {
                          return IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                Get.to(
                                    Viewindent(
                                      indentElement: item,
                                    ),
                                    id: salesNavigationKey);
                              },
                              icon: Image.asset(
                                "assets/icons/Eye.png",
                                height: 22,
                              ));
                        }
                        if (tags[index]["title"] == "In/Out") {
                          return IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                Get.to(IndentInOut(indentElement: item),
                                    id: salesNavigationKey);
                              },
                              icon: Image.asset(
                                "assets/icons/check_in.png",
                                height: 32,
                              ));
                        }
                        if (tags[index]["title"] == "icon") {
                          return IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                                color: Colors.black,
                              ));
                        }
                        if (tags[index]["title"] == 'Ticket ID') {
                          return Expanded(
                              flex: tags[index]["flex"],
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  item.ticket_id ?? "--",
                                  style: const TextStyle(
                                    color: Color(0xFF353535),
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ));
                        }
                        if (tags[index]["title"] == 'Order No.') {
                          return Expanded(
                              flex: tags[index]["flex"],
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  item.order_number ?? "--",
                                  style: const TextStyle(
                                    color: Color(0xFF353535),
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ));
                        }
                        if (tags[index]["title"] == 'Order No.') {
                          return Expanded(
                              flex: tags[index]["flex"],
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  item.ticket_id ?? "--",
                                  style: const TextStyle(
                                    color: Color(0xFF353535),
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ));
                        }
                        if (tags[index]["title"] == 'Shipped To') {
                          return Expanded(
                              flex: tags[index]["flex"],
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  item.shipped_to_company ?? "--",
                                  style: const TextStyle(
                                    color: Color(0xFF353535),
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ));
                        }
                        if (tags[index]["title"] == "Date & Time") {
                          return Expanded(
                              flex: tags[index]["flex"],
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      item.dateTime == null
                                          ? "--"
                                          : formatter.format(
                                              item.dateTime as DateTime),
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
                                            text: item.dateTime == null
                                                ? "--"
                                                : timeformatter.format(
                                                    item.dateTime as DateTime),
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
                                ),
                              ));
                        }

                        return Expanded(
                            flex: tags[index]["flex"],
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "contents[index][" "]",
                                style: TextStyle(
                                  color: Color(0xFF353535),
                                  fontSize: 12,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ));
                      }),
                    ),
                  ).paddingSymmetric(vertical: 4, horizontal: 10);
                },
              ),
            )),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.white.withOpacity(0.3),
                    Colors.white,
                    Colors.white,
                  ])),
              child: Column(
                children: [
                  CustomButton(
                    colors: const [Color(0xFF5A57FF), Color(0xFF5A57FF)],
                    onTap: () {
                      Get.off(const Createticket(), id: salesNavigationKey);
                      // Get.off(AddCompany(), id: salesNavigationKey);
                    },
                    title: 'Add Ticket',
                  ).paddingSymmetric(horizontal: 12, vertical: 16),
                ],
              ),
            ),
          ],
        ));
  }
}

// ////@RoutePage()
// class  TicketList extends StatelessWidget {
//    TicketList({super.key});

//   final DateFormat formatter = DateFormat('dd-MM-yyyy');
//   final DateFormat timeformatter = DateFormat.jms();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           context.isPhone
//               ? Container()
//               : Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 12),
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(horizontal: 24),
//                     width: double.infinity,
//                     height: 60,
//                     decoration: const BoxDecoration(
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Color(0x19000000),
//                           blurRadius: 2,
//                           offset: Offset(0, 1),
//                           spreadRadius: 0,
//                         )
//                       ],
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         const Text(
//                           'List of Items',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 18,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         CustomButton2(
//                                 leftIcon: "assets/icons/Add Red2.png",
//                                 title: "Create New")
//                             .paddingSymmetric(vertical: 10, horizontal: 12)
//                       ],
//                     ),
//                   ),
//                 ),
//           context.isPhone
//               ? Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
//                   child: Row(
//                     children: [
//                       Expanded(
//                           child: MyTextField(
//                         prefixIcon: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Image.asset(
//                             "assets/icons/Search Icon.png",
//                             height: 12,
//                           ),
//                         ),
//                         labelText: "Search",
//                       )),
//                     ],
//                   ),
//                 )
//               : Padding(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//                   child: Row(
//                     children: [
//                       Expanded(child: Container()),
//                       Expanded(
//                           child: MyTextField(
//                         prefixIcon: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Image.asset(
//                             "assets/icons/Search Icon.png",
//                             height: 12,
//                           ),
//                         ),
//                         labelText: "Search",
//                       )),
//                     ],
//                   ),
//                 ),
//           Container(
//               alignment: Alignment.center,
//               width: double.infinity,
//               height: 47,
//               padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
//               decoration: const BoxDecoration(color: Colors.black),
//               child: Row(
//                 children: [
//                   Container(
//                     alignment: Alignment.center,
//                     width: 44,
//                     child: const Text(
//                       "S.No.",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 14,
//                         fontWeight: FontWeight.w700,
//                       ),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                   const Expanded(
//                     flex: 2,
//                     child: Text(
//                       "Item Name",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 14,
//                         fontWeight: FontWeight.w700,
//                       ),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                   const Expanded(
//                     flex: 2,
//                     child: Text(
//                       "Date Created",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 14,
//                         fontWeight: FontWeight.w700,
//                       ),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                   context.isPhone
//                       ? Container()
//                       : const Expanded(
//                           flex: 2,
//                           child: Text(
//                             "Order No.",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 14,
//                               fontWeight: FontWeight.w700,
//                             ),
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ),
//                   context.isPhone
//                       ? Container()
//                       : const Expanded(
//                           flex: 2,
//                           child: Text(
//                             "Vendor ID",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 14,
//                               fontWeight: FontWeight.w700,
//                             ),
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ),
//                   context.isPhone
//                       ? Container()
//                       : const Expanded(
//                           flex: 2,
//                           child: Text(
//                             "Description",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 14,
//                               fontWeight: FontWeight.w700,
//                             ),
//                             overflow: TextOverflow.ellipsis,
//                             //  textAlign: TextAlign.center,
//                           ),
//                         ),
//                   context.isPhone
//                       ? Container()
//                       : const Expanded(
//                           flex: 2,
//                           child: Text(
//                             "Time",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 14,
//                               fontWeight: FontWeight.w700,
//                             ),
//                             overflow: TextOverflow.ellipsis,
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                   context.isPhone
//                       ? Container()
//                       : IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.more_horiz,
//                             color: Colors.black,
//                           )),
//                   IconButton(
//                       onPressed: () {},
//                       icon: const Icon(
//                         Icons.more_horiz,
//                         color: Colors.black,
//                       ))
//                 ],
//               )),
//           const Gap(4),
//           GetBuilder<SalesController>(initState: (state) {
//             Get.find<SalesController>().get TicketList();
//           }, builder: (salesController) {
//             return Expanded(
//                 child: ListView.builder(
//                     itemCount: salesController.purchaseOrders.length,
//                     itemBuilder: (context, i) {
//                       final PurchaseOrder po =
//                           salesController.purchaseOrders[i];
//                       return Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 8, vertical: 4),
//                         child: Container(
//                           width: double.infinity,

//                           //  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
//                           clipBehavior: Clip.antiAlias,
//                           decoration: ShapeDecoration(
//                             color: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             shadows: const [
//                               BoxShadow(
//                                 color: Color(0x0C000000),
//                                 blurRadius: 2,
//                                 offset: Offset(0, 1),
//                                 spreadRadius: 0,
//                               )
//                             ],
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 10, vertical: 4),
//                             child: Row(
//                               children: [
//                                 Container(
//                                   alignment: Alignment.center,
//                                   width: 40,
//                                   child: Text(
//                                     i < 9 ? "0${i + 1}" : "${i + 1}",
//                                     style: const TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w700,
//                                     ),
//                                     overflow: TextOverflow.ellipsis,
//                                   ),
//                                 ),
//                                 Expanded(
//                                   flex: 2,
//                                   child: Text(
//                                     po.name ?? "",
//                                     style: const TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w700,
//                                     ),
//                                     overflow: TextOverflow.ellipsis,
//                                   ),
//                                 ),
//                                 Expanded(
//                                   flex: 2,
//                                   child: Text(
//                                     po.created_at == null
//                                         ? ""
//                                         : formatter
//                                             .format(po.created_at as DateTime),
//                                     style: const TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w700,
//                                     ),
//                                     overflow: TextOverflow.ellipsis,
//                                   ),
//                                 ),
//                                 context.isPhone
//                                     ? Container()
//                                     : Expanded(
//                                         flex: 2,
//                                         child: Text(
//                                           po.order_number ?? "",
//                                           style: const TextStyle(
//                                             color: Colors.black,
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.w700,
//                                           ),
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                       ),
//                                 context.isPhone
//                                     ? Container()
//                                     : Expanded(
//                                         flex: 2,
//                                         child: Text(
//                                           po.vendor_id ?? "",
//                                           style: const TextStyle(
//                                             color: Colors.black,
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.w700,
//                                           ),
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                       ),
//                                 context.isPhone
//                                     ? Container()
//                                     : const Expanded(
//                                         flex: 2,
//                                         child: Text(
//                                           "A small description goes here",
//                                           style: TextStyle(
//                                             color: Colors.black,
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.w700,
//                                           ),
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                       ),
//                                 context.isPhone
//                                     ? Container()
//                                     : Expanded(
//                                         flex: 2,
//                                         child: Padding(
//                                           padding: const EdgeInsets.symmetric(
//                                               horizontal: 12),
//                                           child: Container(
//                                             // width: 80,
//                                             height: 38.90,
//                                             decoration: const BoxDecoration(
//                                                 color: Color(0xFFEFEFEF)),
//                                             child: Row(
//                                               mainAxisSize: MainAxisSize.min,
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.spaceEvenly,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               children: [
//                                                 Text(
//                                                   timeformatter.format(po
//                                                       .created_at as DateTime),
//                                                   textAlign: TextAlign.center,
//                                                   style: const TextStyle(
//                                                     color: Colors.black,
//                                                     fontSize: 13.89,
//                                                     fontWeight: FontWeight.w600,
//                                                   ),
//                                                 ),
//                                                 // const Icon(
//                                                 //   Icons.more_vert,
//                                                 //   color: Colors.black,
//                                                 //   size: 12,
//                                                 // ),
//                                                 // const Text(
//                                                 //   '40',
//                                                 //   textAlign: TextAlign.center,
//                                                 //   style: TextStyle(
//                                                 //     color: Colors.black,
//                                                 //     fontSize: 13.89,
//                                                 //     fontWeight: FontWeight.w600,
//                                                 //   ),
//                                                 // ),
//                                                 // const Icon(
//                                                 //   Icons.more_vert,
//                                                 //   color: Colors.black,
//                                                 //   size: 12,
//                                                 // ),
//                                                 // const Text(
//                                                 //   '00',
//                                                 //   textAlign: TextAlign.center,
//                                                 //   style: TextStyle(
//                                                 //     color: Colors.black,
//                                                 //     fontSize: 13.89,
//                                                 //     fontWeight: FontWeight.w600,
//                                                 //   ),
//                                                 // ),
//                                                 // const Text(
//                                                 //   'AM',
//                                                 //   textAlign: TextAlign.center,
//                                                 //   style: TextStyle(
//                                                 //     color: Colors.black,
//                                                 //     fontSize: 13.89,
//                                                 //     fontWeight: FontWeight.w600,
//                                                 //   ),
//                                                 // ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                 context.isPhone
//                                     ? Container()
//                                     : IconButton(
//                                         onPressed: () {},
//                                         icon: Image.asset(
//                                           "assets/icons/Eye.png",
//                                           height: 22,
//                                         )),
//                                 IconButton(
//                                     onPressed: () {
//                                       // context.pushRoute(const ChamberViewRoute());
//                                       // context
//                                       //     .pushRoute(const ViewWarehouseDetailsRoute());
//                                     },
//                                     icon: const Icon(
//                                       Icons.more_horiz,
//                                       color: Colors.black,
//                                     ))
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     }));
//           }),
//           context.isPhone ? Container() : const Gap(20),
//           context.isPhone
//               ? CustomButton2(title: "Create New Purchase Order")
//                   .paddingSymmetric(vertical: 26, horizontal: 12)
//               : Container()
//         ],
//       ),
//       appBar: AppBar(
//         centerTitle: false,
//         // shape: const RoundedRectangleBorder(
//         //   borderRadius: BorderRadius.vertical(
//         //     bottom: Radius.circular(34),
//         //   ),
//         // ),
//         backgroundColor: AppColors.scaffoldBackgroundColor,
//         title: const Text(
//           'Purchase Order List',
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 22,
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//       ),
//     );

//   }
// }
