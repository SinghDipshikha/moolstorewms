import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Controllers/authController.dart';

// @GetXRoutePage("/splash")
////@RoutePage()
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
        body: Center(
          child: TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0, end: 1),
            duration: const Duration(seconds: 1),
            builder: (BuildContext context, double value, Widget? child) {
              return Opacity(
                  opacity: value,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/splashScreen.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(100.0),
                          child: Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/splashLogo.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Gap(10),
                              const SizedBox(
                                width: 298,
                                height: 46,
                                child: Text.rich(
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
                                        text:
                                            'Your ultimate warehouse management solution. ',
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
                              ),
                              const Gap(20)
                            ],
                          ),
                        ),
                      ],
                    ),
                  )

                  //  SizedBox(
                  //     height: double.infinity,
                  //     width: double.infinity,
                  //     child: Image.asset('assets/images/splashScreen.png')),
                  );
            },
          ),
        ),
      );
    });
  }
}
