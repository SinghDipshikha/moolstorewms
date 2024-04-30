import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/userController.dart';
import 'package:moolwmsstore/Owner/Model/addChamber.dart';
import 'package:moolwmsstore/Owner/Model/warehouse.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Common%20Data/repository/warehouseRepo.dart';

class WarehouseController extends GetxController {
  final WarehouseRepo warehouseRepo;
  final ApiClient apiClient;
  WarehouseController({required this.warehouseRepo, required this.apiClient});

  List<Warehouse> ownerWarehouses = [];
  List<Warehouse> searchownerWarehouses = [];
  List<ChamberField> addChamberFields = [];

  getWarehouseDeatilsbyId() {
    warehouseRepo.getWarehousebyId(warehouseId: "4");
    update();
  }



  getWarehousesByUserId() async {
    await warehouseRepo
        .getWarehousesByUserId(ownerId: Get.find<UserController>().userId)
        .then((value) {
      if (value != null) {
        ownerWarehouses = value;
        searchownerWarehouses = value;

        update();
      }
    });
  }

  getChamberFields() {
    warehouseRepo.getAddChamberFields().then((value) {
      if (value != null) {
        addChamberFields = value;
        update();
      }
    });
  }
}
