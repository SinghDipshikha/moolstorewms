import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_color_picker/easy_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Owner/Model/Chamber/chamber.dart';
import 'package:moolwmsstore/Owner/View/Common/ownerCommon.dart';
import 'package:moolwmsstore/Sales/View/common/commonTextField.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/common/controller/chamberController.dart';
import 'package:zoom_widget/zoom_widget.dart';

class ChamberDesigning extends StatelessWidget {
  int stacklevel;

  Chamber chamber;
  ChamberDesigning(
      {super.key, required this.chamber, required this.stacklevel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chamber View',
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
          const Text(
            "You can zoom in/out this view and also can select pallets",
          ),
          GetBuilder<ChamberController>(builder: (chamberController) {
            return Column(
              children: List.generate(
                  chamberController.gridTypes.length,
                  (index) => Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: chamberController.gridTypes[index]
                                    ["color"],
                                borderRadius: BorderRadius.circular(4)),
                            height: 20,
                            width: 20,
                            child: Text(
                              "${chamberController.gridTypes[index]["centerTitle"]}",
                              style: TextStyle(
                                  color: chamberController.gridTypes[index]
                                          ["textColor"] ??
                                      Colors.white),
                            ),
                          ).paddingAll(8),
                          Text(
                            "${chamberController.gridTypes[index]["title"]}",
                            //  textAlign: TextAlign.center,
                          ),
                        ],
                      )),
            );
          }),
          GetBuilder<ChamberController>(builder: (chamberController) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (chamberController.currentlySelecting != null)
                        const Text("Cureently Selecting")
                            .paddingSymmetric(vertical: 4, horizontal: 12),
                      Container(
                        color: Colors.white,
                        child: DropdownButtonFormField2<Map>(
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 27, 23, 251),
                                    width: 0.4),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 169, 153, 246),
                                    width: 0.2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            // Add Horizontal padding using menuItemStyleData.padding so it matches
                            // the menu padding when button's width is not specified.
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            // Add more decoration..
                          ),
                          hint: chamberController.currentlySelecting != null
                              ? Row(
                                  children: [
                                    Text(
                                      "${chamberController.currentlySelecting!["title"]}",
                                      style: const TextStyle(
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const Gap(10),
                                    Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: chamberController
                                              .currentlySelecting!["color"],
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      height: 20,
                                      width: 20,
                                      child: Text(
                                        "${chamberController.currentlySelecting!["centerTitle"]}",
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                )
                              : const Text(
                                  'Select Grid Type',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Color(0xFFACACAC),
                                    fontSize: 12,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                          items: chamberController.gridTypes.map((item) {
                            return DropdownMenuItem<Map>(
                              value: item,
                              child: Row(
                                children: [
                                  Text(
                                    "${item["title"]}",
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const Gap(10),
                                  Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: item["color"],
                                        borderRadius: BorderRadius.circular(4)),
                                    height: 20,
                                    width: 20,
                                    child: Text("${item["centerTitle"]}",
                                        style: const TextStyle(
                                            color: Colors.white)),
                                  )
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
                              chamberController.currentlySelecting = value;
                              chamberController.update();
                              // ownerController.selectedTempType = value;
                              // ownerController.update();
                            }
                          },
                          onSaved: (value) {
                            // ownerController.selectedTempType = value;
                            // ownerController.update();
                          },
                          buttonStyleData: const ButtonStyleData(
                            //decoration: BoxDecoration(color: Colors.white),
                            overlayColor:
                                MaterialStatePropertyAll(Colors.white),
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
                        ),
                      ),
                    ],
                  ),
                ),
                // InkWell(
                //   onTap: () {
                //     Get.dialog(const AlertDialog(
                //       // contentPadding: EdgeInsets.zero,
                //       content: GridTypeDialog(),
                //     ));
                //   },
                //   child: Container(
                //     alignment: Alignment.center,
                //     decoration: const BoxDecoration(
                //       borderRadius: BorderRadius.all(Radius.circular(4)),
                //       color: Color.fromARGB(255, 203, 202, 202),
                //     ),
                //     height: 40,
                //     width: 100,
                //     child: const Text("Add Type"),
                //   ).paddingOnly(left: 10, bottom: 4),
                // )
              ],
            );
          }).paddingSymmetric(vertical: 4, horizontal: 12)
          // GetBuilder<ChamberController>(builder: (chamberController) {
          //   return Container(
          //     color: Colors.white,
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         const Text(
          //           "Show Final View",
          //           //  textAlign: TextAlign.center,
          //         ),
          //         Theme(
          //           data: ThemeData(unselectedWidgetColor: Colors.grey),
          //           child: Checkbox(
          //               activeColor: const Color(0xFF5A57FF),
          //               value: chamberController.showFinalView,
          //               onChanged: (c) {
          //                 chamberController.showFinalView = c ?? false;
          //                 chamberController.update();
          //               }),
          //         ),
          //         const Gap(12),
          //         IconButton(
          //             onPressed: () {
          //               chamberController.designCodintates.clear();
          //               chamberController.showFinalView = false;
          //               chamberController.update();
          //             },
          //             icon: Container(
          //               height: 33,
          //               padding: const EdgeInsets.symmetric(
          //                   horizontal: 20, vertical: 4),
          //               decoration: ShapeDecoration(
          //                 color: const Color(0xFFFFD2D5),
          //                 shape: RoundedRectangleBorder(
          //                   side: const BorderSide(
          //                       width: 1, color: Color(0x33E23744)),
          //                   borderRadius: BorderRadius.circular(5),
          //                 ),
          //               ),
          //               child: Row(
          //                 mainAxisSize: MainAxisSize.min,
          //                 children: [
          //                   const Text(
          //                     "Clear Pallets",
          //                     style: TextStyle(color: Colors.red),
          //                   ).paddingSymmetric(horizontal: 4),
          //                   Image.asset("assets/icons/Trash (R) FIlled.png"),
          //                 ],
          //               ),
          //             ))
          //       ],
          //     ),
          //   );
          // }),
          ,
          const Expanded(child: ZoomWidget()),
          GetBuilder<ChamberController>(builder: (chamberController) {
            if (chamberController.designCodintatesMap.isNotEmpty) {
              return Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(4)),
                          height: 20,
                          width: 20,
                        ).paddingAll(8),
                        Text(
                          "Selected Pallets Area: ${chamberController.designCodintates.length}",
                          //  textAlign: TextAlign.center, Stacking level : $stacklevel\nTotal Pallets : ${chamberController.designCodintates.length * stacklevel}
                        )
                      ],
                    ),
                  ),
                  CustomButton(
                    onTap: () {
                      List x = [];

                      // chamberController.designCodintatesMap.forEach(
                      //   (key, value) {
                      //     print(value);
                      //   },
                      // );
                      chamberController.designCodintatesMap.forEach((k, v) {
                        for (var i = 1; i <= stacklevel; i++) {
                          Map z = v;
                          z["stacking_level"] = i;

                          // = v;
                          //  a[k]["pallet"] = "$i" + v[k]["pallet"];

                          x.add(z);
                        }
                      });

                      for (var element in x) {
                        print(element);
                      }
                      print({
                        "warehouse_id": chamber.warehouse_id,
                        "chamberId": chamber.id,
                        "grid": x,
                        "maxRow": chamberController.maxRow,
                        "maxColumn": chamberController.maxColumn,
                      });
                      Logger().i({
                        "warehouse_id": chamber.warehouse_id,
                        "chamberId": chamber.id,
                        "grid": x,
                        "maxRow": chamberController.maxRow,
                        "maxColumn": chamberController.maxColumn,
                      });
                    },
                    title: "Submit",
                  ).paddingOnly(top: 12, bottom: 30, left: 12, right: 12),
                ],
              ).paddingAll(12);
            } else {
              return Container();
            }
          })
        ],
      ).paddingAll(12),
    );
  }
}

