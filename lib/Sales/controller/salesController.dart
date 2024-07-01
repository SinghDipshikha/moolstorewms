import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Hr/HumanResource.dart';
import 'package:moolwmsstore/Sales/Model/Customer/customerListElement.dart';
import 'package:moolwmsstore/Sales/Model/Indent/indentElement.dart';
import 'package:moolwmsstore/Sales/Model/Indent/indentInSubmit.dart';
import 'package:moolwmsstore/Sales/Model/Indent/viewIndentModel.dart';
import 'package:moolwmsstore/Sales/Model/Visitor/addVisitorModel.dart';
import 'package:moolwmsstore/Sales/Model/addCustomer.dart';
import 'package:moolwmsstore/Sales/Model/enterProduct.dart';
import 'package:moolwmsstore/Sales/Sales.dart';
import 'package:moolwmsstore/Sales/View/Visiitors/addVisitorSucces.dart';
import 'package:moolwmsstore/Sales/repo/salesRepo.dart';
import 'package:moolwmsstore/Security%20Guard/SecurityGuard.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/globals.dart';
import 'package:restart_app/restart_app.dart';

class SalesController extends GetxController {
  final SalesRepo salesRepo;
  final ApiClient apiClient;
  bool isOwner;
  @override
  void onInit() {
    submitIndent = IndentInModel(
      status: "IN",
      user_id: user.id as int,
      temperature_unit: "celcius",
    );
    // TODO: implement onInit
    super.onInit();
  }

  SalesController(
      {required this.salesRepo,
      required this.apiClient,
      required this.user,
      this.isOwner = false});

  User user;

  bool loading = false;

  DateTime? checkIndateTime;
  DateTime dashBoardSelectedDate = DateTime.now();

  List<IndentElement> indentElements = [];

  List<Map<String, int>> initialProductsqty = [];

  CustomerListElement? selectedCustomerForIndent;

  DateFormat formatter = DateFormat('yyyy-MM-dd');
  Map dashboardData = {
    "VisitorCount": {"InCount": 0, "OutCount": 0},
    "TicketCount": 0,
    "CompanyCount": 0,
  };
  AddVisitorModel addVisitorModel = const AddVisitorModel();
  addVistor() async {
    loading = true;
    update();
    addVisitorModel = addVisitorModel.copyWith(
        visitor_generate_by: user.id, in_out_status: "IN");
    await apiClient
        .postData("user/addVisitorBySales", addVisitorModel.toJson())
        .then((v) {
      if (v.data["message"] == "Visitor Checked IN successfully") {
        loading = false;
        Get.off(const AddVisitorSucces(), id: salesNavigationKey);
        addVisitorModel = const AddVisitorModel();
      }
    });
    loading = false;
    update();
  }

  salesDashBoardApi() async {
    loading = true;
    update();
    await apiClient
        .getData(
            "user/dashboard?date=${formatter.format(dashBoardSelectedDate)}")
        .then((value) {
      if (value.data["message"] == "Dashboard Details found") {
        dashboardData = value.data["result"];
        loading = false;
        update();
      }
    });
    update();
  }

  List<EnterProduct> ticketProducts = [const EnterProduct()];

  late IndentInModel submitIndent;
  bool creatingIndent = false;
  createIndent({required IndentInModel i}) async {
    creatingIndent = true;
    update();
    var value = await apiClient.postData("sales/createPoIndent", i.toJson());
    if (value.data["message"] ==
        "Successfully Created Purchase Order and Indent id is Assigned") {
      selectedCustomerForIndent = null;
      submitIndent = IndentInModel(
        status: "IN",
        user_id: user.id as int,
        temperature_unit: "celcius",
      );
      Get.back(id: salesNavigationKey);
      Snacks.greenSnack(value.data["message"]);
    } else {
      Snacks.redSnack(value.data["message"]);
      creatingIndent = false;
      update();
    }
    creatingIndent = false;
  }

