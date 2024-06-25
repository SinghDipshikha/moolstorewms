import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Customer/Repository/customerRepo.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/dock.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/vehicle.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:restart_app/restart_app.dart';

class CustomerController extends GetxController {
  final CustomerRepo customerRepo;

  final ApiClient apiClient;
  bool isLoading = false;
  bool isOwner;
  User user;
  CustomerController({
    required this.apiClient,
    required this.user,
    required this.customerRepo,
    this.isOwner = false,
  });

  List<Vehicle> vehicleList = [];
  List<Dock> dockList = [];
  @override
  void onInit() {
    // currentlySelectedWarehouse = user.warehouse![0];

    super.onInit();
  }

  customerLogout() async {
    var box = await Hive.openBox('authbox');
    Get.find<CustomerController>().dispose();

    box.clear();
    Restart.restartApp();
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

  logout() async {
    var box = await Hive.openBox('authbox');
    Get.find<CustomerController>().dispose();

    box.clear();
    Restart.restartApp();
  }
}
