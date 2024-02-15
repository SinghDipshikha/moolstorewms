import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/common/customButton.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';

@RoutePage()
class VerifyOtp extends StatefulWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  _VerifyOtpState createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  Color accentPurpleColor = const Color(0xFF6A53A1);
  Color primaryColor = const Color(0xFF121212);
  Color accentPinkColor = const Color(0xFFF99BBD);
  Color accentDarkGreenColor = const Color(0xFF115C49);
  Color accentYellowColor = const Color(0xFFFFB612);
  Color accentOrangeColor = const Color(0xFFEA7A3B);

  TextStyle? createStyle(Color color) {
    ThemeData theme = Theme.of(context);
    return theme.textTheme.displaySmall?.copyWith(color: color);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        Text(
            'please_enter_verification_code_sent_to'.tr.replaceAll(
                '#PhoneNo#', ""
                // "+${widget.mobileNo.countryCode.dialingCode} - ${widget.mobileNo.number} ${!widget.personName.isEmptyOrNull ? '${widget.personName}' : ''}"
                ),
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.grey)),
        // const SizedBox(height: 8),
        OtpTextField(
          textStyle: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Theme.of(context).primaryColor),
          numberOfFields: 6,
          borderColor: Theme.of(context).primaryColor,
          //   focusedBorderColor: accentPurpleColor,
          //  styles: otpTextStyles,
          showFieldAsBox: false,
          borderWidth: 4.0,
          //runs when a code is typed in
          onCodeChanged: (String code) {
            //handle validation or checks here if necessary
          },
          //runs when every textfield is filled
          onSubmit: (String verificationCode) {},
        ),
        const Gap(28),
        CustomButton(
          onTap: () {
            context.pushRoute(MobileWebBodyRoute());
            // Get.to(const SelectUsage());
            // Get.dialog(
            //   Container(
            //       decoration:
            //           BoxDecoration(borderRadius: BorderRadius.circular(12)),
            //       height: MediaQuery.sizeOf(context).height * 0.5,
            //       width: MediaQuery.sizeOf(context).width * 0.8,
            //       child: const SelectUsage()),
            //   barrierDismissible: true,
            // );
            //  Get.to(const GMSDashboard());
            // setState(() {
            //   //  isOtp = true;
            // });
          },
          title: 'verify'.tr,
          width: 200,
        )
      ],
    );
  }
}
