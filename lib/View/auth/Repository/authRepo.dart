import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Data/Model/Auth/addWarehouseField.dart';
import 'package:moolwmsstore/Data/Model/Auth/signupfield.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  AuthRepo({required this.sharedPreferences, required this.apiClient});

  dbConnect() {
    apiClient.postData('dynamicDbConnect', {
      {
        "config": {
          "host": "wms-rds.cl4mcyewc6ix.ap-south-1.rds.amazonaws.com",
          "user": "moolcode",
          "password": "moolcode2024",
          "database": "jnew_ltd_1057"
        },
        "query": "SELECT * FROM users"
      }
    });
  }

checkorganisationCode(){
//verifySignupOtp

  
}


  Future<Response> sendotp(String number) async {
    return apiClient.postData('user/loginOtp', {"mobile": number});
  }

  Future<Response> verifyotp(
      {required String number, required String otp}) async {
    return apiClient.postData('otp/verifyOtp', {"mobile": number, "otp": otp});
  }

  Future<Response> signUp({required Map res}) async {
    return apiClient.postData('owner/signup', res);
  }

  Future<List<SignupField>?> getSignupParams() async {
    Response<dynamic> value =
        await apiClient.getData('dynamic/getAllSignupValues');
    if (value.data["message"] == "Values found") {
      List result = value.data["result"];
      // Logger().d(result);

      return result.map((e) => SignupField.fromJson(e)).toList();
    } else {
      return null;
    }
  }

  Future<List<AddWarehiuseField>?> getAddWarehouseFields() async {
    Response<dynamic> value =
        await apiClient.getData('dynamic/getAllWareHouseValues');
    if (value.data["message"] == "Values found") {
      List result = value.data["result"];
      Logger().d(result);

      return result.map((e) => AddWarehiuseField.fromJson(e)).toList();
    } else {
      return null;
    }
  }
}
