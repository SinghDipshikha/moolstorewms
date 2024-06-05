import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Hr/HumanResource.dart';
import 'package:moolwmsstore/Hr/Model/addBankDetails.dart';
import 'package:moolwmsstore/Hr/Model/addCareerDetail.dart';
import 'package:moolwmsstore/Hr/Model/addEducationDetails.dart';
import 'package:moolwmsstore/Hr/Model/addReferralDetails.dart';
import 'package:moolwmsstore/Hr/Model/addShift.dart';
import 'package:moolwmsstore/Hr/Model/addShiftDetails.dart';
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
import 'package:moolwmsstore/Hr/View/Employee%20Details/addEmployeeDocuments.dart';
import 'package:moolwmsstore/Hr/View/Employee%20Details/addEmployeeEducationQualificationDetails.dart';
import 'package:moolwmsstore/Hr/View/Employee%20Details/addEmployeeReferralDetails.dart';
import 'package:moolwmsstore/Hr/View/Shfits/createShift.dart';
import 'package:moolwmsstore/Hr/View/Staff/addedStaffScreen.dart';
import 'package:moolwmsstore/Hr/repository/hrrepo.dart';
import 'package:moolwmsstore/Owner/Model/addWarehouse.dart';
import 'package:moolwmsstore/Sales/Sales.dart';
import 'package:moolwmsstore/Security%20Guard/SecurityGuard.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/globals.dart';
import 'package:restart_app/restart_app.dart';

class HRController extends GetxController {
  final HrRepo hrRepo;
  final ApiClient apiClient;
  bool isLoading = false;
  bool isOwner;
  User user;
  HRController(
      {required this.hrRepo,
      required this.apiClient,
      required this.user,
      this.isOwner = false});
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
  ReferralDetailsRequest addReferralDetailsRequestModel =
      const ReferralDetailsRequest();
  ShiftDetailsRequest addShiftDetailsRequestModel = const ShiftDetailsRequest();
  List<StaffEntry> employees = [];
  List<AddShift> allShifts = [];
  List<PersonalDetailsResponse> getPersonalDetailsList = [];
  List<AddCareerDetail> getCareerDetailsList = [];
  List<AddEducationDetail> getEducationDetailsList = [];
  List<AddReferralDetail> getReferralDetailsList = [];
  List<AddBankDetails> getBankDetailsList = [];
  AddWarehouse? warehouse;
  List createShiftWarehouses = [];
  List<AddShiftDetails> getShiftData = [];
  Map? selectedWarehouse;
  int? currentUserId;

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

  bool imageUploading = false;
  Future<String?> uploadImage(XFile file) async {
    imageUploading = true;
    update();
    String? x = await apiClient.uploadImage(file);
    imageUploading = false;
    update();
    return x;
  }

  changeCreateShiftWarehouse({required Map warehouse}) {
    selectedWarehouse = warehouse;

    Logger().i(selectedWarehouse);
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
        List x = value.data.data["result"];
        getPersonalDetailsList =
            x.map((e) => PersonalDetailsResponse.fromJson(e)).toList();

        Logger().i(getPersonalDetails);
        Snacks.greenSnack("Personal Information Added");

        isLoading = false;
        update();
        Get.to(const AddEmployeeCareerDetails(), id: hrNavigationKey);
      }
    });
  }

/////////// Get Personal Details/////////
  getPersonalDetails(var userId) {
    apiClient.postData("hr/getBasicInformationById", {"user_id": userId}).then(
        (value) {
      if (value.data["message"] == "items found") {
        Snacks.greenSnack("Personal Details");
        List<dynamic> x = value.data["result"];
        getPersonalDetailsList =
            x.map((e) => PersonalDetailsResponse.fromJson(e)).toList();

        isLoading = false;
        update();
      } else {
        isLoading = false;
        update();
      }
    }).catchError((error) {
      isLoading = false;
      update();
      print("Error: $error");
    });
  }

