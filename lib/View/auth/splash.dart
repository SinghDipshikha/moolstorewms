import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/authController.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
  
@RoutePage()  
class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
          final double height = MediaQuery.sizeOf(context).height ;
    final double width = MediaQuery.sizeOf(context).width ;
    Get.find<AuthController>().splash();
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
              height:height,
              width: width,
              child: Image.asset(
                "assets/images/Splash Desktop.png",
                fit: BoxFit.cover,
              )),
          Padding(
            padding: EdgeInsets.only(top: 0.18 * height),
            child: Image.asset(
              "assets/images/Logo.png",
              height: 0.14 * height,
              width: context.isPhone ? 0.5 * width: null,
            ),
          )
        ],
      ),
    );
  }
}
