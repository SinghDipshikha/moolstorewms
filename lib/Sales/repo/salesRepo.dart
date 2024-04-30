// import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:moolwmsstore/Sales/Model/PurchaseOrder.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SalesRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  SalesRepo({required this.sharedPreferences, required this.apiClient});

  Future<List<PurchaseOrder>?> getAllPoList() async {
    Response<dynamic> value = await apiClient.getData('user/getAllPoList');
    if (value.data["message"] == "orders found") {
      List result = value.data["result"];

      return result.map((e) => PurchaseOrder.fromJson(e)).toList();
    } else {
      return null;
    }
  }
}
