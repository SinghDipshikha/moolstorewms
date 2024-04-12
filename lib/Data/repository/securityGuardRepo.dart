import 'package:dio/dio.dart';
import 'package:moolwmsstore/Data/Model/SecurityGuard/employeeEntry.dart';
import 'package:moolwmsstore/Data/Model/SecurityGuard/secGuardDetail.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecurityGuardRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  SecurityGuardRepo({required this.sharedPreferences, required this.apiClient});

  Future<SecGuardDetail?> verifyEmployee({
    required var empId,
    required var daterTime,
    required var gateId,
  }) async {
    Response res = await apiClient.postData("register/verifyEmployeeByEmpId", {
      "employee_id": "$empId",
      "gate_id": "$daterTime",
      "date_time": "$gateId",
    });
    if (res.data["message"] == "Employee Verified Successfully") {
      return SecGuardDetail.fromJson(res.data["result"]);
    }
    return null;
  }

  Future<List<EmployeeEntry>?> getEmployeesList() async {
    Response<dynamic> res =
        await apiClient.getData("register/getAllEmployeeChecks");
    if (res.data["message"] == "Employee Checkins/Outs found") {
      List value = res.data["result"];
      return value.map((e) => EmployeeEntry.fromJson(e)).toList();
    }
    return null;
  }

  Future checkInOut({
    required int userId,
    required DateTime dateTime,
    required String status,
    required int gateId,
    required int allowBy,
  }) async {
    Response<dynamic> res =
        await apiClient.postData("register/addNewCheckInOut", {
      "user_id": userId,
      "date_time": "2024-03-30 05:30:35",
      "status": status,
      "gate_id": gateId,
      "allow_by": allowBy
    });
    if (res.data["message"] == "Invalid status value provided") {
      return false;
    } else if (res.data["message"] == "") {
      return true;
    }
    return false;
  }
  
}
