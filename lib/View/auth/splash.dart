import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/authController.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
@RoutePage()  
class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<AuthController>().splash();
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
              height: 100.h,
              width: 100.w,
              child: Image.asset(
                "assets/images/Splash Desktop.png",
                fit: BoxFit.cover,
              )),
          Padding(
            padding: EdgeInsets.only(top: 18.h),
            child: Image.asset(
              "assets/images/Logo.png",
              height: 14.h,
              width: isMobile(context) ? 50.w : null,
            ),
          )
        ],
      ),
    );
  }
}
