import 'package:dio/dio.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Hr/Model/careerDetailsRequest.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HrRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  HrRepo({required this.sharedPreferences, required this.apiClient});

  

  Future<bool> addPersonalDetails(
      {var hrID,
      required var userID,
      required var ownerID,
      required List<CareerDetailsRequest> carrierDetails}) async {
    Response res = await apiClient.postData("hr/addBasicInformation", {
      "user_id": 2,
      "owner_id": 2,
      "updated_by": 2,
      "career_details": carrierDetails.map((e) => e.toJson()).toList()
    });
    if (res.data["message"] == "Career Information Added Successfully") {
      return true;
    }
    return false;
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
