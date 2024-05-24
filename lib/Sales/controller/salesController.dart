import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Hr/HumanResource.dart';
import 'package:moolwmsstore/Sales/Model/Indent/checkInSubmit.dart';
import 'package:moolwmsstore/Sales/Model/Indent/indentElement.dart';
import 'package:moolwmsstore/Sales/Model/Indent/initialProduct.dart';
import 'package:moolwmsstore/Sales/Model/Indent/viewIndentModel.dart';
import 'package:moolwmsstore/Sales/Model/Visitor/addVisitorModel.dart';
import 'package:moolwmsstore/Sales/Model/company.dart';
import 'package:moolwmsstore/Sales/Model/enterProduct.dart';
import 'package:moolwmsstore/Sales/Sales.dart';
import 'package:moolwmsstore/Sales/View/Visiitors/addVisitorSucces.dart';
import 'package:moolwmsstore/Sales/View/companyAdded.dart';
import 'package:moolwmsstore/Sales/repo/salesRepo.dart';
import 'package:moolwmsstore/Security%20Guard/SecurityGuard.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/globals.dart';
import 'package:restart_app/restart_app.dart';

class SalesController extends GetxController {
  final SalesRepo salesRepo;
  final ApiClient apiClient;
  bool isOwner;
  SalesController(
      {required this.salesRepo,
      required this.apiClient,
      required this.user,
      this.isOwner = false});

  User user;

  bool loading = false;

  Company? callFromCompany;
  Company? billToCompany;
  Company? shippedFromCompany;
  Company? shippedToCompany;

  DateTime? checkIndateTime;
  DateTime dashBoardSelectedDate = DateTime.now();

  List<IndentElement> indentElements = [];
  List<InitialProduct> initialProducts = [];
  CheckInModel? checkInModel;
  List<Map<String, int>> initialProductsqty = [];

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

  getInitialProductsofIndent({required String indentId}) async {
    loading = true;

    if (indentId == "") {
      return;
    }
    await apiClient
        .getData("user/getProductDetailsOfTicket/$indentId")
        .then((value) {
      if (value.data["message"] ==
          "Product details fetched successfully for given ticket id") {
        initialProductsqty.clear();
        initialProducts = (value.data["result"] as List)
            .map((e) => InitialProduct.fromJson(e))
            .toList();

        for (var e in initialProducts) {
          initialProductsqty.add({"product_id": e.product_id as int, "qty": 0});
        }

        checkInModel = const CheckInModel().copyWith(
            warehouse_id: initialProducts[0].warehouse_id,
            vehicle_details: const VehicleDetails(),
            products: initialProductsqty);
      }
    });
    loading = false;
    update();
  }

  getAllIndents() {
    loading = true;
    apiClient.postData("user/getAllPoList", {"keyword": ""}).then((value) {
      if (value.data["message"] == "Data Retrieved Successfully!") {
        indentElements = (value.data["result"] as List)
            .map((e) => IndentElement.fromJson(e))
            .toList();
        loading = false;
        update();
      }
    });
  }

  List<EnterProduct> ticketProducts = [const EnterProduct()];
  List<Company> comapnies = [];
  getCompanyList() {
    loading = true;
    apiClient.postData("company/companylist", {"keyword": ""}).then((value) {
      if (value.data["message"] == "Data Retrieved Successfully!") {
        comapnies = (value.data["result"] as List)
            .map((e) => Company.fromJson(e))
            .toList();
        loading = false;
        update();
      }
    });
  }

  Future<bool> createIndent(
      {required String poId, required int warehouseid}) async {
    var value = await apiClient.postData("user/createPurchaseOrder", {
      "user_id": 1,
      "company_details": [
        {"call_from": callFromCompany!.sellerCompanyDetailsID},
        {"shipped_from": shippedFromCompany!.sellerCompanyDetailsID},
        {"bill_to": billToCompany!.sellerCompanyDetailsID},
        {"shipped_to": shippedToCompany!.sellerCompanyDetailsID}
      ],
      "products": ticketProducts.map((e) => e.toJson()).toList(),
      "order_number": poId,
      "warehouse_id": warehouseid
    });
    if (value.data["message"] ==
        "Successfully Created Purchase Order and Ticket id is Assigned") {
      return true;
    } else {
      return false;
    }
  }

  createIndentChecIn() {
    List<Map<String, int>> a = [];
    for (var e in initialProductsqty) {
      if (e["qty"] != 0) {
        a.add(e);
      }
    }
    checkInModel = checkInModel!.copyWith(products: a);

    apiClient
        .postData("user/createTicketCheckIn", checkInModel!.toJson())
        .then((v) {
      if (v.data["result"] == "Checkin Created for given Products") {
        Get.back(id: salesNavigationKey);
        // Get.off(TicketList(), id: salesNavigationKey);
        Snacks.greenSnack("Checkin Created for given Products");
      }
    });
  }

  IndentViewModel? indent;
  viewindent({required String indentId}) async {
    if (indentId == "") {
      return;
    }
    loading = true;

    await apiClient
        .getData("ticket/viewTicket?ticket_id=$indentId")
        .then((value) {
      if (value.data["message"] == "Data Retrieved Successfully!") {
        indent = IndentViewModel.fromJson(value.data["result"][0]);
      }
      loading = false;
      update();
    });
  }

  Future<List<Company>?> searchComapny(String s) async {
    var value = await apiClient.postData("company/companylist", {"keyword": s});

    if (value.data == null) {
      return null;
    }
    if (value.data["message"] == "Data Retrieved Successfully!") {
      List x = value.data["result"];
      if (x.isEmpty) {
        return null;
      } else {
        return x.map((e) => Company.fromJson(e)).toList();
      }
    } else {
      return null;
    }
  }

  selectCompany({required String check, required selectedCompany}) {
    if (check == "Call From") {
      callFromCompany = selectedCompany;
    }
    if (check == "Bill To") {
      billToCompany = selectedCompany;
    }
    if (check == "Shipped  From") {
      shippedFromCompany = selectedCompany;
    }
    if (check == "Shipped  To") {
      shippedToCompany = selectedCompany;
    }
    update();
  }

  addCompany(Company company) {
    apiClient.postData("company/addCompany", company.toJson()).then((value) {
      if (value.data["message"] ==
          "Seller company and details added successfully") {
        Snacks.greenSnack("Company added successfully");

        Get.off(const CompanyAdded(), id: salesNavigationKey);
      }
    });
  }

  Future<bool> addCompanyByDialog(Company company) async {
    var value =
        await apiClient.postData("company/addCompany", company.toJson());
    if (value.data["message"] ==
        "Seller company and details added successfully") {
      return true;
    } else {
      return false;
    }
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
