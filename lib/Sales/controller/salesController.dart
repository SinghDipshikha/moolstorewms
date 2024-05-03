import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Hr/HumanResource.dart';
import 'package:moolwmsstore/Sales/Model/PurchaseOrder.dart';
import 'package:moolwmsstore/Sales/Sales.dart';
import 'package:moolwmsstore/Sales/repo/salesRepo.dart';
import 'package:moolwmsstore/Security%20Guard/SecurityGuard.dart';

class SalesController extends GetxController {
  final SalesRepo salesRepo;
  final ApiClient apiClient;
  SalesController(
      {required this.salesRepo, required this.apiClient, required this.user});

  User user;
  List<PurchaseOrder> purchaseOrders = [];
  getPoList() {
    salesRepo.getAllPoList().then((value) {
      if (value != null) {
        purchaseOrders = value;
        update();
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
