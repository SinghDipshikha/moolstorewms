import 'package:get/get.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/Model/Employee/addBankDetails.dart';
import 'package:moolwmsstore/Hr/Model/Employee/addCareerDetail.dart';
import 'package:moolwmsstore/Hr/Model/Employee/addEducationDetails.dart';
import 'package:moolwmsstore/Hr/Model/Employee/addReferralDetails.dart';
import 'package:moolwmsstore/Hr/Model/Employee/personaldetails.dart';
import 'package:moolwmsstore/Hr/Model/attendance.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HrRepo {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  HrRepo({required this.sharedPreferences, required this.apiClient});
  List<PersonalDetailsResponse> getPersonalDetailsList = [];
  List<AddCareerDetail> getCareerDetailsList = [];

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

/////////// Get Personal Details/////////
  Future<PersonalDetailsResponse?> getPersonalDetails() async {
    var res = await apiClient.postData("hr/getBasicInformationById",
        {"user_id": Get.find<HRController>().currentlySeletedEmployee!.id},
        passhandlecheck: true);
    if (res.data["message"] == "Basic information found") {
      return (res.data["result"] as List)
          .map((e) => PersonalDetailsResponse.fromJson(e))
          .toList()[0];
    } else {
      return null;
    }
  }

  /////////////////Get Career Details///////////////
  Future<List<AddCareerDetail>?> getCareerDetails() async {
    var res = await apiClient.getData(
      "hr/getCareerDetailsByUserId/${Get.find<HRController>().currentlySeletedEmployee!.id}",
    );
    if (res.data["message"] == "Career details found") {
      return getCareerDetailsList = (res.data["result"] as List)
          .map((e) => AddCareerDetail.fromJson(e))
          .toList();
    } else {
      return null;
    }
  }

  Future<AddEducationDetail?> getEducationDetails() async {
    var res = await apiClient.postData("hr/getEducationInformationById",
        {"user_id": Get.find<HRController>().currentlySeletedEmployee!.id});
    if (res.data["message"] == "Education information found") {
      return (res.data["result"] as List)
          .map((e) => AddEducationDetail.fromJson(e))
          .toList()
          .last;
    } else {
      return null;
    }
  }

  /////////////////Get Bank Details///////////////
  Future<AddBankDetails?> getbankDetails() async {
    var res = await apiClient.postData("hr/getBankDetailsById",
        {"user_id": Get.find<HRController>().currentlySeletedEmployee!.id});
    if (res.data["message"] == "Bank details found") {
      //   return getCareerDetailsList = (res.data["result"] as List)
      //       .map((e) => AddCareerDetail.fromJson(e))
      //       .toList();
    } else {
      return null;
    }
    return null;
  }

  Future<AddReferralDetail?> getReferDetails() async {
    var res = await apiClient.postData("hr/getUserReferralsById",
        {"user_id": Get.find<HRController>().currentlySeletedEmployee!.id});
    if (res.data["message"] == "Referral details found") {
      return (res.data["result"] as List)
          .map((e) => AddReferralDetail.fromJson(e))
          .toList()
          .last;
    } else {
      return null;
    }
  }

  // getCareerDetails(var userId) {
  //   apiClient
  //       .getData(
  //     "hr/getCareerDetailsByUserId/$userId",
  //   )
  //       .then((value) {
  //     if (value.data["message"] == "career details found") {
  //       Snacks.greenSnack("Career Details");
  //       List x = value.data["result"];
  //       getCareerDetailsList =
  //           x.map((e) => AddCareerDetail.fromJson(e)).toList();

  // isLoading = false;
  // update();
  //     } else {
  //       isLoading = false;
  //       update();
  //     }
  //   });
  // }
}
