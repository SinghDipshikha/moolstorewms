import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/Model/Sales/PurchaseOrder.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Common%20Data/repository/salesRepo.dart';

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
}
