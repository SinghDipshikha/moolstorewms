import 'package:auto_route/auto_route.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/authController.dart';
import 'package:moolwmsstore/View/auth/OtpScreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(body: GetBuilder<AuthController>(
      builder: (xx) {
        return SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(

                              //  color: const Color(0xFFFD578A),
                              fontSize: 48,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w700,
                              height: 1,
                              foreground: Paint()
                                ..shader = const LinearGradient(
                                  colors: <Color>[
                                    Color(0xffDA44bb),
                                    Color(0xff8921aa)
                                  ],
                                ).createShader(const Rect.fromLTWH(
                                    0.0, 0.0, 200.0, 70.0))),
                        ),
                        const Gap(5),
                        Image.asset(
                          "assets/icons/waving 1.png",
                          height: 34,
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Gap(5),
                        Text(
                          'Log into your account!',
                          style: TextStyle(
                            color: Color(0xFFA6A6A6),
                            fontSize: 20,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/28_Hand with phone (1) 1.png",
                            height: 140,
                          ),
                        ],
                      ),
                    ),
                    //   const Spacer(),
                    const Gap(12),
                    const Text(
                      'Enter Your Mobile Number',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        // fontFamily: 'Aileron',
                        fontWeight: FontWeight.w600,
                        height: 0.10,
                        letterSpacing: 0.36,
                      ),
                    ),
                    const Gap(4),
                    const Text(
                      'You will receive an OTP',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF717171),
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        // height: 0.08,
                        letterSpacing: 0.32,
                      ),
                    ),
                    TextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                      ],
                      // keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        prefixIcon: CountryCodePicker(
                          onChanged: (x) {
                            if (x.code != null) {
                              countryCode = x.code!;
                            }
                          },
                          initialSelection: 'IN',
                          favorite: const ['+91', 'IN'],

                          // showCountryOnly: true,
                          // showOnlyCountryWhenClosed: true,
                          alignLeft: false,
                        ),
                      ),
                    ).paddingSymmetric(vertical: 20),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Get.to(const OtpScreen());
                  },
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
                      'Request OTP',
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
                  ),
                ),
                SmoothPageIndicator(
                        controller: pageController, // PageController
                        count: 3,
                        effect: const WormEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          dotColor: Color.fromARGB(255, 212, 212, 226),
                          activeDotColor: Color(0xFF5C57FE),
                        ), // your preferred effect
                        onDotClicked: (index) {})
                    .paddingSymmetric(vertical: 20),
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
            ).paddingSymmetric(horizontal: 20, vertical: 40),
          ),
        );
      },
    ));
  }
}
/*
  return SafeArea(
          child: SizedBox(
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
                        //  mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Welcome',
                            style: TextStyle(
                              color: Color(0xFFFD578A),
                              fontSize: 48,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          // Container(
                          //   constraints: const BoxConstraints(maxWidth: 600),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       Image.asset(
                          //         "assets/icons/ic_logo.png",
                          //         height:
                          //             0.08 * MediaQuery.sizeOf(context).height,
                          //         width: context.isPhone
                          //             ? 0.05 * MediaQuery.sizeOf(context).width
                          //             : null,
                          //       ),
                          //       const ChangeLangButton()
                          //     ],
                          //   ),
                          // ),
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
                            glow:
                                (controller!.text.length >= 10) ? true : false,
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
                context.isPhone
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
          ),
        );

*/
