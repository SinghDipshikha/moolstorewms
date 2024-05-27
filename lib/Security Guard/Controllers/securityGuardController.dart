import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Hr/HumanResource.dart';
import 'package:moolwmsstore/Sales/Sales.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/addVehicleCount.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/addVisitor.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/employeeEntry.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/material.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/person.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/secGuardDetail.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/singlePersonDetail.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/ticket.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/vehicle.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/visitor.dart';
import 'package:moolwmsstore/Security%20Guard/SecurityGuard.dart';
import 'package:moolwmsstore/Security%20Guard/View/Tickets/ticketVerify.dart';
import 'package:moolwmsstore/Security%20Guard/repository/securityGuardRepo.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';

class SecurityGuardController extends GetxController {
  final SecurityGuardRepo secGaurdRepo;
  final ApiClient apiClient;
  bool isOwner;

  SecGuardDetail? secGuardDetail;
  AddVisitorBySecurityGaurd? addVisitorDetails;
  Visitor? allVisitorsDetails;

  GetSinglePersonDetails? singelPersonDetails;
  List<EmployeeEntry> empEntryList = [];

  List<Visitor> allVisitorList = [];
  List<Ticket> allTicketList = [];
  List<MaterialEntry> allMaterialList = [];
  List<VehicleEntry> allVehicleList = [];
  List<VehicleCount> allVehicleCount = [];
  List<Person> allPersonList = [];
  bool? isCheckIn;
  User user;
  bool isloading = false;

  SecurityGuardController(
      {required this.secGaurdRepo,
      required this.apiClient,
      required this.user,
      this.isOwner = false});

  // void initstate() {
  //   getAllVehicleCount();
  // }
  @override
  void onInit() {
    // TODO: implement onInit
    getAllVehicleCount();

    super.onInit();
  }

  void verifyEmployee() {
    secGaurdRepo
        .verifyEmployee(empId: 2, daterTime: DateTime.now(), gateId: 1)
        .then((value) {
      if (value != null) {
        secGuardDetail = value;
        update();
      }
    });
  }

  void getEmployeesList() {
    secGaurdRepo.getEmployeesList().then((value) {
      if (value != null) {
        empEntryList = value;
        update();
      }
    });
  }

  void checkInOut() {
    secGaurdRepo
        .checkInOut(
            userId: 2,
            dateTime: DateTime.now(),
            status: "IN",
            gateId: 2,
            allowBy: 1)
        .then((value) {
      if (value) {
        isCheckIn = true;
        update();
      } else {
        isCheckIn = false;
        update();
      }
    });
  }

  void addVisitor() {
    secGaurdRepo
        .addVisitor(
            ticketGeneratedBy: user.id,
            visitorName: "Abhishek",
            visitorPhoneNumber: "9811966532",
            visitorIdProof:
                "https://indicold-wms-app.s3.ap-south-1.amazonaws.com/images_upload/1713696189270aadhaar-card-7579588_1280.png",
            purposeOfVisit: "Inquiry",
            inOutStatus: "IN")
        .then((value) {
      if (value != null) {
        addVisitorDetails = value;
        update();
      }
    });
  }

  void getAllPersonssInfo() {
    apiClient.getData("person/list").then((value) {
      if (value.data["message"] == "Data Retrieved Successfully!") {
        Snacks.greenSnack("Data Retrieved Successfully!");
        List x = value.data["result"];
        allPersonList = x.map((e) => Person.fromJson(e)).toList();

        isloading = false;
        update();
      } else {
        isloading = false;
        update();
      }
    });
  }

  void getSinglePersonDetails() {
    secGaurdRepo.getSinglePersonDetails(personId: "#PTC002").then((value) {
      if (value != null) {
        singelPersonDetails = value;
        update();
      }
    });
  }

