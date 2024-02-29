import 'package:get/get.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:moolwmsstore/Data/repository/warehouseRepo.dart';

class WarehouseController extends GetxController{
    final WarehouseRepo warehouseRepo;
  final ApiClient apiClient;
  WarehouseController({required this.warehouseRepo, required this.apiClient});
}