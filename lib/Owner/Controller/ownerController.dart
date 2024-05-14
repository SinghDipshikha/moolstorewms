import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/Model/personType.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Common%20Data/repository/ownerRepo.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/HumanResource.dart';
import 'package:moolwmsstore/Hr/repository/hrrepo.dart';
import 'package:moolwmsstore/Owner/Model/addChamber.dart';
import 'package:moolwmsstore/Owner/Model/addWarehouseField.dart';
import 'package:moolwmsstore/Owner/Model/employee.dart';
import 'package:moolwmsstore/Owner/Model/warehouse.dart';
import 'package:moolwmsstore/Owner/Owner.dart';
import 'package:moolwmsstore/Owner/View/OwnerDashboard.dart';
import 'package:moolwmsstore/Sales/Sales.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/Sales/repo/salesRepo.dart';
import 'package:moolwmsstore/Security%20Guard/Controllers/securityGuardController.dart';
import 'package:moolwmsstore/Security%20Guard/SecurityGuard.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/globals.dart';
import 'package:restart_app/restart_app.dart';

import '../../Security Guard/repository/securityGuardRepo.dart';

class OwnerController extends GetxController {
  final OwnerRepo ownerRepo;
  final ApiClient apiClient;
  OwnerController(
      {required this.ownerRepo, required this.apiClient, required this.user});

  User user;
  List<Warehouse> warehouses = [];
  List<Warehouse> searchWarehouses = [];
  List<AddWarehiuseField> addWarehouseFields = [];
  List<PersonType> roles = [];
  List<PersonType> selectedRoles = [];
  List<Warehouse> selectedWarehouses = [];
  List<Employee> employees = [];
  bool loading = false;
  String countrydialCode = "+91";
  String? selectedTempType;

  AddChamber addChamberModel = const AddChamber();
  setloadingtrue() {
    loading = true;
    update();
  }

  Warehouse? currentSelectedWarehouse;
  searchWarehouseList(String p) {
    if (p.isEmpty) {
      searchWarehouses = warehouses;
      update();
      return;
    }

    searchWarehouses = warehouses.where((element) {
      return ((element.warehouse_name?.contains(p, 0) ?? false) ||
          (element.warehouse_name?.contains(p.toUpperCase(), 0) ?? false));
    }).toList();
    Logger().i(searchWarehouses);
    update();
  }

  getAllWarhouse() {
    apiClient.getData("owner/getAllWareHouse").then((value) {
      if (value.data["message"] == "Values found") {
        List m = value.data["result"];
        warehouses = m.map((e) => Warehouse.fromJson(e)).toList();
        searchWarehouses = warehouses;
        loading = false;
        update();
      } else {
        loading = false;
        update();
      }
    });
  }

  getAddWarehouseFields() async {
    await apiClient.getData('dynamic/getAllWareHouseValues').then((value) {
      if (value.data["message"] == "Values found") {
        List result = value.data["result"];
        //Logger().d(result);

        addWarehouseFields =
            result.map((e) => AddWarehiuseField.fromJson(e)).toList();
        update();
      }
    });
  }

  addEmployee(String name, int mobileNumber) async {
    loading = true;
    update();
    // Logger().i({
    //   "owner_id": user.id,
    //   "warehouse_id": selectedWarehouses.map((e) => e.id).toList(),
    //   "employee_name": name,
    //   "mobile_number": mobileNumber,
    //   "person_type_id": selectedRoles.map((e) => e.id).toList(),
    //   "country_code": countrydialCode
    // });
    apiClient.postData("owner/addEmployeeByOwner", {
      "owner_id": user.id,
      "warehouse_id": selectedWarehouses.map((e) => e.id).toList(),
      "employee_name": name,
      "mobile_number": "$countrydialCode$mobileNumber",
      "person_type_id": selectedRoles.map((e) => e.id).toList(),
      // "country_code": countrydialCode
    }).then((value) {
      Logger().i(value.data);

      if (value.data["message"] == "Employee added successfully") {
        Logger().i("ducgudchdiuchduihciuhc");

        loading = false;
        update();
        Get.back(id: ownerNavigationKey);
        Snacks.greenSnack("Employee added successfully");
      }
    });
  }