class ChamberGrid extends StatelessWidget {
  ChamberGrid({super.key, required this.r, required this.c});
  int r;
  int c;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChamberController>(builder: (chamberController) {
      bool isPallet = chamberController.designCodintates.contains("R${r}C$c");
      Widget x = Container(
        decoration: BoxDecoration(
            color: chamberController.showFinalView
                ? Colors.transparent
                : const Color.fromARGB(255, 243, 243, 243)),
        alignment: Alignment.center,
        height: 100,
        width: 100,
        child: (chamberController.showFinalView)
            ? null
            : Text(
                "R${r}C$c",
                style: TextStyle(color: isPallet ? Colors.white : Colors.black),
              ),
      );

      if (chamberController.designCodintatesMap.containsKey("R${r}C$c")) {
        x = Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: chamberController.designCodintatesMap["R${r}C$c"]["color"],
              borderRadius: BorderRadius.circular(4)),
          height: 100,
          width: 100,
          child: Text(
            "${chamberController.designCodintatesMap["R${r}C$c"]["status"]}",
            style: TextStyle(
                color: chamberController.designCodintatesMap["R${r}C$c"]
                        ["textColor"] ??
                    Colors.white),
          ),
        );
      }
      return GestureDetector(
        onTap: () {
          if (chamberController.currentlySelecting == null) {
            Snacks.redSnack("Please select Grid type firsr");
            return;
          }
/*
      "color": const Color(0xFFF26803),
      "textColor": null
 */
          chamberController.addCordintae(key: "R${r}C$c", value: {
            "pallet": "R${r}C$c",
            "status": chamberController.currentlySelecting!["centerTitle"],
            "color": chamberController.currentlySelecting!["color"],
            "textColor": chamberController.currentlySelecting!["textColor"],
          });

          chamberController.update();
          HapticFeedback.selectionClick();
        },
        child: x.paddingAll(2),
      );
    });
  }
}

