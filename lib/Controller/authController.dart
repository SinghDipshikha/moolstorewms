import 'package:get/get.dart';
import 'package:moolwmsstore/Data/Model/Auth/addWarehouseField.dart';
import 'package:moolwmsstore/Data/Model/Auth/signupfield.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:moolwmsstore/Data/repository/authRepo.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/routes/approutes.dart';

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
    Future.delayed(const Duration(seconds: 3)).whenComplete(() {
    //  getIt<AppRouter>().replace(const ChooselanguageRoute());
      // getIt<AppRouter>().replace(
      //   const SignupRoute(),
      // );
    });
  }

  sendOtp(String? number) async {
    phoneNum = number ?? phoneNum;
    authRepo.sendotp(phoneNum).then((value) {
      if (value.data["result"] == "Otp Sent") {
        // getIt<AppRouter>().replace(
        //   const OtpScreenRoute(),
       // );
      } else {
        AppDecorations.redSnack(value.data["message"]);
      }
    });
  }

  resendOtp() {
    authRepo.sendotp(phoneNum).then((value) {
      if (value.data["result"] == "Otp Sent") {
        // getIt<AppRouter>().replace(
        //   const OtpScreenRoute(),
        // );
      } else {
        AppDecorations.redSnack(value.data["message"]);
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
  // Future signup() async {
  //   authRepo.signup({});
  // }

  // List<SignupField> signupFields = [];
  // getSignupFields() async {
  //   authRepo.getSignupParams().then((value) {
  //     if (value.body["status"] == true) {
  //       List x = value.body["result"];
  //       Logger().i(x);
  //       signupFields = x.map((e) => SignupField.fromJson(e)).toList();
  //       update();
  //     }
  //   });
  // }
}
