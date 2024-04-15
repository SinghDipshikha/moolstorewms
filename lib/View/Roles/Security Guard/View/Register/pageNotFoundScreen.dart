import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/widgets/commonAppBar.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/widgets/commonButtons.dart';

class PageNotFoundScreen extends StatefulWidget {
  const PageNotFoundScreen({super.key});

  @override
  State<PageNotFoundScreen> createState() => _PageNotFoundScreenState();
}

class _PageNotFoundScreenState extends State<PageNotFoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Enter Employee ID',
        actions: [],
      ),
      body: Column(
        children: [
          const Gap(30),
          Container(
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/404 1.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Gap(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CommonButtonForMobile(
                title: 'Close',
              ),
              CommonButtonForMobile(
                title: 'Retry',
              ),
            ],
          ),
          // CommonCheckInButton(
          //   title: 'Vehicle In',
          // ),
          // CommonApproveAndDeclineButton()
        ],
      ),
    );
  }
}
