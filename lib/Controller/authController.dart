import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Data/Model/Auth/signupfield.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:moolwmsstore/Data/repository/authRepo.dart';

class AuthController extends GetxController {
  final AuthRepo authRepo;
  final ApiClient apiClient;
  AuthController({required this.authRepo, required this.apiClient});

  Future signup() async {
    authRepo.signup({});
  }

  List<SignupField> signupFields = [];
  getSignupFields() async {
    authRepo.getSignupParams().then((value) {
      if (value.body["status"] == true) {
        List x = value.body["result"];
        Logger().i(x);
        signupFields = x.map((e) => SignupField.fromJson(e)).toList();
        update();
      }
    });
  }
}
