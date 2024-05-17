import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/Model/Chamber/chamber.dart';
import 'package:moolwmsstore/Owner/View/Chamber/chamberDesigning.dart';
import 'package:moolwmsstore/utils/globals.dart';

class ChamberController extends GetxController {
  designChamber(Chamber chamber) {
    int a = sqrt((chamber.pallate_count! /
            int.parse(chamber.stacking_level.toString())))
        .ceil();
    row = a + 2;
    column = a + 2;
    update();
    Get.to(
        ChamberDesigning(
          chamber: chamber,
          stacklevel: int.parse(chamber.stacking_level.toString()),
          //palletCount: chamber.pallate_count ?? 0,
        ),
        id: ownerNavigationKey);
  }

  bool loading = false;
  addX() {
    loading = true;
    update();
    Future.delayed(const Duration(milliseconds: 200)).whenComplete(() {
      loading = false;
      update();
    });
  }

  List gridTypes = [
    {
      "title": "Pallet Location",
      "centerTitle": "P",
      "color": const Color.fromARGB(255, 62, 155, 66),
      "textColor": null
    },
    {
      "title": "Aisle",
      "centerTitle": "O",
      "color": const Color.fromARGB(255, 214, 212, 212),
      "textColor": Colors.black
    },
    {
      "title": "Air but can be used for high stacking of material",
      "centerTitle": "XS",
      "color": const Color(0xFF902CFC),
      "textColor": null
    },
    {
      "title": "Air No sapce to store",
      "centerTitle": "X",
      "color": const Color.fromARGB(255, 190, 189, 189),
      "textColor": Colors.black
    },
    {
      "title": "Aisle but can be used for long term storage",
      "centerTitle": "AS",
      "color": const Color(0xFFF26803),
      "textColor": null
    },
  ];

  // addGridType({required String title, required String color}) {
  //   if (gridTypes.map((e) => e["title"]).contains(title) ||
  //       gridTypes.map((e) => e["color"]).contains(color)) {
  //     Snacks.redSnack(
  //         "Type or Color Already Exists ,Please Change Type or Color");
  //   } else {
  //     gridTypes.add({"title": title, "color": color});
  //     update();
  //     Get.back();
  //   }
  //   gridTypes.map((e) => e["title"]).contains(title);
  //   gridTypes.map((e) => e["color"]).contains(color);
  // }

  Map? currentlySelecting;
  bool showFinalView = false;
  int maxRow = 0;
  int maxColumn = 0;
  List<String> designCodintates = [];
 Map designCodintatesMap = {};


 addCordintae({dynamic key , dynamic value}){
  designCodintatesMap[key] = value;
  update();
 }
  int row = 0;
  int column = 0;
}
