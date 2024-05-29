import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:moolwmsstore/Owner/Model/Chamber/chamber.dart';
import 'package:moolwmsstore/Owner/View/Common/ownerCommon.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/common/controller/chamberController.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:zoom_widget/zoom_widget.dart';

class ChamberDesigning extends StatelessWidget {
  int stacklevel;

  Chamber chamber;
  ChamberDesigning(
      {super.key, required this.chamber, required this.stacklevel});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        // if true then return nothing
        if (didPop) {
          return;
        }
        // if false then return AlertDialog Widget
        Get.find<ChamberController>().clear();
      },
      child: Scaffold(
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
              style: TextStyle(
                color: Color(0xFF595959),
                fontSize: 12,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
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
                              style: const TextStyle(
                                color: Color(0xFF595959),
                                fontSize: 12,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ),
                              //  textAlign: TextAlign.center,
                            ),
                          ],
                        )),
              );
            }),
            GetBuilder<ChamberController>(builder: (chamberController) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: const Text("Select Grid Type").paddingSymmetric(
                      vertical: 4,
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          chamberController.gridTypes.length,
                          (index) => InkWell(
                                onTap: () {
                                  chamberController.currentlySelecting =
                                      chamberController.gridTypes[index];
                                  chamberController.update();
                                },
                                child: Container(
                                  decoration:
                                      chamberController.currentlySelecting ==
                                              chamberController.gridTypes[index]
                                          ? BoxDecoration(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary
                                                  .withOpacity(0.4),
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              border: Border.all(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary
                                                      .withOpacity(0.4),
                                                  width: 6))
                                          : null,
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: chamberController
                                            .gridTypes[index]["color"],
                                        borderRadius: BorderRadius.circular(4)),
                                    height: 22,
                                    width: 22,
                                    child: Text(
                                      "${chamberController.gridTypes[index]["centerTitle"]}",
                                      style: TextStyle(
                                          color:
                                              chamberController.gridTypes[index]
                                                      ["textColor"] ??
                                                  Colors.white),
                                    ),
                                  ).paddingAll(0),
                                ),
                              ))),
                  const Gap(10)
                ],
              );
            }).paddingSymmetric(vertical: 0, horizontal: 12),
            const Expanded(child: ZoomWidget()),
            GetBuilder<ChamberController>(builder: (chamberController) {
              if (chamberController.designCodintatesMap.isNotEmpty) {
                return Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Gap(10),
                          Text(
                            "Selected Pallets Area: ${chamberController.palletCount}  Stacking Level : $stacklevel",
                            style: const TextStyle(
                              color: Color(0xFF595959),
                              fontSize: 12,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                            //  textAlign: TextAlign.center, Stacking level : $stacklevel\nTotal Pallets : ${chamberController.designCodintates.length * stacklevel}
                          ),
                          Text(
                            "Total Pallets: ${chamberController.palletCount * stacklevel}",
                            //  textAlign: TextAlign.center, Stacking level : $stacklevel\nTotal Pallets : ${chamberController.designCodintates.length * stacklevel}
                          ),
                        ],
                      ),
                    ),
                    chamberController.isSubmiting
                        ? Center(
                            child: LoadingAnimationWidget.staggeredDotsWave(
                              color: const Color(0xFF5A57FF),
                              size: 80,
                            ),
                          ).paddingSymmetric(vertical: 12)
                        : CustomButton(
                            onTap: () {
                              List x = [];

                              for (var i = 1; i <= stacklevel; i++) {}
                              chamberController.designCodintatesMap
                                  .forEach((k, v) {
                                for (var i = 1; i <= stacklevel; i++) {
                                  x.add({
                                    "pallet_cordinate": v["pallet"] + "L$i",
                                    "status": v["status"],
                                    "stacking_level": i
                                  });
                                }
                              });

                              chamberController.submitChamberDesign({
                                "warehouse_id": chamber.warehouse_id,
                                "chamber_id": chamber.id,
                                "grid": x,
                                "maxRow": chamberController.maxRow,
                                "maxColumn": chamberController.maxColumn,
                                "minRow": chamberController.minRow,
                                "minColumn": chamberController.minColumn,
                              });
                            },
                            title: "Submit",
                          ).paddingOnly(
                            top: 8,
                            bottom: 20,
                          ),
                  ],
                );
              } else {
                return Container();
              }
            })
          ],
        ).paddingSymmetric(
            horizontal: Dimensions.horizontalBodyPad,
            vertical: Dimensions.vericalBodyPad),
      ),
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
          if (chamberController.designCodintatesMap.containsKey("R${r}C$c")) {
            chamberController.designCodintatesMap
                .removeWhere((k, v) => k == "R${r}C$c");
            chamberController.update();
            return;
          }

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
