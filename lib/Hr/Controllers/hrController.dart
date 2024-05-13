import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Hr/HumanResource.dart';
import 'package:moolwmsstore/Hr/Model/addCareerDetail.dart';
import 'package:moolwmsstore/Hr/Model/employee.dart';
import 'package:moolwmsstore/Hr/View/addedStaffScreen.dart';
import 'package:moolwmsstore/Hr/repository/hrrepo.dart';
import 'package:moolwmsstore/Sales/Sales.dart';
import 'package:moolwmsstore/Security%20Guard/SecurityGuard.dart';

class HRController extends GetxController {
  final HrRepo hrRepo;
  final ApiClient apiClient;
     bool isOwner;
  HRController(
      {required this.hrRepo, required this.apiClient, required this.user,this.isOwner =false});
  User user;
  List<AddCareerDetail> carrierDetails = [const AddCareerDetail()];
  var myHrID;
  List<Employee> employees = [];

  void addCareerDetails() {
    hrRepo.addCareerDetails(
        userID: 2, ownerID: 2, carrierDetails: carrierDetails);
  }

   List<Widget> navigationAccordingStatus = [
    const AddedStaffScreen(),
  ];

  switchRole(String role) {
    if (role == "security-guard") {
      Get.offAll(const SecurityGuard());
    }
    if (role == "hr") {
      Get.offAll(const HumanResouce());
    }
    if (role == "sales") {
      Get.offAll(const Sales());
    }
  }

  getAllEmployeesByOrg() {
    apiClient.getData("owner/getAllEmployeesByOrg").then((value) {
      if (value.data["message"] == "All Employees found") {
        List x = value.data["result"];
        employees = x.map((e) => Employee.fromJson(e)).toList();
        Logger().i(employees);

        update();
      }
    });
  }
}
