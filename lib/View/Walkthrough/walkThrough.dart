import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/auth/login.dart';
import 'package:moolwmsstore/View/base/customButton.dart';
import 'package:platform_detector/platform_detector.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalkThrough extends StatefulWidget {
  const WalkThrough({Key? key}) : super(key: key);

  @override
  _WalkThroughState createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  List<String> sliderImages = [
    "assets/images/slider_images/customer-View.svg",
    "assets/images/slider_images/Dock-Management.svg",
    "assets/images/slider_images/Gate-management.svg",
    "assets/images/slider_images/User-Role-Right.svg"
  ];
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 4), (time) async {
      int nexPage = (controller.page?.toInt() ?? 0) + 1;
      if (nexPage == sliderImages.length) {
        nexPage = 0;
      }
      await controller.animateToPage(
        nexPage,
        duration: const Duration(seconds: 1),
        curve: Curves.easeOut,
      );
    });
    // TODO: implement initState
    super.initState();
  }

  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Gap(20),
              Text(
                "Welcome to MoolWMS",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 380,
                        child: Expanded(
                            child: PageView.builder(
                                controller: controller,
                                scrollDirection: Axis.horizontal,
                                itemCount: sliderImages.length,
                                itemBuilder: (context, i) {
                                  return SvgPicture.asset(
                                    height: 150,
                                    sliderImages[i],
                                    semanticsLabel: 'Acme Logo',
                                    fit: BoxFit.contain,
                                  );
                                })),
                      ),
                      Text('splash_screen_message'.tr),
                      const Gap(20),
                      SmoothPageIndicator(
                        controller: controller,
                        count: sliderImages.length,
                        effect: WormEffect(
                          activeDotColor: Theme.of(context).primaryColor,

                          spacing: 6.0,
                          // activeColorOverride: (i) => colors[i],
                          // inActiveColorOverride: ,
                        ),
                      ),
                    ],
                  )),
              //  const Gap(10),

              const Gap(20),
              if (isMobile())
                CustomButton(
                  onTap: () => Get.to(const Login()),
                ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
