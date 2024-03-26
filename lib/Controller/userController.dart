import 'package:get/get.dart';

class UserController extends GetxController {
 

  var userId = 55;

  bool celebrate = false;

  List roles = [
    "Head of Operations",
    "Regional Manager",
    "Senior Manager",
    "Plant Manager",
    "Assistant Manager",
    "Senior Supervisor",
    "Supervisor",
    "Dock Supervisor",
    "Intern",
    "Security Guard",
    "Plant Helper",
    "Senior Plant Operator",
    "MultiSkilled Engineer",
    "Electrician",
    "MHE Operator",
    "Super Admin",
    "Corporate / Owner",
  ];
  void startCelebrate() {
    celebrate = true;
    update();
    Future.delayed(const Duration(seconds: 4)).whenComplete(() {
      celebrate = false;
      update();
    });
  }
}

/*
Plant Helper
Senior Plant Operator
MultiSkilled Engineer
Electrician
MHE Operator
Super Admin
Corporate / Owner
 */