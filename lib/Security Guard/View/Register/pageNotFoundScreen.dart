//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonAppBar.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonButtons.dart';

//@RoutePage()
class PageNotFoundScreen extends StatefulWidget {
  const PageNotFoundScreen({super.key});

  @override
  State<PageNotFoundScreen> createState() => _PageNotFoundScreenState();
}

class _PageNotFoundScreenState extends State<PageNotFoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Enter Employee Id',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
            ),
          ),
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
