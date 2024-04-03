import 'package:get/get.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:moolwmsstore/Data/repository/securityGuardRepo.dart';

class SecurityGuardController extends GetxController {
  final SecurityGuardRepo secGaurdRepo;
  final ApiClient apiClient;
  SecurityGuardController({required this.secGaurdRepo, required this.apiClient});

  
  void verifyEmployee() {
    secGaurdRepo.verifyEmployee(
        empId: 2);
  }
}