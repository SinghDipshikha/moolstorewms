import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Data/Model/Auth/addWarehouseField.dart';
import 'package:moolwmsstore/Data/Model/Auth/signupfield.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:moolwmsstore/Data/repository/authRepo.dart';
import 'package:moolwmsstore/View/Auth/View/signInUp.dart';
import 'package:moolwmsstore/View/Roles/Owner/OwnerDashboard.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/dashboard.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/globals.dart';

// enum OTP {
//   init,
//   sent,
//   resend,
//   sendingFailed,
//   verifcationFailed,
//   verifcationSuccess
// }

class AuthController extends GetxController {
  final AuthRepo authRepo;
  final ApiClient apiClient;
  AuthController({required this.authRepo, required this.apiClient});

  // var otpstate = OTP.init;
  String phoneNum = "";
  List<SignupField> fields = [];
  List<AddWarehiuseField> addWarehouseFields = [];

  splash() {
    Future.delayed(const Duration(seconds: 2)).whenComplete(() {
     // Get.to(const SignInUp(), id: authNavigationKey);
      Get.to(const SecurityGuardDashBoard(), id: securityGuardNavigation);
      Get.to(const OwnerDashboard(), id: ownerNavigationKey);
    });
  }

  onSignInPressed() {}
  checkOrganisationCode({required String organiosationCode}) {
    apiClient.postData('verifyOrgByCode', {"org_code": organiosationCode}).then(
        (value) {
      if (value.data["message"] == "Organisation Details Present") {
        //    Snacks.greenSnack("Organisation Details Present");
//Get.snackbar("Organisation Details Present", "Hooraaayyyyy!!!!!");
        apiClient
            .postData(
                'dynamicDbConnect',
                {
                  "config": {
                    "host": value.data["data"]["database_host"],
                    "user": value.data["data"]["database_username"],
                    "password": value.data["data"]["database_password"],
                    "database": value.data["data"]["database_name"],
                  },
                  "query": "SELECT * FROM users"
                },
                passhandlecheck: true)
            .then((value) {
          Logger().i(value.data);
        });
      } else {
        Snacks.redSnack("Something went wrong");
      }
    });
  }

  signUpNumberverification(String number) {}

  sendOtp(String? number) async {
    // getIt<AppRouter>().replaceAll([const OwnerBody()]);

    // phoneNum = number ?? phoneNum;
    // authRepo.sendotp(phoneNum).then((value) {
    //   if (value.data["result"] == "Otp Sent") {
    //     // getIt<AppRouter>().replace(
    //     //   const OtpScreenRoute(),
    //     // );
    //   } else {
    //     Snacks.redSnack(value.data["message"]);
    //   }
    // });
  }

  resendOtp() {
    authRepo.sendotp(phoneNum).then((value) {
      if (value.data["result"] == "Otp Sent") {
        // getIt<AppRouter>().replace(
        //   const OtpScreenRoute(),
        // );
      } else {
        Snacks.redSnack(value.data["message"]);
      }
    });
  }

  verifyOtp(String otp) {
    authRepo.verifyotp(number: phoneNum, otp: otp).then((value) {
      if (value.data["message"] == "Sign up first") {
        // getIt<AppRouter>().replace(
        //   const SignupRoute(),
        // );
      } else {}
    });
  }

  signup(res) {
    //  getIt<AppRouter>().replace(
    //         const WelcomeRoute(),
    //       );
    authRepo.signUp(res: res).then((value) {
      if (value.data["message"] == "User Signup Successful") {
        // getIt<AppRouter>().replace(
        //   const WelcomeRoute(),
        // );
      }
    });
  }

  getSignupFields() async {
    await authRepo.getSignupParams().then((value) {
      if (value != null) {
        fields = value;

        update();
      }
    });
  }

  getAddWarehouseFields() async {
    await authRepo.getAddWarehouseFields().then((value) {
      if (value != null) {
        addWarehouseFields = value;

        update();
      }
    });
  }
  // register() async {
  //   await authRepo.register().then((value) {
  //     if (value != null) {
  //       addWarehouseFields = value;

  //       update();
  //     }
  //   });
  // }
}
