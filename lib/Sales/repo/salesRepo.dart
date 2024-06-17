// import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Sales/Model/Customer/customerListElement.dart';
import 'package:moolwmsstore/Sales/Model/Indent/indentElement.dart';
import 'package:moolwmsstore/Sales/Model/PurchaseOrder.dart';
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

  Future<List<CustomerListElement>?> getCustomers(
      {required int recordsPerPage,
      required int page,
      String? name,
      String? phone_no}) async {
    Response<dynamic> value = await apiClient.postData(
        'user/customerList?recordsPerPage=$recordsPerPage&next=$page', {
      "name": name ?? "",
      "phone_no": phone_no ?? "",
      "start_date": "",
      "end_date": ""
    });
    if (value.data["message"] == "Data Retrieved Successfully!") {
      return (value.data["result"] as List)
          .map((e) => CustomerListElement.fromJson(e))
          .toList();
    } else {
      return null;
    }
  }

  Future<List<IndentElement>?> getIndents({
    required int recordsPerPage,
    required int page,
  }) async {
    Response<dynamic> value = await apiClient.postData(
        'sales/poIndentList?recordsPerPage=$recordsPerPage&next=$page', {
      "order_number": "",
      "indent_number": "",
      "start_date": "",
      "end_date": "",
      "warehouse_id": ""
    });
    if (value.data["message"] == "Data Retrieved Successfully!") {
      return (value.data["result"] as List)
          .map((e) => IndentElement.fromJson(e))
          .toList();
    } else {
      return null;
    }
  }
}
