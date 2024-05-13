import 'package:get/get.dart';
import 'package:hive/hive.dart';
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
import 'package:restart_app/restart_app.dart';

class SalesController extends GetxController {
  final SalesRepo salesRepo;
  final ApiClient apiClient;
  bool isOwner ;
  SalesController(
      {required this.salesRepo, required this.apiClient, required this.user ,this.isOwner = false});

  User user;

  bool loading = false;

  Company? callFromCompany;
  Company? billToCompany;
  Company? shippedFromCompany;
  Company? shippedToCompany;
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
    apiClient.postData("company/companylist", {"keyword": ""}).then((value) {
      if (value.data["message"] == "Data Retrieved Successfully!") {
        List x = value.data["result"];
        comapnies = x.map((e) => Company.fromJson(e)).toList();
        loading = false;
        update();
      }
    });
  }

  Future<List<Company>?> searchComapny(String s) async {
    var value = await apiClient.postData("company/companylist", {"keyword": s});

    if (value.data == null) {
      return null;
    }
    if (value.data["message"] == "Data Retrieved Successfully!") {
      List x = value.data["result"];
      if (x.isEmpty) {
        return null;
      } else {
        return x.map((e) => Company.fromJson(e)).toList();
      }
    } else {
      return null;
    }
  }

  selectCompany({required String check, required selectedCompany}) {
    if (check == "Call From") {
      callFromCompany = selectedCompany;
    }
    if (check == "Bill To") {
      billToCompany = selectedCompany;
    }
    if (check == "Shipped  From") {
      shippedFromCompany = selectedCompany;
    }
    if (check == "Shipped  To") {
      shippedToCompany = selectedCompany;
    }
    update();
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

  Future<bool> addCompanyByDialog(Company company) async {
    var value =
        await apiClient.postData("company/addCompany", company.toJson());
    if (value.data["message"] ==
        "Seller company and details added successfully") {
      return true;
    } else {
      return false;
    }
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

  saleLogout() async {
    var box = await Hive.openBox('authbox');
    Get.find<SalesController>().dispose();

    box.clear();
    Restart.restartApp();
  }
}
