import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/authController.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/customButton.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:otp_text_field_v2/otp_field_style_v2.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
@RoutePage()  
class OtpScreen extends StatefulWidget {
  const OtpScreen({
    super.key,
  });

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
    stopTimer();
    setState(() => myDuration = const Duration(seconds: 30));
  }

  void stopTimer() {
    setState(() => countdownTimer!.cancel());
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
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Container(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/ic_logo.png",
                          height: 8.h,
                          width: isMobile(context) ? 50.w : null,
                        ),
                        const Gap(20),
                        Text(
                          ('verification'.tr),
                          style: TextStyles.titleMedium(context),
                        ),
                        Text(
                          ("enter_otp".tr),
                          style: TextStyles.bodyMedium(context),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Container(
                            height: 70,
                            constraints: const BoxConstraints(
                                minWidth: 200, maxWidth: 400),
                            child: OTPTextFieldV2(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              otpFieldStyle: OtpFieldStyle(),
                              controller: controller,
                              length: 6,
                              width: MediaQuery.of(context).size.width,
                              textFieldAlignment: MainAxisAlignment.spaceAround,
                              fieldWidth: 45,
                              autoFocus: true,
                              fieldStyle: FieldStyle.box,
                              keyboardType: TextInputType.number,
                              outlineBorderRadius: 5,
                              style: TextStyles.bodyMedium(context),
                              onChanged: (pin) {
                                print("Changed: $pin");
                              },
                              onCompleted: (pin) {
                                print("Completed: $pin");
                                setState(() {
                                  otp = pin;
                                });
                              },
                            ),
                          ),
                        ),
                        myDuration.inSeconds != 0
                            ? Text(
                                ('request_otp'.tr).replaceAll(
                                    '#Secs#', '${myDuration.inSeconds}'),
                                style: TextStyles.bodyMedium(context),
                              )
                            : TextButton(
                                onPressed: () {
                                  Get.find<AuthController>().resendOtp();
                                  // BlocProvider.of<OtpCubit>(context)
                                  //     .reSendOtp();
                                  resetTimer();
                                },
                                child: Text(
                                  "Resend Otp".tr,
                                  style: TextStyles.bodyMedium(context),
                                )),
                        const Gap(10),
                        CustomButton(
                          // color: Colors.white,
                          glow:
                              (otp != null && otp?.length == 6) ? true : false,
                          title: ('verify_otp'.tr),
                          onTap: () {
                            if ((otp != null && otp?.length == 6)) {
                              Get.find<AuthController>().verifyOtp(otp!);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            isMobile(context)
                ? Container()
                : Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: double.infinity,
                      child: Image.asset(
                        "assets/images/warehouse in 2.png",
                        fit: BoxFit.cover,
                      ),
                    ))
          ],
        ),
      ),
    );
  }
}
