import 'package:dio/dio.dart';
import 'package:moolwmsstore/Common%20Data/Model/User/designation.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CommonRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  CommonRepo({required this.sharedPreferences, required this.apiClient});

  Future<List<Designation>?> getAllDesignations() async {
    Response<dynamic> value = await apiClient.getData('user/getAllPoList');
    if (value.data["message"] == "orders found") {
      List result = value.data["result"];
      // Logger().i(value.data);
      return result.map((e) {
        return Designation.fromJson(e);
      }).toList();
    } else {
      return null;
    }
  }
}
