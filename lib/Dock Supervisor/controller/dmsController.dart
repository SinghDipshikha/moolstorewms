import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/dock.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/vehicle.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsRepo.dart';
import 'package:moolwmsstore/Hr/HumanResource.dart';
import 'package:moolwmsstore/Sales/Sales.dart';
import 'package:moolwmsstore/Security%20Guard/SecurityGuard.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
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

  List<Vehicle> vehicleList = [];
  List<Dock> dockList = [];
  @override
  void onInit() {
    currentlySelectedWarehouse = user.warehouse![0];

    super.onInit();
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
        .getData("dock/getAllQueuedList/${currentlySelectedWarehouse!.warehouse_id}")
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

  getAllDockListByWarehouseId() {
    apiClient
        .getData(
            "dock/getAllQueuedListByDocks/${currentlySelectedWarehouse!.warehouse_id}")
        .then((value) {
      if (value.data["message"] == "Docks found for given warehouse") {
        List x = value.data["result"];
        dockList = x.map((e) => Dock.fromJson(e)).toList();
        Logger().i(dockList);

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
