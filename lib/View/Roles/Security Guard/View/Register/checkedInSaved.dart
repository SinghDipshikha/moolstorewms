import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/dashboard.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/widgets/commonButtons.dart';
import 'package:moolwmsstore/utils/globals.dart';

class CheckedInSavedStatus extends StatefulWidget {
  const CheckedInSavedStatus({super.key});

  @override
  State<CheckedInSavedStatus> createState() => _CheckedInSavedStatusState();
}

class _CheckedInSavedStatusState extends State<CheckedInSavedStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/securityGuardCheckedIn.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 600),
          child: Column(children: [
            const Gap(16),
            CustomFloatingActionButton(
              title: 'Go to List',
              textColor: Colors.black,
              color: Colors.white,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CheckedInSavedStatus(),
                ));
              },
            ),
            const Gap(16),
            CustomFloatingActionButton(
              title: 'Home',
              textColor: Colors.black,
              color: Colors.white,
              onTap: () {
                Get.to(const SecurityGuardDashBoard(),
                    id: securityGuardNavigation);
              },
            ),
            const Gap(20),
          ]),
        ),
      ),
    );
  }
}
