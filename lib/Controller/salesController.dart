import 'package:get/get.dart';
import 'package:moolwmsstore/Data/Model/Sales/PurchaseOrder.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:moolwmsstore/Data/repository/salesRepo.dart';

class SalesController extends GetxController {
  final SalesRepo salesRepo;
  final ApiClient apiClient;
  SalesController({required this.salesRepo, required this.apiClient});


List<PurchaseOrder> purchaseOrders = [] ;
  getPoList(){
salesRepo.getAllPoList().then((value) {
      if (value != null) {
        purchaseOrders = value;
        update();
      }
    });
  }
}
