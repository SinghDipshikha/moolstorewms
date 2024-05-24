import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:gif_view/gif_view.dart';
import 'package:moolwmsstore/Auth/Controllers/authController.dart';
import 'package:moolwmsstore/Auth/View/phoneSign.dart';
//import 'package:moolwmsstore/routes/approutes.gr.dart';
import 'package:moolwmsstore/utils/globals.dart';

////@RoutePage()
class SignInUp extends StatelessWidget {
  const SignInUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GifView.asset(
              'assets/gifs/logo.gif',
              height: 160,
              width: 160,
              frameRate: 30, // default is 15 FPS
            ),
            const Gap(20),
            const Text(
              'Welcome to Moolcode!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF353535),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            const Text(
              'Get ready to experience seamless logistics and top-notch service.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFACACAC),
                fontSize: 12,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            Image.asset(
              "assets/images/Group.png",
              height: 162,
            ).paddingSymmetric(vertical: 22, horizontal: 12),

            const Text(
              'Please sign in to start managing your\ninventory like a pro!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFACACAC),
                fontSize: 12,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
            ).paddingSymmetric(vertical: 8),
            InkWell(
              onTap: () {
                Get.find<AuthController>().onSignInPressed();
              },
              child: Container(
                width: 317,
                height: 44,
                alignment: Alignment.center,
                // padding: const EdgeInsets.symmetric(horizontal: 124, vertical: 14),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFF5A57FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600,
                    //height: 0,
                    letterSpacing: -0.88,
                  ),
                ),
              ).paddingSymmetric(vertical: 12),
            ),
            InkWell(
              onTap: () {
                Get.to(
                    PhoneSign(
                      signUp: true,
                    ),
                    id: authNavigationKey);
                //  Get.off(const Welcome(), id: authNavigationKey);
                //Get.offUntil(Welcome(), (route) => true ,id: authNavigationKey);
              },
              child: Container(
                width: 317,
                height: 44,
                alignment: Alignment.center,
                // padding: const EdgeInsets.symmetric(horizontal: 113, vertical: 14),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFAF9FF),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 2, color: Color(0x195A57FF)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xFF5A57FF),
                    fontSize: 18,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600,
                    //height: 0,
                    letterSpacing: -0.88,
                  ),
                ),
              ).paddingSymmetric(vertical: 4),
            ),
            //const Spacer(),
            const Gap(20),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'By signing up or logging in, you agree to abide\nby ',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      //height: 0,
                    ),
                  ),
                  TextSpan(
                    text: 'Terms',
                    style: TextStyle(
                      color: Color(0xFF5A57FF),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      //height: 0,
                    ),
                  ),
                  TextSpan(
                    text: ' and ',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      //height: 0,
                    ),
                  ),
                  TextSpan(
                    text: 'Conditions',
                    style: TextStyle(
                      color: Color(0xFF5A57FF),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      //height: 0,
                    ),
                  ),
                  TextSpan(
                    text: '.',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      //height: 0,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            )
          ],
        ).paddingSymmetric(horizontal: 14, vertical: 0),
      ),
    );
  }
}
