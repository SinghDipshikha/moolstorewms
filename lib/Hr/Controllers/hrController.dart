import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Hr/HumanResource.dart';
import 'package:moolwmsstore/Hr/Model/addCareerDetail.dart';
import 'package:moolwmsstore/Hr/Model/employee.dart';
import 'package:moolwmsstore/Hr/Model/personalDetailsRequest.dart';
import 'package:moolwmsstore/Hr/View/addedStaffScreen.dart';
import 'package:moolwmsstore/Hr/repository/hrrepo.dart';
import 'package:moolwmsstore/Owner/Model/addWarehouse.dart';
import 'package:moolwmsstore/Sales/Sales.dart';
import 'package:moolwmsstore/Security%20Guard/SecurityGuard.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';

class HRController extends GetxController {

  final HrRepo hrRepo;
  final ApiClient apiClient;
  bool isLoading = false;
  bool isOwner;
  HRController(
      {required this.hrRepo,
      required this.apiClient,
      required this.user,

      this.isOwner = false});
  User user;
  List<AddCareerDetail> carrierDetails = [const AddCareerDetail()];
  var myHrID;
  
  PersonalDetailsRequest addPersonalDetailModel = const PersonalDetailsRequest();
  List<Employee> employees = [];
  AddWarehouse? warehouse;
  void addCareerDetails() {
    hrRepo.addCareerDetails(
        userID: user.id, ownerID: 2, carrierDetails: carrierDetails);
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
 
  getAllEmployeesByWarehouse( ) {
    apiClient.getData("owner/getAllEmployeesByWarehouseId/$warehouse").then((value) {
      if (value.data["message"] == "All Employees found") {
        List x = value.data["result"];
        employees = x.map((e) => Employee.fromJson(e)).toList();
        Logger().i(employees);

        update();
      }
    });
  }

  addPersonalDetails() async {
    isLoading = true;
    update();
    await apiClient
        .postData("owner/addChamberHouse", addPersonalDetailModel.toJson())
        .then((value) {
      if (value.data["result"] == "Information Added") {
        addPersonalDetailModel = const PersonalDetailsRequest();
        Snacks.greenSnack("Personal Information Added");
      }
    });
    isLoading = false;
    update();
  }
}
