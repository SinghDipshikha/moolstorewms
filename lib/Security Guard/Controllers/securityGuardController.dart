import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Hr/HumanResource.dart';
import 'package:moolwmsstore/Sales/Sales.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/addVisitor.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/employeeEntry.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/person.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/secGuardDetail.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/singlePersonDetail.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/ticket.dart';
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

  List<Person> allPersonList = [];
  bool? isCheckIn;
  User user;
  bool isloading = false;

  SecurityGuardController(
      {required this.secGaurdRepo,
      required this.apiClient,
      required this.user,
      this.isOwner = false});

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
    apiClient.postData(
        "person/getAllTicketsList?recordsPerPage=8&next=1", {}).then((value) {
      if (value.data["message"] == "Ticket details fetched Successfully!") {
        Snacks.greenSnack("Ticket details fetched Successfully!");
        List x = value.data["result"];
        allPersonList = x.map((e) => Person.fromJson(e)).toList();
        print(allVisitorList);
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

  addTicketBySecurityGuard({
    required String personName,
    required String mobileNumber,
    required String vehicleNumber,
    required String driverName,
    required String productName,
    required String productQuantity,
    required String productPrice,
  }) {
    isloading = true;
    update();
    Get.find<ApiClient>().postData("person/createTicketBySecurityGuard", {
      {
        "ticket_generate_by": 2,
        "visitor_name": "Arun",
        "visitor_ph_number": 9811966322,
        "does_have_vehicle": "YES",
        "vehicle_number": "DL-06 AH7654",
        "material_inside": "YES",
        "products": [
          {"product_name": "namaste india milk", "qty": 3, "unit": "10"},
          {"product_name": "amul icecream", "unit": "10", "qty": 3}
        ],
        "in_out_status": "IN"
      }
    }).then((value) async {
      if (value.data["message"] == "Information Added") {
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
}
