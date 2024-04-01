import 'package:get/get.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:moolwmsstore/Data/repository/hrrepo.dart';

class HRController extends GetxController{
  final HrRepo hrRepo;
  final ApiClient apiClient;
  HRController({required this.hrRepo, required this.apiClient});


}