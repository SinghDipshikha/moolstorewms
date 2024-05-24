import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Hr/HumanResource.dart';
import 'package:moolwmsstore/Hr/Model/addCareerDetail.dart';
import 'package:moolwmsstore/Hr/Model/careerDetailsRequest.dart';
import 'package:moolwmsstore/Hr/Model/educationDetailsRequest.dart';
import 'package:moolwmsstore/Hr/Model/personalDetailsRequest.dart';
import 'package:moolwmsstore/Hr/Model/personaldetailsResponse.dart';
import 'package:moolwmsstore/Hr/Model/staff.dart';
import 'package:moolwmsstore/Hr/View/addEmployeeCareerDetails.dart';
import 'package:moolwmsstore/Hr/View/addEmployeeEducationQualificationDetails.dart';
import 'package:moolwmsstore/Hr/View/addEmployeeReferralDetails.dart';
import 'package:moolwmsstore/Hr/View/addedStaffScreen.dart';
import 'package:moolwmsstore/Hr/repository/hrrepo.dart';
import 'package:moolwmsstore/Owner/Model/addWarehouse.dart';
import 'package:moolwmsstore/Sales/Sales.dart';
import 'package:moolwmsstore/Security%20Guard/SecurityGuard.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/globals.dart';

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

  PersonalDetailsRequest addPersonalDetailRequestModel =
      const PersonalDetailsRequest();
  EducationDetailsRequest addEducationDetailsRequestModel =
      const EducationDetailsRequest();
  CareerDetailsRequest addCareerDetailsRequestModel =
      const CareerDetailsRequest();
  List<StaffEntry> employees = [];
  List<PersonalDetailsResponse> getPersonalDetailsList = [];
  AddWarehouse? warehouse;
  // void addCareerDetails() {
  //   hrRepo.addCareerDetails(
  //       userID: user.id, ownerID: 2, carrierDetails: carrierDetails);
  // }

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

  getAllStaffList() {
    apiClient.getData("hr/staffList").then((value) {
      if (value.data["message"] == "Staff Data Retrieved Successfully!") {
        List x = value.data["result"];
        employees = x.map((e) => StaffEntry.fromJson(e)).toList();
        Logger().i(employees);

        update();
      }
    });
  }

  addPersonalDetails() async {
    isLoading = true;
    update();
    await apiClient
        .postData(
            "hr/addBasicInformation", addPersonalDetailRequestModel.toJson())
        .then((value) {
      if (value.data["message"] == "Employee Information Added") {
        print('Deepshikha');
        addPersonalDetailRequestModel = const PersonalDetailsRequest();
        isLoading = false;
        // List x = value.data.data["result"];
        // getPersonalDetails =
        //     x.map((e) => PersonalDetailsResponse.fromJson(e)).toList();
        // Logger().i(getPersonalDetails);
        Snacks.greenSnack("Personal Information Added");

        isLoading = false;
        update();
        Get.to(const AddEmployeeCareerDetails(), id: hrNavigationKey);
      }
    });
  }

  getPersonalDetails(var userId) {
    apiClient
        .getData(
      "hr/getBasicInformationById",
    )
        .then((value) {
      if (value.data["message"] == "items found") {
        Snacks.greenSnack("Personal Details");
        List x = value.data["result"];
        getPersonalDetailsList =
            x.map((e) => PersonalDetailsResponse.fromJson(e)).toList();

        isLoading = false;
        update();
      } else {
        isLoading = false;
        update();
      }
    });
  }

  Future<bool> addCareerDetails({
    required int userID,
    required int ownerID,
    required List<CareerDetailsRequest> careerDetails,
    required int updatedBy,
  }) async {
    isLoading = true;
    update();

    final Map<String, dynamic> requestBody = {
      "user_id": userID,
      "updated_by": updatedBy,
      "owner_id": ownerID,
      "career_details": careerDetails.map((detail) => detail.toJson()).toList(),
    };

    final response =
        await apiClient.postData("hr/addCareerDetails", requestBody);

    if (response.data["message"] ==
        "Career details updated/added successfully") {
      Snacks.greenSnack("Career Information Added Successfully");

      update();
      Get.to(const AddEmployeeEducationQualificationDetails(),
          id: hrNavigationKey);
      return true;
    } else {
      return false;
    }
  }

  getCareerDetails(var userId) {
    apiClient
        .getData(
      "hr/getBasicInformationById",
    )
        .then((value) {
      if (value.data["message"] == "items found") {
        Snacks.greenSnack("Personal Details");
        List x = value.data["result"];
        getPersonalDetailsList =
            x.map((e) => PersonalDetailsResponse.fromJson(e)).toList();

        isLoading = false;
        update();
      } else {
        isLoading = false;
        update();
      }
    });
  }

  addEducationDetails() async {
    isLoading = true;
    update();
    await apiClient
        .postData("hr/addEducationInformation",
            addEducationDetailsRequestModel.toJson())
        .then((value) {
      if (value.data["message"] == "Information Added") {
        print('Deepshikha');
        addEducationDetailsRequestModel = const EducationDetailsRequest();
        Snacks.greenSnack("Education Information Added Successfully");
        isLoading = false;
        update();
        Get.to(const AddEmployeeReferralDetails(), id: hrNavigationKey);
      }
      if (value.data["message"] == "information update") {
        addEducationDetailsRequestModel = const EducationDetailsRequest();
        Snacks.greenSnack("Education Information Updated Successfully");
        isLoading = false;
        update();
        Get.to(const AddEmployeeReferralDetails(), id: hrNavigationKey);
      }
    });
  }

  addReferralDetails() async {
    isLoading = true;
    update();
    await apiClient
        .postData(
            "hr/getUserReferralsById", addPersonalDetailRequestModel.toJson())
        .then((value) {
      if (value.data["message"] == "Employee Information Added") {
        print('Deepshikha');
        addPersonalDetailRequestModel = const PersonalDetailsRequest();
        Snacks.greenSnack("Personal Information Added");

        isLoading = false;
        update();
        Get.to(const AddEmployeeCareerDetails(), id: hrNavigationKey);
      }
    });
  }
}
