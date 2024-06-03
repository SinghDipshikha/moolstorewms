import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:gif_view/gif_view.dart';
import 'package:moolwmsstore/Auth/Controllers/authController.dart';

// @GetXRoutePage("/splash")
////@RoutePage()
class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      initState: (state) {
        Get.find<AuthController>().splash();
      },
      builder: (a) {
        return Scaffold(
            body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(60),
            GifView.asset(
              'assets/gifs/logo.gif',
              height: 140,
              width: 140,
              frameRate: 30, // default is 15 FPS
            ),
            const Gap(10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome to Moolcode,\n',
                        style: TextStyle(
                          color: Color(0xFF595959),
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                          //height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Your ultimate warehouse management solution. ',
                        style: TextStyle(
                          color: Color(0xFFACACAC),
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          //height: 0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const Gap(10),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icons/Group 1000010682.jpg"),
                      fit: BoxFit.fill)),
            ))
          ],
        )

            //  SizedBox(
            //     height: double.infinity,
            //     width: double.infinity,
            //     child: Image.asset('assets/images/splashScreen.png')),
            );
      },
    );
  }
}
