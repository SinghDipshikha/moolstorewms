import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Auth/Repository/authRepo.dart';
import 'package:moolwmsstore/Auth/View/Blocked.dart';
import 'package:moolwmsstore/Auth/View/OtpScreen.dart';
import 'package:moolwmsstore/Auth/View/organisationCode.dart';
import 'package:moolwmsstore/Auth/View/phoneSign.dart';
import 'package:moolwmsstore/Auth/View/signInUp.dart';
import 'package:moolwmsstore/Auth/View/signUp.dart';
import 'package:moolwmsstore/Auth/View/welcome.dart';
import 'package:moolwmsstore/Common%20Data/Model/Auth/signupfield.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Customer/Controller/customerController.dart';
import 'package:moolwmsstore/Customer/Customer.dart';
import 'package:moolwmsstore/Customer/Repository/customerRepo.dart';
import 'package:moolwmsstore/Dock%20Supervisor/DMS.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsController.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsRepo.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/HumanResource.dart';
import 'package:moolwmsstore/Hr/repository/hrrepo.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/Controller/ownerRepo.dart';
import 'package:moolwmsstore/Owner/Owner.dart';
import 'package:moolwmsstore/Sales/Sales.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/Sales/repo/salesRepo.dart';
import 'package:moolwmsstore/Security%20Guard/Controllers/securityGuardController.dart';
import 'package:moolwmsstore/Security%20Guard/Controllers/securityGuardRepo.dart';
import 'package:moolwmsstore/Security%20Guard/SecurityGuard.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/common/controller/chamberController.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:moolwmsstore/utils/globals.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  final AuthRepo authRepo;
  final SharedPreferences sharedPreferences;
  AuthController({required this.authRepo, required this.sharedPreferences});

  late Box box;
  User? user;

  @override
  Future<void> onInit() async {
    organiosationCode = sharedPreferences.getString(AppConstants.orgCode);

    box = await Hive.openBox('authbox');
    super.onInit();
  }

  String phoneNum = "";

  String selectedPersonType = "EMP";
  // "EMP" "CUS"
  List<SignupField> fields = [];

  String? organiosationCode;
  String? number;
  bool loading = false;

  afterSpalsh() async {
    await Get.find<ApiClient>()
        .getData("user/userInfo/${user!.id}")
        .whenComplete(() {})
        .then((v) {
      if (v.data["status"] == false) {
        box.clear();
        sharedPreferences.clear();
        Get.to(const SignInUp(), id: authNavigationKey);
        Snacks.redSnack("Something is wrong, Please Login Again");
      } else {
        if (v.data["result"]["user"]["status"] == 0) {
          Get.offAll(const Blocked());
          return;
        }

        if (user?.role_id == 1) {
          user = user!.copyWith(
              warehouse: v.data["result"]["warehouse"] == null
                  ? null
                  : (v.data["result"]["warehouse"] as List)
                      .map((e) => WarehousesAcess.fromJson(e))
                      .toList(),
              avatar: v.data["result"]["user"]["avatar"]);

          Get.lazyPut(() => OwnerRepo(
              sharedPreferences: Get.find(), apiClient: Get.find<ApiClient>()));
          Get.put(
              OwnerController(
                  user: user as User,
                  ownerRepo: Get.find<OwnerRepo>(),
                  apiClient: Get.find<ApiClient>()),
              permanent: true);
          Get.put(ChamberController(), permanent: true);
          Future.delayed(const Duration(seconds: 2)).whenComplete(() {
            Get.delete<AuthController>();
            Get.offAll(const Owner());
          });
        }

        if (user?.role_id == 2) {
          user = user!.copyWith(
              warehouse: v.data["result"]["warehouse"] == null
                  ? null
                  : (v.data["result"]["warehouse"] as List)
                      .map((e) => WarehousesAcess.fromJson(e))
                      .toList(),
              person_type: v.data["result"]["person_type"],
              avatar: v.data["result"]["user"]["avatar"]);

          for (var element in user!.person_type!) {
            if (element["person_type"] == "security-guard") {
              Get.lazyPut(() => SecurityGuardRepo(
                  sharedPreferences: Get.find(), apiClient: Get.find()));
              Get.put(
                  SecurityGuardController(
                    user: user as User,
                    secGaurdRepo: Get.find<SecurityGuardRepo>(),
                    apiClient: Get.find<ApiClient>(),
                  ),
                  permanent: true);
            }
            if (element["person_type"] == "sales") {
              Get.lazyPut(() => SalesRepo(
                  sharedPreferences: Get.find(), apiClient: Get.find()));
              Get.put(
                  SalesController(
                      user: user as User,
                      salesRepo: Get.find<SalesRepo>(),
                      apiClient: Get.find<ApiClient>()),
                  permanent: true);
            }
            if (element["person_type"] == "hr") {
              Get.lazyPut(() =>
                  HrRepo(sharedPreferences: Get.find(), apiClient: Get.find()));
              Get.put(
                  HRController(
                      user: user as User,
                      hrRepo: Get.find<HrRepo>(),
                      apiClient: Get.find<ApiClient>()),
                  permanent: true);
            }
            if (element["person_type"] == "dock-supervisor") {
              Get.lazyPut(() => Dmsrepo(
                  sharedPreferences: Get.find(), apiClient: Get.find()));
              Get.put(
                  DmsController(
                      user: user as User,
                      dmsRepo: Get.find<Dmsrepo>(),
                      apiClient: Get.find<ApiClient>()),
                  permanent: true);
            }
            if (element["person_type"] == "customer") {
              Get.lazyPut(() => CustomerRepo(
                  sharedPreferences: Get.find(), apiClient: Get.find()));
              Get.put(
                  CustomerController(
                      user: user as User,
                      apiClient: Get.find<ApiClient>(),
                      customerRepo: Get.find<CustomerRepo>()),
                  permanent: true);
            }
          }
          if (user!.person_type?[0] != null) {
            if (user!.person_type?[0]["person_type"] == "security-guard") {
              Get.delete<AuthController>();
              Get.offAll(const SecurityGuard());
            }
            if (user!.person_type?[0]["person_type"] == "sales") {
              Get.delete<AuthController>();
              Get.offAll(const Sales());
            }
            if (user!.person_type?[0]["person_type"] == "hr") {
              Get.delete<AuthController>();
              Get.offAll(const HumanResouce());
            }
            if (user!.person_type?[0]["person_type"] == "dock-supervisor") {
              Get.delete<AuthController>();
              Get.offAll(const DMS());
            }
            if (user!.person_type?[0]["person_type"] == "customer") {
              Get.delete<AuthController>();
              Get.offAll(const Customer());
            }
          }
        }
      }
    });
  }

  splash() async {
    user = box.get("user");

    if (user != null && organiosationCode != null) {
      sharedPreferences.setString(AppConstants.orgCode, organiosationCode!);
      Get.find<ApiClient>().updateHeader();
      afterSpalsh();
    } else {
      Future.delayed(const Duration(seconds: 2)).whenComplete(() {
        Get.to(const SignInUp(), id: authNavigationKey);
      });
    }
  }

  onSignInPressed() {
    Get.to(OrganisationCode(), id: authNavigationKey);
  }

  checkOrganisationCode({required String organiosationCodee}) async {
    loading = true;
    update();
    Get.find<ApiClient>().postData(
        'verifyOrgByCode', {"org_code": organiosationCodee}).then((value) {
      if (value.data["message"] == "Organisation Details Present") {
        Get.find<ApiClient>()
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
            organiosationCode = organiosationCodee;

            sharedPreferences.setString(
                AppConstants.orgCode, organiosationCodee);
            Get.find<ApiClient>().updateHeader();

            loading = false;

            Get.to(
                PhoneSign(
                  signUp: false,
                ),
                id: authNavigationKey);
          } else {
            loading = false;
            update();
          }
        });
      } else {
        Snacks.redSnack("Something went wrong");
        loading = false;
        update();
      }
    });
  }

  verifySignupOtp(int otp) {
    loading = true;
    update();
    Get.find<ApiClient>().postData(
        "otp/verifySignupOtp", {"mobile": number, "otp": otp}).then((value) {
      if (value.data["message"] == "Your Number is now verified") {
        loading = false;
        Snacks.greenSnack("Your Number is now verified");
        Get.to(SignUp(), id: authNavigationKey);
      } else {
        loading = false;
        update();
        Snacks.redSnack(value.data["message"]);
      }
    });
  }

  sendSignUpOtp(String num) {
    loading = true;
    update();
    number = num;

    Get.find<ApiClient>().postData("user/signupOtp", {
      "mobile": num,
    }).then((value) {
      if (value.data["message"] ==
          "One Time Password has been sent successfully.") {
        Snacks.greenSnack("One Time Password has been sent successfully.");
        loading = false;
        update();
        Get.to(
            OtpScreen(
              signUp: true,
            ),
            id: authNavigationKey);
      } else {
        loading = false;
        update();
      }
      // Logger().i(value.data);
    });
  }

  sigupOrg(
      {required String pan,
      required String email,
      required String company_name,
      required String company_address,
      required String name}) {
    loading = true;
    update();
    Get.find<ApiClient>().postData("admin/addMasterOrganisation", {
      "pan_card": pan,
      "email": email,
      "phone_number": number,
      "company_address": company_address,
      "company_name": company_name,
      "name": name
    }).then((value) async {
      if (value.data["message"] == "Information Added") {
        value.data["result"][0]["id"];

        Get.find<ApiClient>().postData("notification/sendNotification", {
          "client_id": value.data["result"][0]["id"],
          "type": "NewOrg",
          "description":
              "${value.data["result"][0]["company_name"]} added by ${value.data["result"][0]["name"]} on ${AppConstants.dateformatter.format(DateTime.now())}"
        });

        Snacks.greenSnack("Organization Added Successfully");
        loading = false;
        Get.offAll(
          const Welcome(),
        );
      } else {
        loading = false;
        update();
      }
    });
  }

  sendSignInOtp(String num) {
    number = num;
    loading = true;
    update();
    Get.find<ApiClient>().postData("user/loginOtp", {
      "mobile": num,
    }).then((value) {
      if (value.data["message"] ==
          "One Time Password has been sent successfully.") {
        Snacks.greenSnack("One Time Password has been sent successfully.");
        loading = false;
        Get.to(
            OtpScreen(
              signUp: false,
            ),
            id: authNavigationKey);
      } else {
        loading = false;
        update();
      }

    });
  }

  verifySignInOtp(int otp) {
    loading = true;
    update();
    Get.find<ApiClient>().postData(
        "otp/verifySignInOtp", {"mobile": number, "otp": otp}).then((value) {
      if (value.data["result"]["role_id"] != null) {
        user = User.fromJson(value.data["result"]);
        box.put("user", user);
        loading = false;
        afterSpalsh();
      } else {
        loading = false;
        update();
        Snacks.redSnack(value.data["message"]);
      }
    });
  }
}
