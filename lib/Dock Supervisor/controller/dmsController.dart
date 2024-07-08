import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Chamber/dockProduct.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Chamber/gridChamber.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Chamber/palletAssignBody.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/vehicle.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsRepo.dart';
import 'package:moolwmsstore/Dock%20Supervisor/view/Chamber%20Assign/assignChamber.dart';
import 'package:moolwmsstore/Dock%20Supervisor/view/Chamber%20Assign/chamberView.dart';
import 'package:moolwmsstore/Hr/HumanResource.dart';
import 'package:moolwmsstore/Owner/Model/Chamber/chamber.dart';
import 'package:moolwmsstore/Sales/Sales.dart';
import 'package:moolwmsstore/Security%20Guard/SecurityGuard.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/globals.dart';
import 'package:restart_app/restart_app.dart';

class DmsController extends GetxController {
  final Dmsrepo dmsRepo;
  final ApiClient apiClient;
  bool isLoading = false;
  bool isOwner;
  User user;

  DmsController(
      {required this.dmsRepo,
      required this.apiClient,
      required this.user,
      this.isOwner = false});

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

  List<Vehicle> vehicleList = [];
  // List<Dock> dockList = [];
  late Box indentProductBox;
  @override
  Future<void> onInit() async {
    indentProductBox = await Hive.openBox('indentProductBox');

    currentlySelectedWarehouse = user.warehouse![0];

    super.onInit();
  }

  List<Chamber>? chambers;
  Chamber? selectedChamber;

  List<DockProduct>? toBeAssigned;
  startAssigningPallets(
      {required String indent_number, required Vehicle entry}) async {
    // indentProductBox.clear();
    List? x = await indentProductBox.get(indent_number);

    if (x == null) {
      dmsRepo
          .getUnloadedMaterialByIndent(indent_number: indent_number)
          .then((v) async {
        Logger().i(v);
        if (v != null) {
          toBeAssigned = v;
          await indentProductBox
              .put(indent_number, toBeAssigned as List<DockProduct>)
              .whenComplete(() {
            Get.to(
                AssignChamber(
                  entry: entry,
                ),
                id: dmsNavigationKey);
          });
          update();
        }
      });
    } else {
      toBeAssigned = x.map((e) {
        if (e is DockProduct) {
          return e;
        } else {
          return const DockProduct(
              product_id: 0,
              product_name: "Something Went wrong",
              qty: 0,
              unit: 0);
        }
      }).toList();
      //  toBeAssigned = x.map((e));
      update();
      Get.to(
          AssignChamber(
            entry: entry,
          ),
          id: dmsNavigationKey);
    }
  }

  PalletAssignBody? palletAssignBody;
  bool isPalletFull = false;
  assignPalletToProduct({required GridItem pallet}) {
    List<DockProduct> listToUpload = toBeAssigned!.toList();
    List<DockProduct> listToReplace = toBeAssigned!.toList();

    listToUpload.removeWhere((e) {
      return e.unitToUpload == 0;
    });
    listToUpload.map((e) {
      e = e.copyWith(unit: e.unitToUpload, id: e.product_id);
    }).toList();

    for (int i = 0; i < listToUpload.length; i++) {
      listToUpload[i] = listToUpload[i].copyWith(
          unit: listToUpload[i].unitToUpload, id: listToUpload[i].product_id);
    }

    for (int i = 0; i < listToReplace.length; i++) {
      Logger().i(listToReplace[i]);
      int a = listToReplace[i].unit - listToReplace[i].unitToUpload;
      DockProduct rr = listToReplace[i]
          .copyWith(unit: a, unitToUpload: 0, id: listToReplace[i].product_id);
      listToReplace[i] = rr;
    }

    palletAssignBody = PalletAssignBody(
        pallet_coordinate: pallet.pallet,
        id: pallet.id,
        status: "IN",
        products: listToUpload,
        is_full: isPalletFull ? 1 : 0,
        chamber_id: selectedChamber!.id as int,
        warehouse_id: currentlySelectedWarehouse!.warehouse_id as int);
    isPalletFull = false;

    dmsRepo.assignProductsToPallets(palletAssignBody!).then((v) async {
      if (v) {
        toBeAssigned = listToReplace;
        await indentProductBox.put(
            toBeAssigned![0].indent_number, toBeAssigned as List<DockProduct>);
        await getSelectedChamberData();
        update();
        // chamberViewKey.currentContext.upa;
        // Logger().i("")

        Get.back();
        Snacks.greenSnack("Allocated successfully");
      } else {
        Snacks.redSnack("Try Again");
      }
    });
  }

  GridChamber? currentlySelectedGridChamber;
  int currentlySelectedStackinglevel = 1;
  getSelectedChamberData() async {
    var v = await dmsRepo.getChamberData(selectedChamber!.id as int);
    if (v != null) {
      currentlySelectedGridChamber = v;
      Get.back(id: dmsNavigationKey);

      Get.to(ChamberView());
    }
  }

  getChambers() async {
    dmsRepo
        .getAllChamberByWareHouseId(
            currentlySelectedWarehouse!.warehouse_id as int)
        .then((v) {
      chambers = v;
      update();
    });
  }

  dmsLogout() async {
    var box = await Hive.openBox('authbox');
    Get.find<DmsController>().dispose();

    box.clear();
    Restart.restartApp();
  }

  switchRole(String role) {
    if (role == "security-guard") {
      Get.offAll(const SecurityGuard());
    }
    if (role == "hr") {
      Get.offAll(const HumanResouce());
    }
    if (role == "sales") {
      Get.offAll(const Sales());
    }
  }

  WarehousesAcess? currentlySelectedWarehouse;
  // currentlySelectedWarehouse!["id"]  access warehopuse like this
  changeDashBoardWarehouse({required WarehousesAcess warehouse}) {
    currentlySelectedWarehouse = warehouse;
    getChambers();

    update();
  }

  updateProfilePic(String url) {
    apiClient
        .postData("avtar/addAvtar", {"user_id": user.id, "profile": url}).then(
            (v2) async {
      if (v2.data["result"] == "Avtar Information updated") {
        Snacks.greenSnack("Profile Pic updated successfully");
        var box = await Hive.openBox('authbox');
        user = user.copyWith(avatar: url);
        update();

        box.put("user", user);
      }
    });
  }

  getAllVehicleListByWarehouseId() {
    apiClient
        .getData(
            "dock/getAllQueuedList/${currentlySelectedWarehouse!.warehouse_id}")
        .then((value) {
      if (value.data["message"] == "Queued List found") {
        vehicleList = (value.data["result"] as List)
            .map((e) => Vehicle.fromJson(e))
            .toList();
        Logger().i(vehicleList);

        update();
      }
    });
  }

  logout() async {
    var box = await Hive.openBox('authbox');
    Get.find<DmsController>().dispose();

    box.clear();
    Restart.restartApp();
  }
}
