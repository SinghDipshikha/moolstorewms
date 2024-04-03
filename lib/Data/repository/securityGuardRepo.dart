import 'package:dio/dio.dart';
import 'package:moolwmsstore/Data/Model/SecurityGuard/secGuardDetail.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecurityGuardRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  SecurityGuardRepo({required this.sharedPreferences, required this.apiClient});

  Future<SecGuardDetail?> verifyEmployee({
    required var empId,
  }) async {
    Response res = await apiClient
        .postData("register/verifyEmployeeByEmpId", {"employee_id": "$empId"});
    if (res.data["message"] == "Employee Verified Successfully") {
      return SecGuardDetail.fromJson(res.data["result"]);
    }
    return null;
  }
}
