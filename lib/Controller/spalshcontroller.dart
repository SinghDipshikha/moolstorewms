import 'package:get/get.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:moolwmsstore/Data/repository/splashRepo.dart';

class SplashController extends GetxController {
  final SplashRepo splashRepo;
  final ApiClient apiClient;
  SplashController({required this.splashRepo, required this.apiClient});
  
}