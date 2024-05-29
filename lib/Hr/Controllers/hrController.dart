import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Hr/HumanResource.dart';
import 'package:moolwmsstore/Hr/Model/addBankDetails.dart';
import 'package:moolwmsstore/Hr/Model/addCareerDetail.dart';
import 'package:moolwmsstore/Hr/Model/addEducationDetails.dart';
import 'package:moolwmsstore/Hr/Model/addReferralDetails.dart';
import 'package:moolwmsstore/Hr/Model/bankDetailsRequest.dart';
import 'package:moolwmsstore/Hr/Model/careerDetailsRequest.dart';
import 'package:moolwmsstore/Hr/Model/educationDetailsRequest.dart';
import 'package:moolwmsstore/Hr/Model/personalDetailsRequest.dart';
import 'package:moolwmsstore/Hr/Model/personaldetailsResponse.dart';
import 'package:moolwmsstore/Hr/Model/referralDetailsRequest.dart';
import 'package:moolwmsstore/Hr/Model/shiftDetailsRequest.dart';
import 'package:moolwmsstore/Hr/Model/staff.dart';
import 'package:moolwmsstore/Hr/View/Employee%20Details/addEmployeeBankDetails.dart';
import 'package:moolwmsstore/Hr/View/Employee%20Details/addEmployeeCareerDetails.dart';
import 'package:moolwmsstore/Hr/View/Employee%20Details/addEmployeeEducationQualificationDetails.dart';
import 'package:moolwmsstore/Hr/View/Employee%20Details/addEmployeeReferralDetails.dart';
import 'package:moolwmsstore/Hr/View/Staff/addedStaffScreen.dart';
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
  ReferralDetailsRequest addReferralDetailRequestModel =
      const ReferralDetailsRequest();
  BankDetailsRequest addBankDetailsRequestModel = const BankDetailsRequest();
  CareerDetailsRequest addCareerDetailsRequestModel =
      const CareerDetailsRequest();
  ShiftDetailsRequest addShiftDetailsRequestModel = const ShiftDetailsRequest();
  List<StaffEntry> employees = [];
  List<PersonalDetailsResponse> getPersonalDetailsList = [];
  List<AddCareerDetail> getCareerDetailsList = [];
  List<AddEducationDetail> getEducationDetailsList = [];
  List<AddReferralDetail> getReferralDetailsList = [];
  List<AddBankDetails> getBankDetailsList = [];
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

///////////////Add or Update Personal Details ////////////
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

/////////// Get Personal Details/////////
  getPersonalDetails() {
    apiClient.postData("hr/getBasicInformationById", {
      {"user_id": 1}
    }).then((value) {
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

//////////////Add or Upddate Career Details/////////////
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

/////////////////Get Career Details///////////////
  getCareerDetails(var userId) {
    apiClient
        .getData(
      "hr/getCareerDetailsByUserId/$userId",
    )
        .then((value) {
      if (value.data["message"] == "career details found") {
        Snacks.greenSnack("Career Details");
        List x = value.data["result"];
        getCareerDetailsList =
            x.map((e) => AddCareerDetail.fromJson(e)).toList();

        isLoading = false;
        update();
      } else {
        isLoading = false;
        update();
      }
    });
  }

//////////////////////Add or Update Education Details//////////////
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

  ////////////////Get Eductaion Details///////////////////
  getEducationDetails() {
    apiClient.postData("hr/getEducationInformationById", {
      {"user_id": 2}
    }).then((value) {
      if (value.data["message"] == "items found") {
        Snacks.greenSnack("Educational Details");
        List x = value.data["result"];
        getEducationDetailsList =
            x.map((e) => AddEducationDetail.fromJson(e)).toList();

        isLoading = false;
        update();
      } else {
        isLoading = false;
        update();
      }
    });
  }

////////////////Add and Update Referral Details////////////////////
  addReferralDetails() async {
    isLoading = true;
    update();
    await apiClient
        .postData(
            "hr/getUserReferralsById", addReferralDetailRequestModel.toJson())
        .then((value) {
      if (value.data["message"] == "Employee Information Added") {
        print('Deepshikha');
        addReferralDetailRequestModel = const ReferralDetailsRequest();
        Snacks.greenSnack("Personal Information Added");

        isLoading = false;
        update();
        Get.to(const AddEmployeeBankDetails(), id: hrNavigationKey);
      }
    });
  }
////////////Get Referral Details///////////////////

  getReferralDetails() {
    apiClient.postData("hr/getUserReferralsById", {
      {"user_id": 2}
    }).then((value) {
      if (value.data["message"] == "items found") {
        Snacks.greenSnack("Referral Details");
        List x = value.data["result"];
        getReferralDetailsList =
            x.map((e) => AddReferralDetail.fromJson(e)).toList();

        isLoading = false;
        update();
      } else {
        isLoading = false;
        update();
      }
    });
  }

  //////////Add Update Bank Details/////////////////////
  addBankDetails() async {
    isLoading = true;
    update();
    await apiClient
        .postData("hr/addBankDetails", addBankDetailsRequestModel.toJson())
        .then((value) {
      if (value.data["message"] == "information updated") {
        addBankDetailsRequestModel = const BankDetailsRequest();
        Snacks.greenSnack("Bank Information Added");

        isLoading = false;
        update();
        // Get.to(const AddEmployeeCareerDetails(), id: hrNavigationKey);
      }
    });
  }

  /////////////Get Bank Details////////////////////////////////
  getBankDetails() {
    apiClient.postData("hr/getBankDetailsById", {
      {"user_id": 2}
    }).then((value) {
      if (value.data["message"] == "items found") {
        Snacks.greenSnack("Bank Details");
        List x = value.data["result"];
        getBankDetailsList = x.map((e) => AddBankDetails.fromJson(e)).toList();

        isLoading = false;
        update();
      } else {
        isLoading = false;
        update();
      }
    });
  }

  ////////////////Add Shift//////////////

  addShiftDetails() async {
    isLoading = true;
    update();
    await apiClient
        .postData("hr/addShift", addBankDetailsRequestModel.toJson())
        .then((value) {
      if (value.data["message"] == "Shift 2 added successfully!") {
        addShiftDetailsRequestModel = const ShiftDetailsRequest();
        Snacks.greenSnack("Shift Added Successfully");

        isLoading = false;
        update();
      }
    });
  }
}
