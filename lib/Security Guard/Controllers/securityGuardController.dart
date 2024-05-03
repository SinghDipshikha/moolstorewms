import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/addVisitor.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/allPersonsInfo.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/allVisitorsInfo.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/employeeEntry.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/secGuardDetail.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/singlePersonDetail.dart';
import 'package:moolwmsstore/Security%20Guard/repository/securityGuardRepo.dart';

class SecurityGuardController extends GetxController {
  final SecurityGuardRepo secGaurdRepo;
  final ApiClient apiClient;
  SecGuardDetail? secGuardDetail;
  AddVisitorBySecurityGaurd? addVisitorDetails;
  GetAllVisitorBySecurityGaurd? allVisitorsDetails;
  GetAllPersonsBySecurityGaurd? allPersonsDetails;
  GetSinglePersonDetails? singelPersonDetails;
  List<EmployeeEntry> empEntryList = [];
  bool? isCheckIn;
  User user;

  SecurityGuardController(
      {required this.secGaurdRepo, required this.apiClient,required this.user});

  void verifyEmployee() {
    secGaurdRepo
        .verifyEmployee(empId: 2, daterTime: DateTime.now(), gateId: 1)
        .then((value) {
      if (value != null) {
        secGuardDetail = value;
        update();
      }
    });
  }

  void getEmployeesList() {
    secGaurdRepo.getEmployeesList().then((value) {
      if (value != null) {
        empEntryList = value;
        update();
      }
    });
  }

  void checkInOut() {
    secGaurdRepo
        .checkInOut(
            userId: 2,
            dateTime: DateTime.now(),
            status: "IN",
            gateId: 2,
            allowBy: 1)
        .then((value) {
      if (value) {
        isCheckIn = true;
        update();
      } else {
        isCheckIn = false;
        update();
      }
    });
  }

  void addVisitor() {
    secGaurdRepo
        .addVisitor(
            visitorId: 1,
            ticketGeneratedBy: "2",
            visitorName: "Abhishek",
            visitorPhoneNumber: "9811966532",
            visitorIdProof:
                "https://indicold-wms-app.s3.ap-south-1.amazonaws.com/images_upload/1713696189270aadhaar-card-7579588_1280.png",
            purposeOfVisit: "Inquiry",
            inOutStatus: "IN")
        .then((value) {
      if (value != null) {
        addVisitorDetails = value;
        update();
      }
    });
  }

  void getAllVisitorsInfo() {
    secGaurdRepo.getAllVisitorsData(recordsPerPage: 8, next: 1).then((value) {
      if (value != null) {
        allVisitorsDetails = value;
        update();
      }
    });
  }

  void getAllPersonssInfo() {
    secGaurdRepo.getAllPersonsData(recordsPerPage: 8, next: 1).then((value) {
      if (value != null) {
        allPersonsDetails = value;
        update();
      }
    });
  }

  void getSinglePersonDetails() {
    secGaurdRepo.getSinglePersonDetails(personId: "#PTC002").then((value) {
      if (value != null) {
        singelPersonDetails = value;
        update();
      }
    });
  }

  void getVisitorDetailsByVisitorId() {
    secGaurdRepo
        .getVisitorDetailsByVisitorId(visitorId: "#VS002")
        .then((value) {
      if (value != null) {
        singelPersonDetails = value;
        update();
      }
    });
  }
}
