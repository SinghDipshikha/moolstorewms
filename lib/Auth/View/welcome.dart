import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Auth.dart';
import 'package:moolwmsstore/Owner/View/Common/customButton.dart';

// import 'package:getx_route_annotations/getx_route_annotations.dart';
// ////@RoutePage()
// @GetXRoutePage("/welcome")
class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Image.asset(
              "assets/images/Onboarding Screen.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
              width: width * 0.9,
              height: height * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * 0.1),
                  color: const Color(0x19ffffff)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/Verified.png",
                    height: height * 0.2,
                  ),
                  const Gap(20),
                  const Text("You are Onboard",
                      style: TextStyle(color: Colors.white)),
                  const Text("You have signed up successfully",
                      style: TextStyle(color: Colors.white)),
                  const Gap(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: CustomButton(
                      onTap: () {
                        Get.offAll(const Auth());
                        // getIt<AppRouter>().replace(
                        //   BaseRoute(),
                        // );
                        //  context.pushReplacement(location)
                      },
                      title: "Welcome",
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
