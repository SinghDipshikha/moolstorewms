import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/Model/Chamber/chamber.dart';
import 'package:moolwmsstore/Owner/View/Chamber/chamberDesigning.dart';
import 'package:moolwmsstore/Owner/View/Chamber/chamberList.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/globals.dart';

class ChamberController extends GetxController {
  bool isSubmiting = false;
  submitChamberDesign(Map body) {
    isSubmiting = true;
    update();
    // clear();
    Get.find<OwnerController>()
        .apiClient
        .postData("owner/addChamberGridByOwner", body)
        .then((v) {
      if (v.data["message"] == "Pallets added successfully") {
        clear();
        Snacks.greenSnack("Pallets added successfully");
      } else {
        Snacks.redSnack("Something went wrong");
        isSubmiting = false;
        update();
      }
    });
  }

  Chamber? chamberr;

  designChamber(Chamber chamber) {
    chamberr = chamber;
    int a = sqrt((chamber.pallate_count! /
            int.parse(chamber.stacking_level.toString())))
        .ceil();
    row = a + 2;
    column = a + 2;
    minColumn = column;
    minRow = row;
    currentlySelecting = gridTypes[0];
    update();
    Get.off(
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

  int palletCount = 0;

  getPalletCount() {
    palletCount = 0;
    designCodintatesMap.forEach((k, v) {
      if (v["status"] == "P") {
        palletCount++;
      }
    });
  }

  Map? currentlySelecting;
  bool showFinalView = false;
  int maxRow = 0;
  int maxColumn = 0;
  int minRow = 0;
  int minColumn = 0;
  List<String> designCodintates = [];
  Map designCodintatesMap = {};

  void extractRowColumnLenght() {
    String input = "R444C744L14444";

    final regex = RegExp(r"R(\d+)C(\d+)L(\d*)"); // Regular expression pattern
    final match = regex.firstMatch(input);

    if (match != null) {
      final row = int.parse(match.group(1)!); // Extract row using group(1)
      final col = int.parse(match.group(2)!); // Extract column using group(2)
      final length = match.group(3)!.isEmpty
          ? null
          : int.parse(match.group(3)!); // Extract and handle empty length
    } else {}
  }

  ({int? row, int? col}) extractRowColumn(String pallet) {
    final regex = RegExp(
        r"R(\d+)C(\d+)"); // Regular expression pattern with no length capture
    final match = regex.firstMatch(pallet);

    if (match != null) {
      final row = int.parse(match.group(1)!); // Extract row using group(1)
      final col = int.parse(match.group(2)!);
      return (row: row, col: col);
    } else {
      return (row: null, col: null);
    }
  }

  addCordintae({dynamic key, dynamic value}) {
    designCodintatesMap[key] = value;

    if (value["status"] == "P") {
      palletCount++;
    }
    ({int? row, int? col}) record = extractRowColumn(value["pallet"]);

    if (minRow > (record.row as int)) {
      minRow = (record.row as int);
    }
    if (minColumn > (record.col as int)) {
      minColumn = (record.col as int);
    }
    if (maxRow < (record.row as int)) {
      maxRow = (record.row as int);
    }
    if (maxColumn < (record.col as int)) {
      maxColumn = (record.col as int);
    }

    update();
  }

  int row = 0;
  int column = 0;

  clear() {
    isSubmiting = false;
    loading = false;
    palletCount = 0;
    row = 0;
    column = 0;
    currentlySelecting = gridTypes[0];
    showFinalView = false;
    maxRow = 0;
    maxColumn = 0;
    designCodintates = [];
    designCodintatesMap = {};
    Get.off(
        ChamberList(
          warehouse_id: chamberr!.warehouse_id,
        ),
        id: ownerNavigationKey);
  }
}
