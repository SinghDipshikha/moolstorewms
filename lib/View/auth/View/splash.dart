import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_route_annotations/getx_route_annotations.dart';
import 'package:moolwmsstore/View/Auth/Controllers/authController.dart';

@GetXRoutePage("/splash")
//@RoutePage()
class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;

    return GetBuilder<AuthController>(initState: (state) {
      Get.find<AuthController>().splash();
    }, builder: (context) {
      return Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
                height: height,
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
                width: 0.5 * width,
              ),
            )
          ],
        ),
      );
    });
  }
}
