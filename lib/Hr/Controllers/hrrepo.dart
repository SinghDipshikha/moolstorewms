import 'package:get/get.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/Model/attendance.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HrRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  HrRepo({required this.sharedPreferences, required this.apiClient});

  Future<List<AttendanceEntry>?> getAllAttendance({
    required int recordsPerPage,
    required int page,
  }) async {
    var res = await apiClient.postData(
        "hr/viewAttendanceList?recordsPerPage=$recordsPerPage&next=$page", {
      "name": "",
      "start_date": "",
      "end_date": "",
      "warehouse_id":
          Get.find<HRController>().currentlySelectedWarehouse!.warehouse_id
    });
    if (res.data["message"] == "All Attendance fetched Successfully") {
      return (res.data["result"] as List)
          .map((e) => AttendanceEntry.fromJson(e))
          .toList();
    }
    return null;
  }
}
