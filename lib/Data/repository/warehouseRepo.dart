import 'package:dio/dio.dart';
import 'package:moolwmsstore/Owner/Model/addChamber.dart';
import 'package:moolwmsstore/Owner/Model/addWarehouse.dart';
import 'package:moolwmsstore/Owner/Model/warehouse.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WarehouseRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  WarehouseRepo({required this.sharedPreferences, required this.apiClient});

  Future<Warehouse?> getWarehousebyId({required var warehouseId}) async {
    Response<dynamic> value =
        await apiClient.getData('owner/getWarehousesById/$warehouseId');
    if (value.data["message"] == "Values found") {
      return Warehouse.fromJson(value.data["result"]);
    } else {
      return null;
    }
  }

  Future<List<AddWarehouse>?> getAddWarehouseFields() async {
    Response<dynamic> value =
        await apiClient.getData('dynamic/getAllWareHouseValues');
    if (value.data["message"] == "Values found") {
      List result = value.data["result"];

      return result.map((e) => AddWarehouse.fromJson(e)).toList();
    } else {
      return null;
    }
  }

  Future<List<ChamberField>?> getAddChamberFields() async {
    Response<dynamic> value =
        await apiClient.getData('dynamic/getOwnerAddChamberBasicDetails');
    if (value.data["message"] == "Values found") {
      List result = value.data["result"];

      return result.map((e) => ChamberField.fromJson(e)).toList();
    } else {
      return null;
    }
  }

  addWarehouse({required AddWarehouse warehouse}) async {
    await apiClient.postData("/owner/addOnlyWareHouse", warehouse);
  }

  addWarehouseChamber({required Map chamber}) async {
    await apiClient.postData("/owner/addChamberHouse", chamber);
  }

  Future<List<Warehouse>?> getWarehousesByUserId({required var ownerId}) async {
    Response<dynamic> value =
        await apiClient.getData("owner/getWarehousesByUserId/$ownerId");

    if (value.data["message"] == "Ware House Detail Found") {
      List result = value.data["result"];

      return result.map((e) => Warehouse.fromJson(e)).toList();
    } else {
      return null;
    }
  }

  Future<void> getChamberByFloorID({required var floorid}) async {
    await apiClient.getData("owner/getChamberHouseView/$floorid");
  }
}
