import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:getx_route_annotations/getx_route_annotations.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/customButton.dart';
import 'package:moolwmsstore/routes/approutes.dart';
@RoutePage()  
@GetXRoutePage("/welcome")
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
                  Text("You are Onboard",
                      style: TextStyles.bodyMedium(context)
                          .copyWith(color: Colors.white)),
                  Text("You have signed up successfully",
                      style: TextStyles.bodyMedium(context)
                          .copyWith(color: Colors.white)),
                  const Gap(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: CustomButton(
                      onTap: () {
                        // getIt<AppRouter>().replace(
                        //   BaseRoute(),
                        // );
                        //  context.pushReplacement(location)
                      },
                      title: "Welcome",
                      glow: false,
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
