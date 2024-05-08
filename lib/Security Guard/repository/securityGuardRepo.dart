import 'package:dio/dio.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/addVisitor.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/allPersonsInfo.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/allTicketList.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/allVisitorsInfo.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/employeeEntry.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/secGuardDetail.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/singlePersonDetail.dart';
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

  Future<AddVisitorBySecurityGaurd?> addVisitor({
    required var visitorId,
    required var ticketGeneratedBy,
    required var visitorName,
    required var visitorPhoneNumber,
    required var visitorIdProof,
    required var purposeOfVisit,
    required var inOutStatus,
  }) async {
    Response res =
        await apiClient.postData("visitor/addVisitorBySecurityGuard", {
      "id": visitorId,
      "ticket_generate_by": ticketGeneratedBy,
      "visitor_name": visitorName,
      "visitor_ph_number": visitorPhoneNumber,
      "id_proof": visitorIdProof,
      "purpose_of_visit": purposeOfVisit,
      "in_out_status": inOutStatus
    });
    if (res.data["message"] == "Visitor Information updated") {
      return AddVisitorBySecurityGaurd.fromJson(res.data["result"]);
    }
    return null;
  }

  Future<GetAllVisitorBySecurityGaurd?> getAllVisitorsData({
    required var recordsPerPage,
    required var next,
  }) async {
    Response res = await apiClient.getData(
        "ticket/getAllTicketsList?recordsPerPage=$recordsPerPage&$next=$next");
    if (res.data["message"] == "Visitor details fetched Successfully!") {
      return GetAllVisitorBySecurityGaurd.fromJson(res.data["result"]);
    }
    return null;
  }

  Future<GetAllPersonsBySecurityGaurd?> getAllPersonsData({
    required var recordsPerPage,
    required var next,
  }) async {
    Response res = await apiClient.getData(
        "person/getAllPersons?recordsPerPage=$recordsPerPage&$next=$next");
    if (res.data["message"] == "Person details fetched Successfully!") {
      return GetAllPersonsBySecurityGaurd.fromJson(res.data["result"]);
    }
    return null;
  }

  Future<GetSinglePersonDetails?> getSinglePersonDetails({
    required var personId,
  }) async {
    Response res =
        await apiClient.postData("person/getPersonDetailsByPersonId", {
      "employee_id": "$personId",
    });
    if (res.data["message"] == "Person Details Found for person id $personId") {
      return GetSinglePersonDetails.fromJson(res.data["result"]);
    }
    return null;
  }

  Future<GetSinglePersonDetails?> getVisitorDetailsByVisitorId({
    required var visitorId,
  }) async {
    Response res =
        await apiClient.postData("visitor/getVisitorDetailsByVisitorId", {
      "employee_id": "$visitorId",
    });
    if (res.data["message"] ==
        "Visitor Details Found for visitor id $visitorId") {
      return GetSinglePersonDetails.fromJson(res.data["result"]);
    }
    return null;
  }

  Future<GetAllTicketListBySecurityGuard?> getAllTicketList() async {
    Response res = await apiClient.getData("ticket/getAllTicketsList");
    if (res.data["message"] == "Data Retrieved Successfully!") {
      return GetAllTicketListBySecurityGuard.fromJson(res.data["result"]);
    }
    return null;
  }
}
