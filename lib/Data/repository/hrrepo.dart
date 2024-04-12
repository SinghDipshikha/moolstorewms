import 'package:dio/dio.dart';
import 'package:moolwmsstore/Data/Model/Hr/addCareerDetail.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HrRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  HrRepo({required this.sharedPreferences, required this.apiClient});

  Future<bool> addCareerDetails(
      {var hrID,
      required var userID,
      required var ownerID,
      required List<AddCareerDetail> carrierDetails}) async {
    Response res = await apiClient.postData("hr/addCareerDetails", {
      "user_id": 2,
      "owner_id": 2,
      "career_details": carrierDetails.map((e) => e.toJson()).toList()
    });
    if (res.data["message"] == "Career details updated/added successfully") {
      return true;
    }
    return false;
  }
}