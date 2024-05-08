import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Security%20Guard/View/Visitor/visitorList.dart';
import 'package:moolwmsstore/Security%20Guard/View/securityGuardDashboard.dart';
import 'package:moolwmsstore/utils/globals.dart';

class VisitorAddedSuccessfully extends StatefulWidget {
  const VisitorAddedSuccessfully({super.key});

  @override
  State<VisitorAddedSuccessfully> createState() =>
      _VisitorAddedSuccessfullyState();
}

class _VisitorAddedSuccessfullyState extends State<VisitorAddedSuccessfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:
                  AssetImage("assets/images/visitorCheckedInSuccessfully.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 700.0),
                child: Column(
                  children: [
                    Center(
                      child: CommonButton(
                        title: 'Go To List',
                        color: Colors.white,
                        textColor: Colors.black,
                        onTap: () {
                          Get.to(const VisitorListScreen(),
                              id: securityGuardNavigation);
                        },
                      ),
                    ),
                    const Gap(20),
                    Center(
                      child: CommonButton(
                        title: 'Home',
                        color: Colors.white,
                        textColor: Colors.black,
                        onTap: () {
                          Get.to(const SecurityGuardDashBoard(),
                              id: securityGuardNavigation);
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
    );
  }
}
