import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Chamber/gridChamber.dart';
import 'package:moolwmsstore/Dock%20Supervisor/view/Chamber%20Assign/assignPalletSheet.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:zoom_widget/zoom_widget.dart';

class ChamberView extends StatefulWidget {
  GridChamber gridChamber;
  ChamberView({super.key, required this.gridChamber});

  @override
  State<ChamberView> createState() => _ChamberViewState();
}

class _ChamberViewState extends State<ChamberView> {
  int currentlySelectedStackinglevel = 1;
  GridItem? checkChmaberStatus(String palletCordianate) {
    return widget.gridChamber.grid!.firstWhereOrNull((griditem) {
      return griditem.pallet == palletCordianate;
    });
  }

  late int columnLenghth;
  late int rowLength;
  @override
  void initState() {
    columnLenghth =
        2 + widget.gridChamber.maxColumn - widget.gridChamber.minColumn + 1;
    rowLength = 2 + widget.gridChamber.maxRow - widget.gridChamber.minRow + 1;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Chamber View', style: TextStyles.appBarTextStyle),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 39,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: ShapeDecoration(
              color: const Color(0xFFFAF9FF),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0x195E57FC)),
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
                  'Chamber No. ${widget.gridChamber.chamber_id}',
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
                      color: Color.fromARGB(255, 27, 23, 251), width: 0.4),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              enabledBorder: const OutlineInputBorder(
                  gapPadding: 0,
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 169, 153, 246), width: 0.2),
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
            items: List.generate(widget.gridChamber.max_stack_level, (i) {
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
          Expanded(
              child: Zoom(
            opacityScrollBars: 1,
            centerOnScale: true,

            // colorScrollBars: AppColors.primaryColor,
            // canvasColor: AppColors.linkedInBGColor,

            initTotalZoomOut: true,
            doubleTapZoom: false,
            // enableScroll: false,
            backgroundColor: Colors.white,
            child: Column(
              children: List.generate(columnLenghth, (c) {
                int columnAdress = c + widget.gridChamber.minColumn - 1;
                return Row(
                  children: List.generate(rowLength, (r) {
                    if (c == widget.gridChamber.maxColumn &&
                        r == widget.gridChamber.maxRow) {
                      return Container(
                        height: 100,
                        width: 100,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFEAEAEA),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22)),
                        ),
                        child: const Center(
                          child: Text("X"),
                        ),
                      ).paddingAll(4);
                    }
                    if (c == 0 && r == widget.gridChamber.maxRow) {
                      return Container(
                        height: 100,
                        width: 100,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFEAEAEA),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22)),
                        ),
                        child: const Center(
                          child: Text("X"),
                        ),
                      ).paddingAll(4);
                    }
                    if (c == widget.gridChamber.maxColumn && r == 0) {
                      return Container(
                        height: 100,
                        width: 100,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFEAEAEA),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22)),
                        ),
                        child: const Center(
                          child: Text("X"),
                        ),
                      ).paddingAll(4);
                    }
                    int rowAdress = r + widget.gridChamber.minRow - 1;
                    String address =
                        "R${rowAdress}C${columnAdress}L$currentlySelectedStackinglevel";

                    GridItem? gridItem = checkChmaberStatus(address);
                    if (gridItem != null) {
                      if (gridItem.status == "P") {
                        return InkWell(
                          onTap: () {
                            Get.bottomSheet(
                              AssignPalletSheet(
                                palletNo: address,
                              ),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.0)),
                              ),
                            );
                          },
                          child: Container(
                              height: 100,
                              width: 100,
                              decoration: ShapeDecoration(
                                color: Colors.green[800],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              child: Center(
                                  child: Text(
                                address,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ))).paddingAll(4),
                        );
                      }
                    }

                    if (r == widget.gridChamber.maxRow && c != 0) {
                      return SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(child: Text("C${c + 1}")),
                        // color: Colors.red,
                      ).paddingAll(4);
                    }
                    if (c == widget.gridChamber.maxColumn && r != 0) {
                      return SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(child: Text("R${r + 1}")),
                        // color: Colors.red,
                      ).paddingAll(4);
                    }
                    if (r == 0 && c != 0) {
                      return SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(child: Text("C${c + 1}")),
                        // color: Colors.red,
                      ).paddingAll(4);
                    }

                    if (r != 0 && c == 0) {
                      return SizedBox(
                        height: 100,
                        width: 100,
                        child: Center(child: Text("R${r + 1}")),
                        // color: Colors.red,
                      ).paddingAll(4);
                    }

                    if (r == 0 && c == 0) {
                      return Container(
                        height: 100,
                        width: 100,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFEAEAEA),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22)),
                        ),
                        child: const Center(
                          child: Text("X"),
                        ),
                      ).paddingAll(4);
                    }

                    return Container(
                      height: 100,
                      width: 100,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFEAEAEA),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22)),
                      ),
                      child: const Center(
                        child: Text("X"),
                      ),
                    ).paddingAll(4);
                  }),
                );
              }),
            ),
          ))
        ],
      ).paddingSymmetric(
          vertical: Dimensions.vericalBodyPad,
          horizontal: Dimensions.horizontalBodyPad),
    );
  }
}

class WoodTexturePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.brown[200]!
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height * 0.8);
    path.close();
    canvas.drawPath(path, paint);

    // Add additional lines and variations for wood grain effect
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