  getRoles() async {
    await apiClient.getData("common/getAllPersonType").then((value) {
      if (value.data["message"] == "Person type fetched successfully!") {
        List x = value.data["result"];

        roles = x.map((e) => PersonType.fromJson(e)).toList();
        update();
      }
    });
    Logger().i(roles);
  }

  submitWarehouse() {
    Map body = {};
    body["country_code"] = countrydialCode;
    body["user_id"] = user.id;
    body["lat"] = 0.0;
    body["lng"] = 0.0;
    for (var element in addWarehouseFields) {
      body[element.field_name] = element.value;
    }
    // Snacks.greenSnack("WareHouse added");
    apiClient.postData("owner/addOnlyWareHouse", body).then((value) async {
      if (value.data["result"] == "WareHouse added") {
        //  Logger().i("djughuidbvjdbvjdbvikbdhcvb");
        Get.back(id: ownerNavigationKey);
        Snacks.greenSnack("WareHouse added");
        //
      }
    });
  }

  // List<ChamberField> addChamberFields = [];
  // Map submitChamberBody = {};
  // getAddChamberFields() {
  //   loading = true;

  //   apiClient.getData("dynamic/getOwnerAddChamberBasicDetails").then((value) {
  //     if (value.data["message"] == "Values found") {
  //       List<ChamberField> c = [];
  //       List x = value.data["result"];
  //       for (var element in x) {
  //         if (element["isShow"] == 1) {
  //           c.add(ChamberField.fromJson(element));
  //           submitChamberBody[element["field_name"]] = null;
  //         }
  //       }
  //       addChamberFields = c;

  //       loading = false;
  //       update();
  //     }
  //   });
  // }

  addChamber() async {
    loading = true;
    update();
    await apiClient
        .postData("owner/addChamberHouse", addChamberModel.toJson())
        .then((value) {
      if (value.data["result"] == "Chamber Added Successfully") {
        addChamberModel = const AddChamber();
        Snacks.greenSnack("Chamber Added Successfully");
        Get.off(const OwnerDashboard(), id: ownerNavigationKey);
      }
    });
    loading = false;
    update();
  }
  //owner/getAllEmployeesByOrg

  getAllEmployeesByOrg() {
    apiClient.getData("owner/getAllEmployeesByOrg").then((value) {
      if (value.data["message"] == "All Employees found") {
        List x = value.data["result"];
        employees = x.map((e) => Employee.fromJson(e)).toList();
        Logger().i(employees);

        update();
      }
    });
  }

  List otherRoles = ["Owner", "Sales", "HR", "Security Guard"];

  switchRole(String role) {
    if (role == "Owner") {
      Get.offAll(const Owner());
    }
    if (role == "Security Guard") {
      Get.lazyPut(() => SecurityGuardRepo(
          sharedPreferences: Get.find(), apiClient: Get.find()));
      Get.lazyPut(
        () => SecurityGuardController(
          isOwner: true,
          user: user,
          secGaurdRepo: Get.find<SecurityGuardRepo>(),
          apiClient: Get.find<ApiClient>(),
        ),
      );

      Get.offAll(const SecurityGuard());
    }
    if (role == "HR") {
      Get.lazyPut(
          () => HrRepo(sharedPreferences: Get.find(), apiClient: Get.find()));
      Get.lazyPut(
        () => HRController(
          isOwner: true,
          user: user,
          hrRepo: Get.find<HrRepo>(),
          apiClient: Get.find<ApiClient>(),
        ),
      );

      Get.offAll(const HumanResouce());
    }
    if (role == "Sales") {
      Get.lazyPut(() =>
          SalesRepo(sharedPreferences: Get.find(), apiClient: Get.find()));
      Get.lazyPut(
        () => SalesController(
          isOwner: true,
          user: user,
          salesRepo: Get.find<SalesRepo>(),
          apiClient: Get.find<ApiClient>(),
        ),
      );

      Get.offAll(const Sales());
    }
  }

  ownerLogout() async {
    var box = await Hive.openBox('authbox');
    Get.find<OwnerController>().dispose();

    box.clear();
    Restart.restartApp();
  }
}