//////////////Add or Upddate Career Details/////////////
  Future<bool> addCareerDetails({
    required int? userID,
    required List<CareerDetailsRequest> careerDetails,
    required int? updatedBy,
  }) async {
    isLoading = true;
    update();

    final Map<String, dynamic> requestBody = {
      "user_id": userID,
      "updated_by": updatedBy,
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

    try {
      final response = await apiClient.postData(
        "hr/addEducationInformation",
        addEducationDetailsRequestModel.toJson(),
      );

      final message = response.data["message"];

      if (message == "Information Added") {
        print('Deepshikha');
        addEducationDetailsRequestModel = const EducationDetailsRequest();
        Snacks.greenSnack("Education Information Added Successfully");
        Get.to(const AddEmployeeReferralDetails(), id: hrNavigationKey);
      } else if (message == "information updated") {
        addEducationDetailsRequestModel = const EducationDetailsRequest();
        Snacks.greenSnack("Education Information Updated Successfully");
        Get.to(const AddEmployeeReferralDetails(), id: hrNavigationKey);
      }
    } catch (error) {
      Snacks.redSnack("Failed to add education information. Please try again.");
      print("Error: $error");
    } finally {
      isLoading = false;
      update();
    }
  }

  ////////////////Get Eductaion Details///////////////////
  getEducationDetails(var userId) {
    isLoading = true;
    update();

    apiClient.postData(
        "hr/getEducationInformationById", {"user_id": userId}).then((value) {
      if (value.data["message"] == "items found") {
        Snacks.greenSnack("Educational Details");
        List<dynamic> x = value.data["result"];
        getEducationDetailsList =
            x.map((e) => AddEducationDetail.fromJson(e)).toList();
      } else {
        Snacks.redSnack("No educational details found.");
      }
      isLoading = false;
      update();
    }).catchError((error) {
      isLoading = false;
      update();
      print("Error: $error");
      Snacks.redSnack("Failed to fetch educational details.");
    });
  }

////////////////Add and Update Referral Details////////////////////
  Future<bool> addReferralDetails({
    required int? userID,
    required List<ReferralDetailsRequest> referralDetails,
    required int? updatedBy,
  }) async {
    isLoading = true;
    update();

    final Map<String, dynamic> requestBody = {
      "user_id": userID,
      "updated_by": updatedBy,
      "referral_details":
          referralDetails.map((detail) => detail.toJson()).toList(),
    };

    final response =
        await apiClient.postData("hr/addUserReferral", requestBody);

    if (response.data["message"] == "Referral Information Added") {
      print('Deepshikha');
      Snacks.greenSnack("Referral Information Added");

      update();
      Get.to(const AddEmployeeBankDetails(), id: hrNavigationKey);
      return true;
    } else {
      Snacks.redSnack("Failed to add referral information. Please try again.");
      return false;
    }
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

    try {
      final response = await apiClient.postData(
        "hr/addBankDetails",
        addBankDetailsRequestModel.toJson(),
      );

      final message = response.data["message"];

      if (message == "Information Added") {
        addBankDetailsRequestModel = const BankDetailsRequest();
        List x = response.data["result"];
        getBankDetailsList = x.map((e) => AddBankDetails.fromJson(e)).toList();
        Snacks.greenSnack("Bank Information Added Successfully");
        Get.to(const AddEmployeeDocumentsDetails(), id: hrNavigationKey);
      } else if (message == "information updated") {
        addBankDetailsRequestModel = const BankDetailsRequest();
        List x = response.data["result"];
        getBankDetailsList = x.map((e) => AddBankDetails.fromJson(e)).toList();
        Snacks.greenSnack("Bank Information Updated Successfully");
        Get.to(const AddEmployeeDocumentsDetails(), id: hrNavigationKey);
      }
    } catch (error) {
      Snacks.redSnack("Failed to add bank information. Please try again.");
      print("Error: $error");
    } finally {
      isLoading = false;
      update();
    }
  }

  /////////////Get Bank Details////////////////////////////////
  getBankDetails(var userId) {
    apiClient.postData("hr/getBankDetailsById", {
      {"user_id": userId}
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
    try {
      var response = await apiClient.postData(
          "hr/addShift", addShiftDetailsRequestModel.toJson());
      var value = response.data;

      if (value["status"] == true) {
        addShiftDetailsRequestModel = const ShiftDetailsRequest();

        var result = value["result"];
        if (result is List<dynamic>) {
          getShiftData =
              result.map((e) => AddShiftDetails.fromJson(e)).toList();
        } else if (result is Map<String, dynamic>) {
          getShiftData = [AddShiftDetails.fromJson(result)];
        } else {
          throw Exception('Unexpected JSON structure for "result"');
        }

        String shiftName = getShiftData.isNotEmpty
            ? getShiftData[0].shift_name!
            : 'Unknown Shift';
        Snacks.greenSnack("$shiftName Shift Added Successfully");

        Get.to(const CreateShiftScreen(), id: hrNavigationKey);
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      isLoading = false;
      update();
    }
  }

  getAllShift(int? warehouseId) {
    apiClient.getData("hr/getShiftByWarehouseId/$warehouseId").then((value) {
      if (value.data["message"] == "Shift found") {
        List x = value.data["result"];
        allShifts = x.map((e) => AddShift.fromJson(e)).toList();
        Logger().i(employees);

        update();
      }
    });
  }

  hrLogout() async {
    var box = await Hive.openBox('authbox');
    Get.find<HRController>().dispose();

    box.clear();
    Restart.restartApp();
  }

  // addDocuments() async {
  //   isLoading = true;
  //   update();
  //   try {
  //     final response = await apiClient.postData(
  //       "hr/addDocs",
  //       addDocumentRequestModel.toJson(),
  //     );

  //     if (response.data["message"] == "Document Information Added") {
  //       addDocumentRequestModel =
  //           const DocumentRequestModel(); 
  //       isLoading = false;

  //       Snacks.greenSnack("Document Information Added");

  //       isLoading = false;
  //       update();
  //     }
  //   } catch (error) {
  //     print('Error: $error');

  //     isLoading = false;
  //     update();
  //   }
  // }
}
