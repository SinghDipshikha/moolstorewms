import 'package:auto_route/auto_route.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/authController.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/changeLangButton.dart';
import 'package:moolwmsstore/View/common/customButton.dart';
import 'package:moolwmsstore/View/common/myTextField.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

/*  if (state is OtpSentSuccess) {
          AnimatedSnackBar.material(
            "One Time Password has been sent successfully.",
            type: AnimatedSnackBarType.success,
          ).show(context);
          context.pushReplacement('/otpVerification');
        }
        if (state is OtpSentFailed) {
          AnimatedSnackBar.material(
            'Cannot send otp to this number',
            type: AnimatedSnackBarType.error,
          ).show(context);
  
        } */
@RoutePage()
class PhoneSign extends StatefulWidget {
  const PhoneSign({super.key});

  @override
  _PhoneSignState createState() => _PhoneSignState();
}

class _PhoneSignState extends State<PhoneSign> {
  String countryCode = "+91";
  TextEditingController? controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GetBuilder<AuthController>(
      builder: (xx) {
        return SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Center(
                  child: Container(
                    //  constraints: const BoxConstraints(maxHeight: 360),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          constraints: const BoxConstraints(maxWidth: 600),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/icons/ic_logo.png",
                                height: 8.h,
                                width: isMobile(context) ? 50.w : null,
                              ),
                              const ChangeLangButton()
                            ],
                          ),
                        ),
                        Text(
                          ('welcome'.tr),
                          style: TextStyles.titleMedium(context),
                        ),
                        Text(
                          ("enter_mobile_no_for_login".tr),
                          style: TextStyles.bodyMedium(context),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Container(
                            constraints: const BoxConstraints(
                                minWidth: 200, maxWidth: 520),
                            child: MyTextField(
                                onChanged: (p0) {
                                  setState(() {});
                                },
                                controller: controller,
                                prefixIcon: CountryCodePicker(
                                  onChanged: (x) {
                                    if (x.code != null) {
                                      countryCode = x.code!;
                                    }
                                  },
                                  initialSelection: 'IN',
                                  favorite: const ['+91', 'IN'],
                                  showCountryOnly: false,
                                  showOnlyCountryWhenClosed: false,
                                  alignLeft: false,
                                ),
                                labelText: ("enter_mobile_no_for_login".tr)),
                          ),
                        ),
                        const Gap(10),
                        CustomButton(
                          glow: (controller!.text.length >= 10) ? true : false,
                          title: ('get_otp'.tr),
                          onTap: () {
                            if ((controller!.text.length >= 10)) {
                              Get.find<AuthController>()
                                  .sendOtp(countryCode + controller!.text);
                              // BlocProvider.of<OtpCubit>(context)
                              //     .sendOtp(countryCode + controller!.text);
                            }
                          },
                        ),
                      ],
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
                          "assets/images/warehouse in 1.png",
                          fit: BoxFit.cover,
                        ),
                      ))
            ],
          ),
        );
      },
    ));
  }
}