class ZoomWidget extends StatelessWidget {
  const ZoomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChamberController>(builder: (chamberController) {
      if (chamberController.loading) {
        return const Center(
          child: SpinKitDoubleBounce(
            color: Color(0xFF5A57FF),
          ),
        );
      }
      return Zoom(
        initTotalZoomOut: true,
        doubleTapZoom: false,
        // enableScroll: false,
        backgroundColor: Colors.white,
        // initScale: 0.1,
        // initPosition: const Offset(0.99, 0.99),
        child: Column(
          children: List.generate(chamberController.column, (c) {
            return Row(
              children: List.generate(chamberController.row, (r) {
                if (r == 0 && c == chamberController.column - 1) {
                  return InkWell(
                    onTap: () {
                      HapticFeedback.heavyImpact();
                      chamberController.column = chamberController.column + 1;
                      chamberController.addX();
                    },
                    child: Container(
                      color: const Color(0xFF5A57FF),
                      height: 100,
                      width: 100,
                      child: const Center(
                          child: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                      // color: Colors.red,
                    ).paddingSymmetric(horizontal: 2),
                  );
                }
                if (c == 0 && r == chamberController.row - 1) {
                  return InkWell(
                    onTap: () {
                      HapticFeedback.heavyImpact();
                      chamberController.row = chamberController.row + 1;
                      chamberController.addX();
                    },
                    child: Container(
                      color: const Color(0xFF5A57FF),
                      height: 100,
                      width: 100,
                      child: const Center(
                          child: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                      // color: Colors.red,
                    ).paddingSymmetric(horizontal: 2),
                  );
                }
                if (r == 0 || c == 0) {
                  if (r == 0 && c == 0) {
                    return const SizedBox(
                      height: 100,
                      width: 100,
                      child: Center(child: Text("0")),
                      // color: Colors.red,
                    ).paddingSymmetric(horizontal: 2);
                  }
                  if (r == 0 && c != 0) {
                    return SizedBox(
                      height: 100,
                      width: 100,
                      child: Center(child: Text("R$c")),
                      // color: Colors.red,
                    ).paddingSymmetric(horizontal: 2);
                  }

                  if (r != 0 && c == 0) {
                    return SizedBox(
                      height: 100,
                      width: 100,
                      child: Center(child: Text("C$r")),
                      // color: Colors.red,
                    ).paddingSymmetric(horizontal: 2);
                  }
                }
                if (r == (chamberController.row - 1) ||
                    c == chamberController.column - 1) {
                  if (r == chamberController.row - 1 &&
                      c == chamberController.column - 1) {
                    return SizedBox(
                      height: 100,
                      width: 100,
                      child: Center(child: Text("$r $c")),
                      // color: Colors.red,
                    ).paddingSymmetric(horizontal: 2);
                  }
                  if (r == chamberController.row - 1 &&
                      c != chamberController.column - 1) {
                    return SizedBox(
                      height: 100,
                      width: 100,
                      child: Center(child: Text("R$c")),
                      // color: Colors.red,
                    ).paddingSymmetric(horizontal: 2);
                  }
                  if (r != chamberController.row - 1 &&
                      c == chamberController.column - 1) {
                    return SizedBox(
                      height: 100,
                      width: 100,
                      child: Center(child: Text("C$r")),
                      // color: Colors.red,
                    ).paddingSymmetric(horizontal: 2);
                  }
                }

                return ChamberGrid(
                  r: r,
                  c: c,
                );
              }),
            ).paddingSymmetric(horizontal: 100);
          }),
        ),
      );
    });
  }
}

class GridTypeDialog extends StatefulWidget {
  const GridTypeDialog({super.key});

  @override
  State<GridTypeDialog> createState() => _GridTypeDialogState();
}

class _GridTypeDialogState extends State<GridTypeDialog> {
  Color _selectedColor = Colors.deepPurple;
  String title = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "Select Color",
          style: TextStyle(color: Colors.white),
        ).paddingAll(12),
        Center(
            child: EasyColorPicker(
                selected: _selectedColor,
                onChanged: (color) => setState(() => _selectedColor = color))),
        CommonTextField(
          textCapitalization: TextCapitalization.words,
          onChanged: (p0) {
            setState(() {
              title = p0;
            });
          },
          labelText: "Enter grid type",
        ),
        const Gap(10),
        // if (title != "")
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: HexColor(_selectedColor.value.toRadixString(16)),
                  borderRadius: BorderRadius.circular(4)),
              height: 20,
              width: 20,
            ).paddingAll(8),
            Text(
              "Represents $title",
              style: const TextStyle(color: Colors.white),
              //  textAlign: TextAlign.center,
            ),
          ],
        ),
        CustomButton(
          title: "Submit",
          onTap: () {
            // Get.find<ChamberController>().addGridType(
            //     title: title.trimRight().trimLeft(),
            //     color: _selectedColor.value.toRadixString(16));
          },
        ).paddingSymmetric(vertical: 12)
      ],
    );
  }
}
