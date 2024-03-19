import 'package:dio/dio.dart';
import 'package:moolwmsstore/Data/Model/Warehouse/warehouse.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WarehouseRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  WarehouseRepo({required this.sharedPreferences, required this.apiClient});

  Future<List<Warehouse>?> getAddWarehouseFields() async {
    Response<dynamic> value =
        await apiClient.getData('dynamic/getAllWareHouseValues');
    if (value.data["message"] == "Values found") {
      List result = value.data["result"];

      return result.map((e) => Warehouse.fromJson(e)).toList();
    } else {
      return null;
    }
  }
  Future<void>  getWarehousesByUserId({required var ownerId}) async {
    await apiClient.getData("owner/getWarehousesByUserId/$ownerId");
  }
  Future<void>  getChamberByFloorID({required var floorid}) async {
    await apiClient.getData("owner/getChamberHouseView/$floorid");
  }
 
}
