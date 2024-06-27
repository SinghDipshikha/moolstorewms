import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Owner/Model/Asset/assetCatoegories.dart';
import 'package:moolwmsstore/Owner/Model/Asset/assetElement.dart';
import 'package:moolwmsstore/Owner/Model/Asset/assetType.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OwnerRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  OwnerRepo({required this.sharedPreferences, required this.apiClient});

  //owner/addEmployeeByOwner

 Future<List<AssetCatoegory>?> getAssetsCategories() async {
    var res = await apiClient.getData("asset/getAssetCategories");
    if (res.data["message"] == "All Asset Categories found") {
      return (res.data["result"] as List)
          .map((e) => AssetCatoegory.fromJson(e))
          .toList();
    } else {
      return null;
    }
  }

  Future<List<AssetType>?> getAssetsTypes() async {
    var res = await apiClient.getData("asset/getAssetTypes");
    if (res.data["message"] == "All Asset types found") {
      return (res.data["result"] as List)
          .map((e) => AssetType.fromJson(e))
          .toList();
    } else {
      return null;
    }
  }

  Future<List<AssetElement>?> getAssetsList({
    required int warehouse_id,
    required int recordsPerPage,
    required int page,
  }) async {
    var res = await apiClient
        .postData("asset/assetList?recordsPerPage=$recordsPerPage&next=$page", {
      "asset_name": "",
      "invoice_no": "",
      "start_date": "",
      "end_date": "",
      "warehouse_id": warehouse_id
    });
    //"message": "Data Retrieved Successfully!",
    if (res.data["message"] == "Data Retrieved Successfully!") {
      return (res.data["result"] as List)
          .map((e) => AssetElement.fromJson(e))
          .toList();
    } else {
      return null;
    }
  }
}
