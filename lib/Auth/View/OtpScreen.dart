import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Controllers/authController.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:otp_text_field_v2/otp_field_style_v2.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';

////@RoutePage()
class OtpScreen extends StatefulWidget {
  bool signUp;
  OtpScreen({super.key, required this.signUp});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  OtpFieldControllerV2? controller = OtpFieldControllerV2();
  Duration myDuration = const Duration(seconds: 30);
  String? otp;

  Timer? countdownTimer;
  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  void setCountDown() {
    const reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  void resetTimer() {
    // stopTimer();
    setState(() => myDuration = const Duration(seconds: 30));
  }

  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  void submitOtp() {
    if (otp != null) {
      if (widget.signUp) {
        Get.find<AuthController>().verifySignupOtp(int.parse(otp!));
      } else {
        Get.find<AuthController>().verifySignInOtp(int.parse(otp!));
      }
    }
    if (otp == null) {
      Snacks.redSnack("Please enter Otp");
      return;
    }
    if (otp!.length < 6) {
      Snacks.redSnack("Please enter complete");
      return;
    }
  }

  @override
  void initState() {
    startTimer();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: submitOtp,
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 45,
          decoration: ShapeDecoration(
            gradient: const LinearGradient(
              begin: Alignment(1.00, 0.00),
              end: Alignment(-1, 0),
              colors: [Color(0xFFFD578A), Color(0xFF5B57FE)],
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
            'Confirm',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              //  fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w600,
              // height: 0.12,
              // letterSpacing: 0.32,
            ),
          ),
        ).paddingSymmetric(horizontal: 12),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  Gap(MediaQuery.sizeOf(context).height * 0.1),
            const Text(
              'OTP Verification',
              style: TextStyle(
                color: Color(0xFF353535),
                fontSize: 24,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w600,
                //height: 0,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              'A six digit code has been sent on ${Get.find<AuthController>().number}',
              style: const TextStyle(
                color: Color(0xFF595959),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                //height: 0,
              ),
              textAlign: TextAlign.left,
            ),
            const Gap(20),
            Image.asset(
              "assets/icons/23_Cloud Security Icon 1.png",
              height: 140,
            ),
            const Text(
              'Verify your Mobile Number',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Aileron',
                fontWeight: FontWeight.w600,
                height: 1,
                letterSpacing: 0.36,
              ),
            ),
            const Text(
              'Enter the OTP you just received',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF717171),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 1,
                letterSpacing: 0.32,
              ),
            ),
            OTPTextFieldV2(
              spaceBetween: 4,
              // contentPadding:
              //     const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              otpFieldStyle: OtpFieldStyle(
                borderColor: const Color(0x195A57FE),
                backgroundColor: const Color(0xFFFAF9FF),
              ),
              controller: controller,
              length: 6,
              width: MediaQuery.of(context).size.width - 20,
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldWidth: 40,
              isDense: false,
              autoFocus: true,
              fieldStyle: FieldStyle.box,
              keyboardType: TextInputType.number,
              outlineBorderRadius: 5,
              style: const TextStyle(
                color: Color(0xFF5A57FF),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w600,
                // height: 0.12,
                // letterSpacing: 0.32,
              ),
              onChanged: (value) {
                otp = value;
              },

              onCompleted: (pin) {
                // setState(() {
                otp = pin;
                //  });
              },
            ).paddingOnly(top: 40, bottom: 20),
            myDuration.inSeconds != 0
                ? Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Resend otp in',
                          style: TextStyle(
                            color: Color(0xFF717171),
                            fontSize: 12,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0.14,
                            letterSpacing: 0.24,
                          ),
                        ),
                        TextSpan(
                          text: ' ${myDuration.inSeconds}',
                          style: const TextStyle(
                            color: Color(0xFF5D57FD),
                            fontSize: 12,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0.14,
                            letterSpacing: 0.24,
                          ),
                        ),
                        const TextSpan(
                          text: ' secs',
                          style: TextStyle(
                            color: Color(0xFF717171),
                            fontSize: 12,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0.14,
                            letterSpacing: 0.24,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  )
                : InkWell(
                    onTap: () {
                      resetTimer();
                      if (widget.signUp) {
                        Get.find<AuthController>().sendSignUpOtp(
                            Get.find<AuthController>().number ?? "");
                      } else {
                        Get.find<AuthController>().sendSignInOtp(
                            Get.find<AuthController>().number ?? "");
                      }
                      controller!.clear();
                    },
                    child: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Didn’t receive the OTP? ',
                            style: TextStyle(
                              color: Color(0xFF717171),
                              fontSize: 12,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              height: 0.14,
                              letterSpacing: 0.24,
                            ),
                          ),
                          TextSpan(
                            text: 'Resend',
                            style: TextStyle(
                              color: Color(0xFF5D57FD),
                              fontSize: 12,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              height: 0.14,
                              letterSpacing: 0.24,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ).paddingSymmetric(vertical: 10),
                  ),
            const Gap(20),
            // InkWell(
            //   onTap: () {
            //     Get.to(const Verified());
            //   },
            //   child: Container(
            //     alignment: Alignment.center,
            //     width: double.infinity,
            //     height: 45,
            //     decoration: ShapeDecoration(
            //       gradient: const LinearGradient(
            //         begin: Alignment(1.00, 0.00),
            //         end: Alignment(-1, 0),
            //         colors: [Color(0xFFFD578A), Color(0xFF5B57FE)],
            //       ),
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(5)),
            //       shadows: const [
            //         BoxShadow(
            //           color: Color(0x19000000),
            //           blurRadius: 2,
            //           offset: Offset(0, 2),
            //           spreadRadius: 0,
            //         )
            //       ],
            //     ),
            //     child: const Text(
            //       'Confirm',
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 16,
            //         //  fontFamily: 'SF Pro Display',
            //         fontWeight: FontWeight.w600,
            //         // height: 0.12,
            //         // letterSpacing: 0.32,
            //       ),
            //     ),
            //   ),
            // ),
            // SmoothPageIndicator(
            //         controller:
            //             PageController(initialPage: 1), // PageController
            //         count: 3,
            //         effect: const WormEffect(
            //           dotHeight: 10,
            //           dotWidth: 10,
            //           dotColor: Color.fromARGB(255, 212, 212, 226),
            //           activeDotColor: Color(0xFF5C57FE),
            //         ), // your preferred effect
            //         onDotClicked: (index) {})
            //     .paddingSymmetric(vertical: 20),
            const Text(
              'By continuing you agree to the\nTerms of Use & Privacy Policy',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF717171),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 1,
                //   letterSpacing: 0.32,
              ),
            )
          ],
        ).paddingSymmetric(horizontal: 14),
      ),

      //     body:
      //  SizedBox(
      //       height: double.infinity,
      //       width: double.infinity,
      //       child: Row(
      //         children: [
      //           Expanded(
      //             flex: 5,
      //             child: Center(
      //               child: Container(
      //                 child: Container(
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.center,
      //                     crossAxisAlignment: CrossAxisAlignment.center,
      //                     children: [

      //                       // Image.asset(
      //                       //   "assets/icons/ic_logo.png",
      //                       //   height: 0.08 * MediaQuery.sizeOf(context).height,
      //                       //   width: context.isPhone
      //                       //       ? 0.5 * MediaQuery.sizeOf(context).width
      //                       //       : null,
      //                       // ),
      //                       const Gap(20),
      //                       Text(
      //                         ('verification'.tr),
      //                         style: TextStyles.titleMedium(context),
      //                       ),
      //                       Text(
      //                         ("enter_otp".tr),
      //                         style: TextStyles.bodyMedium(context),
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.symmetric(vertical: 12),
      //                         child: Container(
      //                           height: 70,
      //                           constraints: const BoxConstraints(
      //                               minWidth: 200, maxWidth: 400),
      //                           child: OTPTextFieldV2(
      //                             contentPadding: const EdgeInsets.symmetric(
      //                                 vertical: 10, horizontal: 10),
      //                             otpFieldStyle: OtpFieldStyle(),
      //                             controller: controller,
      //                             length: 6,
      //                             width: MediaQuery.of(context).size.width,
      //                             textFieldAlignment: MainAxisAlignment.spaceAround,
      //                             fieldWidth: 45,
      //                             autoFocus: true,
      //                             fieldStyle: FieldStyle.box,
      //                             keyboardType: TextInputType.number,
      //                             outlineBorderRadius: 5,
      //                             style: TextStyles.bodyMedium(context),
      //                             onChanged: (pin) {
      //                               print("Changed: $pin");
      //                             },
      //                             onCompleted: (pin) {
      //                               print("Completed: $pin");
      //                               setState(() {
      //                                 otp = pin;
      //                               });
      //                             },
      //                           ),
      //                         ),
      //                       ),
      //                       myDuration.inSeconds != 0
      //                           ? Text(
      //                               ('request_otp'.tr).replaceAll(
      //                                   '#Secs#', '${myDuration.inSeconds}'),
      //                               style: TextStyles.bodyMedium(context),
      //                             )
      //                           : TextButton(
      //                               onPressed: () {
      //                                 Get.find<AuthController>().resendOtp();
      //                                 // BlocProvider.of<OtpCubit>(context)
      //                                 //     .reSendOtp();
      //                                 resetTimer();
      //                               },
      //                               child: Text(
      //                                 "Resend Otp".tr,
      //                                 style: TextStyles.bodyMedium(context),
      //                               )),
      //                       const Gap(10),
      //                       CustomButton(
      //                         // color: Colors.white,
      //                         glow:
      //                             (otp != null && otp?.length == 6) ? true : false,
      //                         title: ('verify_otp'.tr),
      //                         onTap: () {
      //                           if ((otp != null && otp?.length == 6)) {
      //                             Get.find<AuthController>().verifyOtp(otp!);
      //                           }
      //                         },
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           context.isPhone
      //               ? Container()
      //               : Expanded(
      //                   flex: 2,
      //                   child: SizedBox(
      //                     height: double.infinity,
      //                     child: Image.asset(
      //                       "assets/images/warehouse in 2.png",
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ))
      //         ],
      //       ),
      //     ),
    );
  }
}
