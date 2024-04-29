import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getx_route_annotations/getx_route_annotations.dart';
// @GetXRoutePage("/verify")
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Verified extends StatelessWidget {
  const Verified({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF5A57FF), Color(0xFFFF5789)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/28 1.png",
                        height: 200,
                      ),
                    ],
                  ),
                  const Text(
                    'Verified',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w700,
                      // height: 0,
                    ),
                  ),
                  const Text(
                    'Your mobile number has been verified\nsuccessfully.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Aileron',
                      fontWeight: FontWeight.w600,
                      height: 1,
                      letterSpacing: 0.36,
                    ),
                  ),
                ],
              )),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 45,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 2,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: const Text(
                  'Next',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF353535),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w600,
                    height: 1,
                    letterSpacing: 0.32,
                  ),
                ),
              ).paddingSymmetric(vertical: 12),
              SmoothPageIndicator(
                      controller:
                          PageController(initialPage: 2), // PageController
                      count: 3,
                      effect: WormEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        dotColor: Colors.white.withOpacity(0.4),
                        activeDotColor: Colors.white,
                      ), // your preferred effect
                      onDotClicked: (index) {})
                  .paddingSymmetric(vertical: 20),
            ],
          ),
        ).paddingAll(14));
  }
}
