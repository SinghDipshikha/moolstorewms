import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/View/hrDashboard.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/utils/globals.dart';

class AddedStaffScreen extends StatefulWidget {
  const AddedStaffScreen({super.key});

  @override
  State<AddedStaffScreen> createState() => _AddedStaffScreenState();
}

class _AddedStaffScreenState extends State<AddedStaffScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/addedStaff.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: InkWell(
            onTap: () {
              Get.to(const HrDashboard(), id: securityGuardNavigation);
            },
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 700.0),
                  child: Column(
                    children: [
                      Center(
                        child: CommonButton(
                          title: 'Goto Staff Profile',
                          color: Colors.white,
                          textColor: Colors.black,
                          onTap: () {
                            Get.to(const HrDashboard(), id: hrNavigationKey);
                          },
                        ),
                      ),
                      const Gap(20),
                      Center(
                        child: CommonButton(
                          title: 'Home',
                          color: const Color(0xFF5A57FF),
                          textColor: Colors.white,
                          onTap: () {
                            Get.to(const HrDashboard(), id: hrNavigationKey);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
