import 'package:get/get.dart';

import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/Model/SecurityGuard/employeeEntry.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/Model/SecurityGuard/secGuardDetail.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/repository/securityGuardRepo.dart';

class SecurityGuardController extends GetxController {
  final SecurityGuardRepo secGaurdRepo;
  final ApiClient apiClient;
  SecGuardDetail? secGuardDetail;
  List<EmployeeEntry> empEntryList = [];
  bool? isCheckIn;

  SecurityGuardController(
      {required this.secGaurdRepo, required this.apiClient});

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
}
