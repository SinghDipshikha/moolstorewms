import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Chamber/gridChamber.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/View/Chamber/showPalletProduct.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:zoom_widget/zoom_widget.dart';

class ViewChamber extends StatefulWidget {
  int chaberId;
  ViewChamber({super.key, required this.chaberId});

  @override
  State<ViewChamber> createState() => _ViewChamberState();
}

class _ViewChamberState extends State<ViewChamber> {
  bool loading = true;
  late GridChamber gridChamber;
  int currentlySelectedStackinglevel = 1;
  GridItem? checkChmaberStatus(String palletCordianate) {
    return gridChamber.grid!.firstWhereOrNull((griditem) {
      return griditem.pallet == palletCordianate;
    });
  }

  late int columnLenghth;
  late int rowLength;
  int additionalSidesEach = 2;
  @override
  void initState() {
    Get.find<OwnerController>()
        .ownerRepo
        .getChamberData(widget.chaberId)
        .then((v) {
      if (v != null) {
        setState(() {
          gridChamber = v;
          columnLenghth = additionalSidesEach +
              (gridChamber.maxColumn - gridChamber.minColumn + 1);
          rowLength = additionalSidesEach +
              (gridChamber.maxRow - gridChamber.minRow + 1);
          loading = false;
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Chamber View', style: TextStyles.appBarTextStyle),
      ),
      body: loading
          ? const Center(
              child: SpinKitDoubleBounce(
                color: Color(0xFF5A57FF),
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 39,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFAF9FF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x195E57FC)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // TODO : Change chamberid with chamber number
                        Text(
                          'Chamber No. ${gridChamber.chamber_id}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFF353535),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.32,
                          ),
                        ),
                        const Spacer(),

                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '05°',
                                style: TextStyle(
                                  color: Color(0xFFACACAC),
                                  fontSize: 10,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: 'c',
                                style: TextStyle(
                                  color: Color(0xFFACACAC),
                                  fontSize: 8,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: TextStyle(
                                  color: Color(0xFFACACAC),
                                  fontSize: 5.32,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: '- ',
                                style: TextStyle(
                                  color: Color(0xFFACACAC),
                                  fontSize: 6.73,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: '31°',
                                style: TextStyle(
                                  color: Color(0xFFACACAC),
                                  fontSize: 10,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: 'c',
                                style: TextStyle(
                                  color: Color(0xFFACACAC),
                                  fontSize: 8,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  DropdownButtonFormField2<int>(
                    value: currentlySelectedStackinglevel,
                    decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                          gapPadding: 0,
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 27, 23, 251),
                              width: 0.4),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      enabledBorder: const OutlineInputBorder(
                          gapPadding: 0,
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 169, 153, 246),
                              width: 0.2),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        gapPadding: 0,
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    hint: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Select Stacking level',
                            style: TextStyle(
                              color: Color(0xFF595959),
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    items: List.generate(gridChamber.max_stack_level, (i) {
                      return i + 1;
                    }).map((item) {
                      return DropdownMenuItem<int>(
                        value: item,
                        child: Row(
                          children: [
                            Text(
                              "Current Stacking Level :  $item",
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Required';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          currentlySelectedStackinglevel = value;
                        });
                      }
                    },
                    onSaved: (value) {
                      // ownerController.selectedTempType = value;
                      // ownerController.update();
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.zero,
                      //  decoration: BoxDecoration(color: Colors.red)
                    ),
                    iconStyleData: IconStyleData(
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ).paddingOnly(right: 10),
                      iconSize: 24,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.only(left: 6),
                    ),
                  ).paddingSymmetric(vertical: 12),
                  SizedBox(
                      height: context.height * 0.6,
                      width: double.infinity,
                      child: Zoom(
                        opacityScrollBars: 1,
                        centerOnScale: true,
                        initTotalZoomOut: true,
                        doubleTapZoom: false,
                        backgroundColor: Colors.white,
                        child: Column(
                          children: List.generate(columnLenghth, (c) {
                            int columnAdress = gridChamber.minColumn + c - 1;
                            return Row(
                              children: List.generate(rowLength, (r) {
                                if (r == 0 && c == 0) {
                                  return Container(
                                    height: 100,
                                    width: 100,
                                    decoration: ShapeDecoration(
                                      color: Colors.red,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                    ),
                                    child: const Center(
                                      child: Text("X"),
                                    ),
                                  ).paddingAll(4);
                                }
                                if (c == columnLenghth - 1 &&
                                    r == rowLength - 1) {
                                  return Container(
                                    height: 100,
                                    width: 100,
                                    decoration: ShapeDecoration(
                                      color: Colors.red,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                    ),
                                    child: const Center(
                                      child: Text("X"),
                                    ),
                                  ).paddingAll(4);
                                }
                                if (c == 0 && r == rowLength - 1) {
                                  return Container(
                                    height: 100,
                                    width: 100,
                                    decoration: ShapeDecoration(
                                      color: Colors.red,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                    ),
                                    child: const Center(
                                      child: Text("X"),
                                    ),
                                  ).paddingAll(4);
                                }
                                if (c == columnLenghth - 1 && r == 0) {
                                  return Container(
                                    height: 100,
                                    width: 100,
                                    decoration: ShapeDecoration(
                                      color: Colors.red,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                    ),
                                    child: const Center(
                                      child: Text("X"),
                                    ),
                                  ).paddingAll(4);
                                }
                                int rowAdress = gridChamber.minRow + r - 1;
                                String address =
                                    "R${rowAdress}C${columnAdress}L$currentlySelectedStackinglevel";

                                GridItem? gridItem =
                                    checkChmaberStatus(address);
                                if (gridItem != null) {
                                  bool contain = false;

                                  if (gridItem.products != null) {
                                    if (gridItem.products!.isNotEmpty) {
                                      contain = true;
                                    }
                                  }
                                  if (gridItem.status == "P") {
                                    return InkWell(
                                      onTap: () {
                                        if (contain) {
                                          Get.bottomSheet(
                                            ShowPalletProduct(
                                              pallet: gridItem,
                                              
                                            ),
                                            shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                      top: Radius.circular(
                                                          10.0)),
                                            ),
                                            
                                            // isDismissible: false,
                                          );
                                        }
                                      },
                                      child: Container(
                                              height: 100,
                                              width: 100,
                                              decoration: ShapeDecoration(
                                                color: contain
                                                    ? null
                                                    : Colors.green[800],
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                              ),
                                              child: contain
                                                  ? Image.asset(
                                                      "assets/icons/pallet.png",
                                                      fit: BoxFit.cover,
                                                    )
                                                  : Center(
                                                      child: Text(
                                                      address,
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    )))
                                          .paddingAll(4),
                                    );
                                  }
                                }

                                if (r == rowLength - 1 && c != 0) {
                                  return SizedBox(
                                    height: 100,
                                    width: 100,
                                    child:
                                        Center(child: Text("C$columnAdress")),
                                    // color: Colors.red,
                                  ).paddingAll(4);
                                }
                                if (c == columnLenghth - 1 && r != 0) {
                                  return SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: Center(child: Text("R$rowAdress ")),
                                    // color: Colors.red,
                                  ).paddingAll(4);
                                }
                                if (r == 0 && c != 0) {
                                  return SizedBox(
                                    height: 100,
                                    width: 100,
                                    child:
                                        Center(child: Text("C$columnAdress")),
                                    // color: Colors.red,
                                  ).paddingAll(4);
                                }

                                if (r != 0 && c == 0) {
                                  return SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: Center(child: Text("R$rowAdress ")),
                                    // color: Colors.red,
                                  ).paddingAll(4);
                                }

                                return Container(
                                  height: 100,
                                  width: 100,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFEAEAEA),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(22)),
                                  ),
                                  child: const Center(
                                    child: Text("X"),
                                  ),
                                ).paddingAll(4);
                              }),
                            );
                          }),
                        ).paddingSymmetric(vertical: 22, horizontal: 22),
                      )),
                  const Gap(10),
                  Column(
                    children:
                        List.generate(gridChamber.grid!.length, (palletIndex) {
                      if (gridChamber.grid![palletIndex].products != null) {
                        return gridChamber.grid![palletIndex].products!.isEmpty
                            ? Container()
                            : Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        gridChamber.grid![palletIndex].pallet,
                                        style: const TextStyle(
                                            color: Colors.green),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: List.generate(
                                        gridChamber.grid![palletIndex].products!
                                            .length, (productIndex) {
                                      return Text(gridChamber.grid![palletIndex]
                                              .products![productIndex]
                                              .toJson()
                                              .toString())
                                          .paddingSymmetric(vertical: 4);
                                    }),
                                  ),
                                ],
                              );
                      }
                      return Container();
                    }),
                  )
                ],
              ).paddingSymmetric(
                  vertical: Dimensions.vericalBodyPad,
                  horizontal: Dimensions.horizontalBodyPad),
            ),
    );
  }
}
