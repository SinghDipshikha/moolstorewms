import 'package:get/get.dart';
import 'package:moolwmsstore/View/auth/Model/Hr/addCareerDetail.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:moolwmsstore/View/Roles/Hr/repository/hrrepo.dart';

class HRController extends GetxController {
  final HrRepo hrRepo;
  final ApiClient apiClient;
  HRController({required this.hrRepo, required this.apiClient});

  List<AddCareerDetail> carrierDetails = [const AddCareerDetail()];
  var myHrID;

  void addCareerDetails() {
    hrRepo.addCareerDetails(
        userID: 2, ownerID: 2, carrierDetails: carrierDetails);
  }
}
