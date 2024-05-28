import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/Model/Chamber/chamber.dart';
import 'package:moolwmsstore/Owner/View/Chamber/chamberDesigning.dart';
import 'package:moolwmsstore/Owner/View/Common/customButton.dart';
import 'package:moolwmsstore/Owner/View/Chamber/addChamber.dart';
import 'package:moolwmsstore/common/controller/chamberController.dart';
import 'package:moolwmsstore/utils/globals.dart';

////@RoutePage()
class ChamberList extends StatefulWidget {
  
  ChamberList({super.key, required this.warehouse_id});
  var warehouse_id;

  @override
  State<ChamberList> createState() => _ChamberListState();
}

class _ChamberListState extends State<ChamberList> {
  List<Chamber>? chambers;
  getAllChambers() async {
    await Get.find<OwnerController>()
        .getAllChamberByWareHouseId(widget.warehouse_id)
        .then((value) {
      setState(() {
        chambers = value;
      });
    });
  }

  @override
  void initState() {
    getAllChambers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: CustomButton(
          title: "Add Chamber",
          onTap: () {
            Get.to(AddChamberView(
              warehouse_id: widget.warehouse_id,
            ));
          },
        ).paddingSymmetric(horizontal: 12),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          //  centerTitle: false,
          // shape: const RoundedRectangleBorder(
          //   borderRadius: BorderRadius.vertical(
          //     bottom: Radius.circular(34),
          //   ),
          // ),
          backgroundColor: Colors.black,
          title: Text(
            'chamber_list'.tr,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: chambers == null
            ? const Center(
                child: SpinKitDoubleBounce(
                  color: Color(0xFF5A57FF),
                ),
              )
            : chambers!.isEmpty
                ? const Center(
                    child: Text("Chambers List is Empty\nPlease Add Chambers"),
                  )
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: chambers!.length,
                            itemBuilder: (context, i) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 9, horizontal: 12),
                                child: Container(
                                  width: double.infinity,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFFAF9FF),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Color(0x195A57FF)),
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
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Chamber No.',
                                                style: TextStyle(
                                                  color: Color(0xFF5A57FF),
                                                  fontSize: 12,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                              const Gap(4),
                                              Text(
                                                i < 9
                                                    ? "0${i + 1}"
                                                    : "${i + 1}",
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Racking Type',
                                                style: TextStyle(
                                                  color: Color(0xFF5A57FF),
                                                  fontSize: 12,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                              const Gap(4),
                                              Text(
                                                chambers![i].type_of_racking ??
                                                    "",
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: 2 == 2
                                              ? InkWell(
                                                  onTap: () {
                                                    Get.find<ChamberController>().designChamber(chambers![i]);
                                                   
                                                  },
                                                  child: Container(
                                                    height: 42,
                                                    decoration: ShapeDecoration(
                                                      color: const Color(
                                                          0xFFFFDEE0),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        side: const BorderSide(
                                                            width: 1,
                                                            color: Color(
                                                                0x33E23744)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                    ),
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons.error,
                                                          color: Colors.red,
                                                        ),
                                                        Gap(4),
                                                        Text(
                                                          'Layout Pending',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFFE23744),
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'SF Pro Display',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ).paddingSymmetric(
                                                      vertical: 10),
                                                )
                                              : const Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      // crossAxisAlignment: ,
                                                      // mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Text(
                                                          'Total Capacity',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF5A57FF),
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'SF Pro Display',
                                                            fontWeight:
                                                                FontWeight.w300,
                                                          ),
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          '70',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      4),
                                                          child: Text(
                                                            'MT',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF8A8A8A),
                                                              fontSize: 8.46,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Divider(
                                                      color: Color(0xFFC2C0FF),
                                                    ),
                                                    Row(
                                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          'Total Capacity',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF5A57FF),
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'SF Pro Display',
                                                            fontWeight:
                                                                FontWeight.w300,
                                                          ),
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          '70',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      4),
                                                          child: Text(
                                                            'MT',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF8A8A8A),
                                                              fontSize: 8.46,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ],
                    ),
                  ));
  }
}

// class ChamberListCard extends StatelessWidget {
// const ChamberList({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context){
//     return Container();
//   }
// }