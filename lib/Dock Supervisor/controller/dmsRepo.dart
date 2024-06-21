import 'package:get/get.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/dock.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsController.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Dmsrepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  Dmsrepo({required this.sharedPreferences, required this.apiClient});

  Future<List<Dock>?> getUnassignedDocks() async {
    var res = await apiClient.getData(
        "dock/getDocksNotAssigned/${Get.find<DmsController>().currentlySelectedWarehouse!["id"]}");
    if (res.data["message"] == "Docks List found") {
      return (res.data["result"] as List).map((e) => Dock.fromJson(e)).toList();
    } else {
      return null;
    }
  }

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
