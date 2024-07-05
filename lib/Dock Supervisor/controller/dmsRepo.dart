import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Chamber/gridChamber.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Chamber/palletAssignBody.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Loadingunloadking/indentDetails.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Loadingunloadking/unloadingMaterial.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/dock.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsController.dart';
import 'package:moolwmsstore/Owner/Model/Chamber/chamber.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Dmsrepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  Dmsrepo({required this.sharedPreferences, required this.apiClient});

  Future<GridChamber?> getChamberData(int chamberId) async {
    var value =
        await apiClient.getData("owner/getChamberPalletByChamberId/$chamberId");

    if (value.data["message"] == "chamber found successfully") {
      return GridChamber.fromJson(value.data["result"]);
    } else {
      return null;
    }
  }

  Future<List<Chamber>?> getAllChamberByWareHouseId(int warehoueId) async {
    var value = await apiClient.postData("owner/getAllChamberByWareHouseId", {
      "warehouse_id": warehoueId,
      "temp_min_range": "",
      "temp_max_range": ""
    });
    if (value.data["message"] == "Chamber Detail for this warehouse") {
      List result = value.data["result"];
      return result.map((e) => Chamber.fromJson(e)).toList();
    } else {
      return null;
    }
  }

  getUnloadedMaterialByIndent({required String indent_number}) async {
    var res = await apiClient
        .getData("dock/viewUnloadedMaterialByIndent/$indent_number");
    Logger().i(res.data);
  }

  assignProductsToPallets(PalletAssignBody palletAssignBody) async {
    var res = await apiClient.postData(
        "dock/palletAssign", palletAssignBody.toJson());
    Logger().i(res.data);
  }

  Future<List<Dock>?> getUnassignedDocks() async {
    var res = await apiClient.getData(
        "dock/getDocksNotAssigned/${Get.find<DmsController>().currentlySelectedWarehouse!.warehouse_id}");
    if (res.data["message"] == "Docks List found") {
      return (res.data["result"] as List).map((e) => Dock.fromJson(e)).toList();
    } else {
      return null;
    }
  }

  Future<bool> assignDockToVehicle(
      {required int rowId, required int dockNumber}) async {
    var res = await apiClient.postData("dock/vehicleDockAssigned", {
      "id": rowId,
      "updated_at": DateTime.now().toString(),
      "vehicle_status": "Dock Assigned",
      "dock_id": dockNumber
    });
    if (res.data["message"] == "Dock Assigned") {
      return true;
    } else {
      return false;
    }
  }

  Future<List<Dock>?> getAllDockListByWarehouseId() async {
    var value = await apiClient.getData(
        "dock/getAllQueuedListByDocks/${Get.find<DmsController>().currentlySelectedWarehouse!.warehouse_id}");
    if (value.data["message"] == "Docks List found") {
      return (value.data["result"] as List)
          .map((e) => Dock.fromJson(e))
          .toList();
    } else {
      return null;
    }
  }

  Future<IndentDetails?> getindentDetails({required String indentId}) async {
    var res = await apiClient.getData("dock/getIndentDetails/$indentId");

    if ((res.data["message"].toString())
        .contains("Indent details found Successfully")) {
      return IndentDetails.fromJson(res.data["result"]);
    } else {
      return null;
    }
  }

  Future<bool> unloadingMaterial(UnloadingMaterial unloadingMaterial) async {
    var res = await apiClient.postData(
        "dock/unloadingMaterial", unloadingMaterial.toJson());
    if (res.data["message"] == "Material Added") {
      return true;
    } else {
      return false;
    }
  }

  /*
  {
        "indent_number": "IND-SG047",
        "warehouse_id": 2,
        "in_out_status": "IN",
        "product_details": [
            {
                "product_id": 59,
                "product_name": "peas",
                "qty": 5,
                "unit": 10
            },
            {
                "product_id": 60,
                "product_name": "tomato ",
                "qty": 10,
                "unit": 20
            }
        ]
    }
  
   */

// Future<bool> addContactDetails(
//       {var hrID,
//       required var userID,
//       required var ownerID,
//       required List<AddCareerDetail> carrierDetails}) async {
//     Response res = await apiClient.postData("hr/addCareerDetails", {
//       "user_id": 2,
//       "owner_id": 2,
//       "career_details": carrierDetails.map((e) => e.toJson()).toList()
//     });
//     if (res.data["message"] == "Career details updated/added successfully") {
//       return true;
//     }
//     return false;
//   }
}
