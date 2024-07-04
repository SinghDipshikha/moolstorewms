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
import 'package:moolwmsstore/Hr/Model/attendance.dart';
import 'package:moolwmsstore/Hr/Model/bankDetailsRequest.dart';
import 'package:moolwmsstore/Hr/Model/careerDetailsRequest.dart';
import 'package:moolwmsstore/Hr/Model/dashboardCount.dart';
import 'package:moolwmsstore/Hr/Model/personaldetails.dart';
import 'package:moolwmsstore/Hr/Model/referralDetailsRequest.dart';
import 'package:moolwmsstore/Hr/Model/shiftDetailsRequest.dart';
import 'package:moolwmsstore/Hr/Model/staff.dart';
import 'package:moolwmsstore/Hr/Model/uploadDocument.dart';
import 'package:moolwmsstore/Hr/View/Employee%20Details/addEmployeeBankDetails.dart';
import 'package:moolwmsstore/Hr/View/Employee%20Details/addEmployeeCareerDetails.dart';
import 'package:moolwmsstore/Hr/View/Employee%20Details/addEmployeeDocuments.dart';
import 'package:moolwmsstore/Hr/View/Employee%20Details/addEmployeeEducationQualificationDetails.dart';
import 'package:moolwmsstore/Hr/View/Employee%20Details/addEmployeePersonalDetails.dart';
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

  ReferralDetailsRequest addReferralDetailRequestModel =
      const ReferralDetailsRequest();
  BankDetailsRequest addBankDetailsRequestModel = const BankDetailsRequest();
  CareerDetailsRequest addCareerDetailsRequestModel =
      const CareerDetailsRequest();
  ReferralDetailsRequest addReferralDetailsRequestModel =
      const ReferralDetailsRequest();
  ShiftDetailsRequest addShiftDetailsRequestModel = const ShiftDetailsRequest();
  List<AddShift> allShifts = [];
  List<AttendanceEntry> allAttendanceList = [];
  List<PersonalDetailsResponseUpdate> getPersonalDetailsList = [];
  List<AddCareerDetail> getCareerDetailsList = [];
  List<AddEducationDetail> getEducationDetailsList = [];
  List<AddReferralDetail> getReferralDetailsList = [];
  List<AddBankDetails> getBankDetailsList = [];
  AddWarehouse? warehouse;
  List createShiftWarehouses = [];
  List<AddShiftDetails> getShiftData = [];

  List<ArrivalCount> arrivalCount = [];
  List<StaffEntry> employees = [];
  StaffEntry? currentlySeletedEmployee;
  List<Widget> navigationAccordingStatus = [];
  bool dashboardCountStatus = false;
  DashboardCount? dashboardCount;
  DateTime dashBoardStartDate =
      DateTime.now().subtract(const Duration(days: 1));
  DateTime dashBoardEndDate = DateTime.now();
  String? onTimeEmployees;
  String? lateEmployees;

  // List<Widget> employSumbitScreen = [
  //   const AddedStaffScreen(),
  //   const AddEmployeeBankDetails(),
  //   const AddEmployeeCareerDetails(),
  //   const AddEmployeeEducationQualificationDetails(),
  //   AddEmployeePersonalDetails(),
  //   const AddEmployeeDocumentsDetails(),
  //   const AddEmployeeDocumentsDetails(),
  // ];

  WarehousesAcess? currentlySelectedWarehouse;

  @override
  void onInit() {
    currentlySelectedWarehouse = user.warehouse![0];
    // TODO: implement onInit
    super.onInit();
  }

  selectEmployee(StaffEntry emp) {
    Logger().i(emp);

    currentlySeletedEmployee = emp;
    navigationAccordingStatus.clear();
    navigationAccordingStatus.add(const AddedStaffScreen());

    if (currentlySeletedEmployee!.isDocumentDetails == 0) {
      navigationAccordingStatus.add(const AddEmployeeDocumentsDetails());
    }
    if (currentlySeletedEmployee!.isBankDetails == 0) {
      navigationAccordingStatus.add(const AddEmployeeBankDetails());
    }
    if (currentlySeletedEmployee?.isCareerDetails == 0) {
      navigationAccordingStatus.add(const AddEmployeeCareerDetails());
    }
    if (currentlySeletedEmployee?.isDocumentDetails == 0) {
      navigationAccordingStatus.add(AddEmployeeEducationQualificationDetails());
    }

    if (currentlySeletedEmployee?.isUserDetails == 0) {
      navigationAccordingStatus.add(const AddEmployeePersonalDetails());
    }

    Get.to(navigationAccordingStatus[navigationAccordingStatus.length - 1],
        id: hrNavigationKey);
  }

  navigateNextSubmitEmployeeScreen() {
    isLoading = false;
    update();
    navigationAccordingStatus.removeLast();
    Get.off(navigationAccordingStatus[navigationAccordingStatus.length - 1],
        id: hrNavigationKey);
  }

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

  // currentlySelectedWarehouse!["id"]  access warehopuse like this
  changeDashBoardWarehouse({required WarehousesAcess warehouse}) {
    currentlySelectedWarehouse = warehouse;

    update();
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
  addPersonalDetails(PersonalDetailsResponseUpdate yo) async {
    isLoading = true;
    update();
    await apiClient
        .postData(
            "hr/addBasicInformation",
            yo
                .copyWith(
                    updated_by: user.id, user_id: currentlySeletedEmployee!.id)
                .toJson())
        .then((value) {
      if (value.data["message"] == "Employee Information Added") {
        isLoading = false;

        Snacks.greenSnack("Personal Information Added");

        navigateNextSubmitEmployeeScreen();
      } else {
        isLoading = false;
        update();
      }
    });
  }

/////////// Get Personal Details/////////
  getPersonalDetails() {
    apiClient
        .postData("hr/getBasicInformationById",
            {"user_id": currentlySeletedEmployee!.id},
            passhandlecheck: true)
        .then((value) {
      if (value.data["message"] == "items found") {
        Snacks.greenSnack("Personal Details");
        List<dynamic> x = value.data["result"];
        getPersonalDetailsList =
            x.map((e) => PersonalDetailsResponseUpdate.fromJson(e)).toList();

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

      navigateNextSubmitEmployeeScreen();
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
  addEducationDetails(AddEducationDetail addEducationDetail) async {
    isLoading = true;
    update();

    try {
      final response = await apiClient.postData(
        "hr/addEducationInformation",
        addEducationDetail
            .copyWith(
                updated_by: user.id, user_id: currentlySeletedEmployee!.id)
            .toJson(),
      );

      final message = response.data["message"];

      if (message == "Information Added") {
        Snacks.greenSnack("Education Information Added Successfully");
        navigateNextSubmitEmployeeScreen();
      } else if (message == "information updated") {
        Snacks.greenSnack("Education Information Updated Successfully");
        navigateNextSubmitEmployeeScreen();
      }
    } catch (error) {
      Snacks.redSnack("Failed to add education information. Please try again.");
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
      navigateNextSubmitEmployeeScreen();
      return true;
    } else {
      isLoading = false;
      update();
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
        navigateNextSubmitEmployeeScreen();
      } else if (message == "information updated") {
        addBankDetailsRequestModel = const BankDetailsRequest();
        List x = response.data["result"];
        getBankDetailsList = x.map((e) => AddBankDetails.fromJson(e)).toList();
        Snacks.greenSnack("Bank Information Updated Successfully");
        navigateNextSubmitEmployeeScreen();
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

////////////////////////// Documnets //////////////////////////////////////
  ///
  ///
  ///

// String? adharCard_front ;
// String? adharCard_back ;
// String? pan_card ;
// String? degree_certificate ;
// String? cancelled_cheque ;
// String? experience_letter ;
// String? bank_receipt ;

  UploadDocument? userDocumnetsModel = const UploadDocument(label_name: [
    {"profile_image": null},
    {"adharCard_front": null},
    {"adharCard_back": null},
    {"pan_card": null},
    {"degree_certificate": null},
    {"cancelled_cheque": null},
    {"experience_letter": null},
    {"bank_receipt": null}
  ]);
  getEmployeeDocumnets() {
    isLoading = true;
    apiClient
        .postData(
            "hr/getUserDocsByUserId", {"user_id": currentlySeletedEmployee!.id},
            passhandlecheck: true)
        .then((v) {
      if (v.data["message"] == "UserDocs Detail Found with given UserId") {
        userDocumnetsModel = UploadDocument.fromJson(v.data["result"][0]);
      }
    }).whenComplete(() {
      isLoading = false;
      update();
    });
  }

  updateDocuments() {
    isLoading = true;
    apiClient
        .postData(
            "hr/addDocs",
            userDocumnetsModel!
                .copyWith(
                    updated_by: user.id, user_id: currentlySeletedEmployee!.id)
                .toJson())
        .then((v) {
      if (v.data["message"] == "UserDocs Detail Found") {
        navigateNextSubmitEmployeeScreen();
      }
    });

    isLoading = false;
    update();
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

  getAllDashboardCount() async {
    dashboardCountStatus = true;

    await apiClient.postData("hr/dashboard", {
      "shift_id": "",
      "start_date": "",
      "end_date": "",
      "warehouse_id": currentlySelectedWarehouse!.warehouse_id,
    }).then((value) {
      if (value.data["message"] ==
          "Employee attendance status fetched successfully") {
        dashboardCount = DashboardCount.fromJson(value.data["result"]);
        arrivalCount = (value.data["result"]["arrivals"] as List)
            .map((e) => ArrivalCount.fromJson(e))
            .toList();
        print(dashboardCount);
        dashboardCountStatus = false;
        update();
      }
    });
  }

  getAllAttendance() async {
    dashboardCountStatus = true;

    await apiClient.postData("hr/viewAttendanceList", {
      
        "name": "",
        "start_date": "",
        "end_date": "",
        "warehouse_id": currentlySelectedWarehouse!.warehouse_id
      
    }).then((value) {
      if (value.data["message"] == "All Attendance fetched Successfully") {
        List x = value.data["result"];
        allAttendanceList = x.map((e) => AttendanceEntry.fromJson(e)).toList();
        Logger().i(employees);
        dashboardCountStatus = false;
        update();
      }
    });
  }
}
