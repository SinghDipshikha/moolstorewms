import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SignInUp extends StatelessWidget {
  const SignInUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Welcome!\n',
                  style: TextStyle(
                    color: Color(0xFF5A57FF),
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text:
                      'Get ready to experience seamless logistics and\ntop-notch service.',
                  style: TextStyle(
                    color: Color(0xFF5A57FF),
                    fontSize: 18,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(
              child: Image.asset("assets/images/Group.png").paddingAll(22)),
          const Text(
            'Please sign in to start managing your\ninventory like a pro!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w300,
              //  height: 0.06,
            ),
          ).paddingSymmetric(vertical: 8),
          Container(
            width: 317,
            height: 54,
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
                fontSize: 22,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: -0.88,
              ),
            ),
          ).paddingSymmetric(vertical: 12),
          Container(
            width: 317,
            height: 54,
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
                fontSize: 22,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: -0.88,
              ),
            ),
          ).paddingSymmetric(vertical: 4),
          //const Spacer(),
          const Gap(20),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'By signing up or logging in, you agree to abide\nby ',
                  style: TextStyle(
                    color: Color(0xFFACACAC),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: 'Terms',
                  style: TextStyle(
                    color: Color(0xFF5A57FF),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: ' and ',
                  style: TextStyle(
                    color: Color(0xFFACACAC),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: 'Conditions',
                  style: TextStyle(
                    color: Color(0xFF5A57FF),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: '.',
                  style: TextStyle(
                    color: Color(0xFFACACAC),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          )
        ],
      ).paddingSymmetric(horizontal: 14, vertical: 16)),
    );
  }
}
