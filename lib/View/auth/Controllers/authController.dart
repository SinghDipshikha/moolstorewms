import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Data/Model/Auth/addWarehouseField.dart';
import 'package:moolwmsstore/Data/Model/Auth/signupfield.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:moolwmsstore/View/Auth/Model/dbConnect.dart';
import 'package:moolwmsstore/View/Auth/Repository/authRepo.dart';
import 'package:moolwmsstore/View/Auth/View/OtpScreen.dart';
import 'package:moolwmsstore/View/Auth/View/phoneSign.dart';
import 'package:moolwmsstore/View/Auth/View/signInUp.dart';
import 'package:moolwmsstore/View/Auth/View/signUp.dart';
import 'package:moolwmsstore/View/Auth/View/welcome.dart';
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
  late Box box;

  @override
  Future<void> onInit() async {
    Hive.registerAdapter(DbConnectAdapter());
    // TODO: implement onInit
    box = await Hive.openBox('authbox');
    super.onInit();
  }

  String phoneNum = "";
  List<SignupField> fields = [];
  List<AddWarehiuseField> addWarehouseFields = [];
  DbConnect? dbconnect;
  String? number;
  bool loading = false;
  splash() async {
    Future.delayed(const Duration(seconds: 2)).whenComplete(() {
      Get.to(const SignInUp(), id: authNavigationKey);
      //  Get.to(const SecurityGuardDashBoard(), id: securityGuardNavigation);
      // Get.to(const OwnerDashboard(), id: ownerNavigationKey);
    });
  }

  onSignInPressed() {
    Get.offAll(const Welcome(), id: authNavigationKey);
  }

  checkOrganisationCode({required String organiosationCode}) {
    apiClient.postData('verifyOrgByCode', {"org_code": organiosationCode}).then(
        (value) {
      if (value.data["message"] == "Organisation Details Present") {
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
            .then((value1) {
          if (value1.data is List) {
            dbconnect = DbConnect(
                host: value.data["data"]["database_host"],
                user: value.data["data"]["database_username"],
                password: value.data["data"]["database_password"],
                database: value.data["data"]["database_name"],
                organiosationCode: organiosationCode);

            box.put("dbkey", dbconnect);

            Get.snackbar("Organisation Details Present", "Hooraaayyyyy!!!!!");
            Get.to(
                PhoneSign(
                  signUp: false,
                ),
                id: authNavigationKey);
          }
        });
      } else {
        Snacks.redSnack("Something went wrong");
      }
    });
  }

  verifySignupOtp(int otp) {
    apiClient.postData(
        "otp/verifySignupOtp", {"mobile": number, "otp": otp}).then((value) {
      Logger().i(value.data);

      if (value.data["message"] == "Your Number is now verified") {
        Get.to(SignUp(), id: authNavigationKey);
        Snacks.greenSnack("Your Number is now verified");
      }
      if (value.data["message"] == "Invalid OTP") {
        Snacks.redSnack("Invalid OTP");
      }
    });
  }

  sendSignUpOtp(String num) {
    number = num;

    apiClient.postData("user/signupOtp", {
      "mobile": num,
    }).then((value) {
      if (value.data["message"] ==
          "One Time Password has been sent successfully.") {
        Snacks.greenSnack("One Time Password has been sent successfully.");
        Get.to(
            OtpScreen(
              signUp: true,
            ),
            id: authNavigationKey);
      }
      // Logger().i(value.data);
    });
  }

  sigupOrg(
      {required String pan,
      required String email,
      required String company_name,
      required String name}) {
    loading = true;
    update();
    apiClient.postData("admin/addMasterOrganisation", {
      "pan_card": pan,
      "email": email,
      "phone_number": number,
      "company_address": "",
      "company_name": company_name,
      "name": name
    }).then((value) async {
      if (value.data["message"] == "Information Added") {
        value.data["result"][0]["id"];

        apiClient.postData("notification/sendNotification", {
          "client_id": value.data["result"][0]["id"],
          "type": "NewOrg",
          "description":
              "${value.data["result"][0]["company_name"]} added by ${value.data["result"][0]["name"]}"
        });

        Snacks.greenSnack("Organization Added Successfully");
        loading = false;
        Get.offAll(
          const Welcome(),
        );
      } else if (value.data["message"] == "Failed to add") {
        loading = false;
        update();
        Snacks.redSnack("Failed to add");
      }
    });
    /* 
    {
    "pan_card":"ASQPJ1216L",
    "email":"jainakshay058@gmail.com",
    "phone_number":8178393493,
    "company_address" : "",
    "company_name":"Indicold Pvt Ltd",
    "name": "akshay jain"
}
    
    */
  }

  sendSignInOtp(String num) {
    number = num;

    apiClient.postData("user/loginOtp", {
      "mobile": num,
    }).then((value) {
      if (value.data["message"] ==
          "One Time Password has been sent successfully.") {
        Snacks.greenSnack("One Time Password has been sent successfully.");
        Get.to(
            OtpScreen(
              signUp: false,
            ),
            id: authNavigationKey);
      }
      // Logger().i(value.data);
    });
  }

  verifySignInOtp(int otp) {
    apiClient.postData(
        "otp/verifySignInOtp", {"mobile": number, "otp": otp}).then((value) {
      Logger().i(value.data);

      if (value.data["message"] == "Your Number is now verified") {
        //   Get.to(SignUp(), id: authNavigationKey);
        Snacks.greenSnack("Your Number is now verified");
      }
      if (value.data["message"] == "Invalid OTP") {
        Snacks.redSnack("Invalid OTP");
      }
    });
  }
  // sendOtp(String? number) async {
  //   // phoneNum = number ?? phoneNum;
  //   // authRepo.sendotp(phoneNum).then((value) {
  //   //   if (value.data["result"] == "Otp Sent") {
  //   //     // getIt<AppRouter>().replace(
  //   //     //   const OtpScreenRoute(),
  //   //     // );
  //   //   } else {
  //   //     Snacks.redSnack(value.data["message"]);
  //   //   }
  //   // });
  // }

  // resendOtp() {
  //   authRepo.sendotp(phoneNum).then((value) {
  //     if (value.data["result"] == "Otp Sent") {
  //       // getIt<AppRouter>().replace(
  //       //   const OtpScreenRoute(),
  //       // );
  //     } else {
  //       Snacks.redSnack(value.data["message"]);
  //     }
  //   });
  // }

  // verifyOtp(String otp) {
  //   authRepo.verifyotp(number: phoneNum, otp: otp).then((value) {
  //     if (value.data["message"] == "Sign up first") {
  //       // getIt<AppRouter>().replace(
  //       //   const SignupRoute(),
  //       // );
  //     } else {}
  //   });
  // }

  // signup(res) {
  //   //  getIt<AppRouter>().replace(
  //   //         const WelcomeRoute(),
  //   //       );
  //   authRepo.signUp(res: res).then((value) {
  //     if (value.data["message"] == "User Signup Successful") {
  //       // getIt<AppRouter>().replace(
  //       //   const WelcomeRoute(),
  //       // );
  //     }
  //   });
  // }

  // getSignupFields() async {
  //   await authRepo.getSignupParams().then((value) {
  //     if (value != null) {
  //       fields = value;

  //       update();
  //     }
  //   });
  // }

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
