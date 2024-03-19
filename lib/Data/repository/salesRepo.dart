// import 'package:get/get.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
class SalesRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  SalesRepo({required this.sharedPreferences, required this.apiClient});
//'http://13.234.185.160:3000/'
  Future<Response> getAllPoList() async {
    return apiClient.getData('owner/signup');
  }
}
