import 'package:get/get_connect/http/src/response/response.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  AuthRepo({required this.sharedPreferences, required this.apiClient});

  Future<Response> signup(Map body) async {
    return await apiClient.postData(AppConstants.signupuri, body);
  }
  Future<Response> getSignupParams() async {
    return await apiClient.getData(AppConstants.signupfields);
  }
}