  void getVisitorDetailsByVisitorId() {
    secGaurdRepo
        .getVisitorDetailsByVisitorId(visitorId: "#VS002")
        .then((value) {
      if (value != null) {
        singelPersonDetails = value;
        update();
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

  void getAllVisitorList() {
    apiClient.postData(
        "visitor/getAllVisitors?recordsPerPage=8&next=1", {}).then((value) {
      if (value.data["message"] == "Visitor details fetched Successfully!") {
        Snacks.greenSnack("Visitor details fetched Successfully!");
        List x = value.data["result"];
        allVisitorList = x.map((e) => Visitor.fromJson(e)).toList();
        print(allVisitorList);
        isloading = false;
        update();
      } else {
        isloading = false;
        update();
      }
    });
  }

  List<Ticket> tickets = [];
  void getAllTicketList() {
    apiClient.getData("ticket/getAllTicketsList").then((value) {
      if (value.data["message"] == "") {
        List x = value.data["result"];
        tickets = x.map((e) => Ticket.fromJson(e)).toList();
        isloading = false;
        update();
      } else {
        isloading = false;
        update();
      }
    });
  }

//   addTicketBySecurityGuard({
//     required int? ticketGeneratedBy,
//     required String personName,
//     required String mobileNumber,
//     required String vehicleNumber,
//     //  List<Map<String, String>> products = [{

//     //  },{}],
//  // required String productName,
//     // required String productQuantity,
//     // required String productUnit,
//     required String doesHaveVehicle,
//     required String doesHaveMaterial,
//     required String status,
//   }) {
//     isloading = true;
//     update();
//     Get.find<ApiClient>().postData("person/createTicketBySecurityGuard", {
//       {
//         "ticket_generate_by": ticketGeneratedBy,
//         "visitor_name": personName,
//         "visitor_ph_number": mobileNumber,
//         "does_have_vehicle": doesHaveVehicle,
//         "vehicle_number": vehicleNumber,
//         "material_inside": doesHaveMaterial,
//         "products": [
//           {
//             "product_name": productName,
//             "qty": productQuantity,
//             "unit": productUnit
//           },
//         ],
//         "in_out_status": status,
//       }
//     }).then((value) async {
//       if (value.data["message"] == "Information Added") {
//         value.data["result"][0]["id"];

//         Snacks.greenSnack("Ticket Added Successfully");
//         isloading = false;
//         Get.offAll(
//           const TicketEntryReviewScreen(),
//         );
//       } else if (value.data["message"] == "Failed to add") {
//         isloading = false;
//         update();
//         Snacks.redSnack("Failed to add");
//       }
//     });
//   }
  addTicketBySecurityGuard({
    required int? ticketGeneratedBy,
    required String personName,
    required String mobileNumber,
    required String vehicleNumber,
    required String doesHaveVehicle,
    required String doesHaveMaterial,
    required String status,
    required List<Map<String, String>> products, // Updated parameter
  }) {
    isloading = true;
    update();
    Get.find<ApiClient>().postData("person/createTicketBySecurityGuard", {
      {
        "ticket_generate_by": ticketGeneratedBy,
        "visitor_name": personName,
        "visitor_ph_number": mobileNumber,
        "does_have_vehicle": doesHaveVehicle,
        "vehicle_number": vehicleNumber,
        "material_inside": doesHaveMaterial,
        "products": products.map((product) {
          return {
            "product_name": product['productName'],
            "qty": product['productQuantity'],
            "unit": product['productUnit']
          };
        }).toList(),
        "in_out_status": status,
      }
    }).then((value) async {
      if (value.data["message"] == "Vehicle Checked IN successfully") {
        value.data["result"][0]["id"];

        Snacks.greenSnack("Ticket Added Successfully");
        isloading = false;
        Get.offAll(
          const TicketEntryReviewScreen(),
        );
      } else if (value.data["message"] == "Failed to add") {
        isloading = false;
        update();
        Snacks.redSnack("Failed to add");
      }
    });
  }

  void getAllMaterialList() {
    apiClient
        .getData(
      "material/list",
    )
        .then((value) {
      if (value.data["message"] == "Data Retrieved Successfully!") {
        Snacks.greenSnack("Data Retrieved Successfully!");
        List x = value.data["result"];
        allMaterialList = x.map((e) => MaterialEntry.fromJson(e)).toList();
        print(allMaterialList);
        isloading = false;
        update();
      } else {
        isloading = false;
        update();
      }
    });
  }

  void getAllVehicleList() {
    apiClient
        .getData(
      "vehicle/list",
    )
        .then((value) {
      if (value.data["message"] == "Data Retrieved Successfully!") {
        Snacks.greenSnack("Data Retrieved Successfully!");
        List x = value.data["result"];
        allVehicleList = x.map((e) => VehicleEntry.fromJson(e)).toList();
        print(allMaterialList);
        isloading = false;
        update();
      } else {
        isloading = false;
        update();
      }
    });
  }

  getAllVehicleCount() {
    apiClient
        .getData(
      "vehicle/vehicalCount",
    )
        .then((value) {
      if (value.data["message"] == "Data Retrieved Successfully!") {
        Snacks.greenSnack("Data Retrieved Successfully!");
        List x = value.data["result"];
        allVehicleCount = x.map((e) => VehicleCount.fromJson(e)).toList();
        print('this is count $allVehicleCount');
        isloading = false;
        update();
      } else {
        isloading = false;
        update();
      }
    });
  }

  void getAllVisitorCount() {
    //   apiClient
    //       .getData(
    //     "vehicle/list",
    //   )
    //       .then((value) {
    //     if (value.data["message"] == "Data Retrieved Successfully!") {
    //       Snacks.greenSnack("Data Retrieved Successfully!");
    //       List x = value.data["result"];
    //       allVehicleList = x.map((e) => VehicleEntry.fromJson(e)).toList();
    //       print(allMaterialList);
    //       isloading = false;
    //       update();
    //     } else {
    //       isloading = false;
    //       update();
    //     }
    //   });
  }

  void getAllMaterialCount() {
    // apiClient
    //     .getData(
    //   "vehicle/list",
    // )
    //     .then((value) {
    //   if (value.data["message"] == "Data Retrieved Successfully!") {
    //     Snacks.greenSnack("Data Retrieved Successfully!");
    //     List x = value.data["result"];
    //     allVehicleList = x.map((e) => VehicleEntry.fromJson(e)).toList();
    //     print(allMaterialList);
    //     isloading = false;
    //     update();
    //   } else {
    //     isloading = false;
    //     update();
    //   }
    // });
  }

  void getAllPersonCount() {
    //   apiClient
    //       .getData(
    //     "vehicle/list",
    //   )
    //       .then((value) {
    //     if (value.data["message"] == "Data Retrieved Successfully!") {
    //       Snacks.greenSnack("Data Retrieved Successfully!");
    //       List x = value.data["result"];
    //       allVehicleList = x.map((e) => VehicleEntry.fromJson(e)).toList();
    //       print(allMaterialList);
    //       isloading = false;
    //       update();
    //     } else {
    //       isloading = false;
    //       update();
    //     }
    //   });
  }
}
