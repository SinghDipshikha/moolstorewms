import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Hr/HumanResource.dart';
import 'package:moolwmsstore/Sales/Model/company.dart';
import 'package:moolwmsstore/Sales/Sales.dart';
import 'package:moolwmsstore/Sales/View/companyAdded.dart';
import 'package:moolwmsstore/Sales/repo/salesRepo.dart';
import 'package:moolwmsstore/Security%20Guard/SecurityGuard.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/globals.dart';

class SalesController extends GetxController {
  final SalesRepo salesRepo;
  final ApiClient apiClient;
  SalesController(
      {required this.salesRepo, required this.apiClient, required this.user});

  User user;

  bool loading = false;
  // List<PurchaseOrder> purchaseOrders = [];
  // getPoList() {
  //   salesRepo.getAllPoList().then((value) {
  //     if (value != null) {
  //       purchaseOrders = value;
  //       update();
  //     }
  //   });
  // }
  List<Company> comapnies = [];
  getCompanyList() {
    loading = true;
    apiClient.getData("company/companylist").then((value) {
      if (value.data["message"] == "Data Retrieved Successfully!") {
        List x = value.data["result"];
        comapnies = x.map((e) => Company.fromJson(e)).toList();
        loading = false;
        update();
      }
    });
  }

  addCompany(Company company) {
    apiClient.postData("company/addCompany", company.toJson()).then((value) {
      if (value.data["message"] ==
          "Seller company and details added successfully") {
        Snacks.greenSnack("Company added successfully");
        Get.off(const CompanyAdded(), id: salesNavigationKey);
      }
    });
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
}