  // bool creatingIndentCheck = false;
  // createIndentChecIn() {
  //   creatingIndentCheck = true;
  //   update();
  //   List<Map<String, int>> a = [];
  //   for (var e in initialProductsqty) {
  //     if (e["qty"] != 0) {
  //       a.add(e);
  //     }
  //   }
  //   checkInModel = checkInModel!.copyWith(products: a);

  //   apiClient
  //       .postData("user/createTicketCheckIn", checkInModel!.toJson())
  //       .then((v) {
  //     if (v.data["result"] == "Checkin Created for given Products") {
  //       checkIndateTime = null;
  //       checkInModel = null;
  //       creatingIndentCheck = false;
  //       Get.back(id: salesNavigationKey);
  //       // Get.off(TicketList(), id: salesNavigationKey);
  //       Snacks.greenSnack("Checkin Created for given Products");
  //     } else {
  //       Snacks.redSnack("Something went wrong");

  //       creatingIndentCheck = false;
  //       update();
  //     }
  //   });
  // }

  IndentViewModel? indent;
  viewindent({required String indentId}) async {
    loading = true;
    if (indentId == "") {
      return;
    }

    await apiClient.getData("sales/poIndentDetails/$indentId").then((value) {
      if (value.data["message"]
          .toString()
          .contains("Indent details found Successfully")) {
        indent = IndentViewModel.fromJson(value.data["result"]);
        Logger().i(indent);
        loading = false;
        update();
      } else {
        loading = false;
        Get.back(id: salesNavigationKey);
      }
    });
  }

  // Future<List<Company>?> searchComapny(String s) async {
  //   var value = await apiClient.postData("company/companylist", {"keyword": s});

  //   if (value.data == null) {
  //     return null;
  //   }
  //   if (value.data["message"] == "Data Retrieved Successfully!") {
  //     List x = value.data["result"];
  //     if (x.isEmpty) {
  //       return null;
  //     } else {
  //       return x.map((e) => Company.fromJson(e)).toList();
  //     }
  //   } else {
  //     return null;
  //   }
  // }

  // selectCompany({required String check, required selectedCompany}) {
  //   if (check == "Call From") {
  //     callFromCompany = selectedCompany;
  //   }
  //   // if (check == "Bill To") {
  //   //   billToCompany = selectedCompany;
  //   // }
  //   // if (check == "Shipped  From") {
  //   //   shippedFromCompany = selectedCompany;
  //   // }
  //   // if (check == "Shipped  To") {
  //   //   shippedToCompany = selectedCompany;
  //   // }
  //   update();
  // }

  addCustomer(AddCustomer customer) {
    apiClient.postData("user/addCustomer", customer.toJson()).then((value) {
      if (value.data["message"] == "Customer added successfully") {
        Get.back(id: salesNavigationKey);
        Snacks.greenSnack("Customer added successfully");
      }
    });
  }

  bool imageUploading = false;

  Future<String?> uploadImage(XFile file) async {
    imageUploading = true;
    update();
    String? x = await apiClient.uploadImage(file);
    imageUploading = false;
    update();
    return x;
  }

  updateProfilePic(String url) {
    apiClient
        .postData("avtar/addAvtar", {"user_id": user.id, "profile": url}).then(
            (v2) async {
      if (v2.data["result"] == "Avtar Information updated") {
        Snacks.greenSnack("Profile Pic updated successfully");
        var box = await Hive.openBox('authbox');
        user = user.copyWith(avatar: url);
        update();

        box.put("user", user);
      }
    });
  }

  switchRole(String role) {
    if (role == "security-guard") {
      Get.offAll(const SecurityGuard());
    }
    if (role == "hr") {
      Get.offAll(const HumanResouce());
    }
    if (role == "sales") {
      Get.offAll(const Sales());
    }
  }

  saleLogout() async {
    var box = await Hive.openBox('authbox');
    Get.find<SalesController>().dispose();

    box.clear();
    Restart.restartApp();
  }
}
