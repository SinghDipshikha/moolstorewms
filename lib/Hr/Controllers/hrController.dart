import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';

import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Hr/Model/addCareerDetail.dart';
import 'package:moolwmsstore/Hr/repository/hrrepo.dart';

class HRController extends GetxController {
  final HrRepo hrRepo;
  final ApiClient apiClient;
  HRController({required this.hrRepo, required this.apiClient,required this.user});
   User user;
  List<AddCareerDetail> carrierDetails = [const AddCareerDetail()];
  var myHrID;

  void addCareerDetails() {
    hrRepo.addCareerDetails(
        userID: 2, ownerID: 2, carrierDetails: carrierDetails);
  }
}
