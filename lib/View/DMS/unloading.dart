import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:moolwmsstore/Controller/userController.dart';
import 'package:moolwmsstore/View/base/customButton.dart';
import 'package:moolwmsstore/appConstants.dart';

bool securityVerified = false;
bool driverVerified = false;
final GlobalKey<VerfificationDialogState> gff = GlobalKey();

@RoutePage()
class Unloading extends StatefulWidget {
  const Unloading({Key? key}) : super(key: key);

  @override
  _UnloadingState createState() => _UnloadingState();
}

class _UnloadingState extends State<Unloading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Unloading",
          style: Theme.of(context).textTheme.bodyLarge!,
        ),
      ),
      body: ListView(children: [
        LottieBuilder.asset(
          "assets/images/unloading.json",
          height: 220,
          frameRate: FrameRate.max,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                width: 5,
                color: Colors.green,
                title: "Sample",
                glow: false,
                radius: 6,
              ),
            ),
            const Gap(10),
            Expanded(
              child: CustomButton(
                width: 5,
                color: Colors.red,
                title: "Damage",
                glow: false,
                radius: 6,
              ),
            ),
          ],
        ),
        const Gap(10),
        Column(
          children: List.generate(3, (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  padding: const EdgeInsets.all(12.0),
                  // height: 116,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      boxShadow: ColorConstants.boxShadow(context),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ghee Tin",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold),
                          ),
                          Container(
                            //   width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Theme.of(context).cardColor,
                                border: Border.all(
                                    width: 0.8,
                                    color: Theme.of(context).primaryColor)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    icon: Container(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .color,
                                      height: 2,
                                      width: 12,
                                    )),
                                Text(
                                  "22",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      Get.find<UserController>()
                                          .startCelebrate();
                                    },
                                    icon: const Icon(Icons.add))
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Weight",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          color: Theme.of(context).hintColor),
                                ),
                                Text(
                                  "12 Kg box",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          color: Theme.of(context).hintColor),
                                ),
                                Text(
                                  "10",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            );
          }),
        ),
        const Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              onTap: () {
                showDialog(
                    barrierColor: Theme.of(context).dialogBackgroundColor,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        contentPadding: EdgeInsets.zero,
                        content: VerfificationDialog(
                          key: gff,
                        ),
                      );
                    });
                // showBottomSheet(

                //     context: context,
                //     builder: (context) {
                //       return BottomSheet(
                //           onClosing: () {},
                //           builder: (context) {
                //             return Container(
                //               height: MediaQuery.sizeOf(context).height * 0.5,
                //               width: MediaQuery.sizeOf(context).width,
                //               color: Colors.amber,
                //             );
                //           });
                //     });
              },
              title: "Next",
              width: 200,
            ),
          ],
        ),
        const Gap(10),
      ]),
    );
  }
}

class VerfificationDialog extends StatefulWidget {
  const VerfificationDialog({Key? key}) : super(key: key);

  @override
  State<VerfificationDialog> createState() => VerfificationDialogState();
}

class VerfificationDialogState extends State<VerfificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(12)),
      height: MediaQuery.sizeOf(context).height * 0.6,
      width: MediaQuery.sizeOf(context).width,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Verification",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const Gap(10),
        const Expanded(
          child: Row(
            children: [
              Expanded(child: DriverVerification()),
              Expanded(child: SecurityGuardVerification()),
            ],
          ),
        ),
        const Gap(10),
        if (securityVerified == true && driverVerified == true)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButton(
                title: "Next",
                width: 200,
              ),
            ],
          ),
      ]),
    );
  }
}

class SecurityGuardVerification extends StatefulWidget {
  const SecurityGuardVerification({Key? key}) : super(key: key);

  @override
  _SecurityGuardVerificationState createState() =>
      _SecurityGuardVerificationState();
}

class _SecurityGuardVerificationState extends State<SecurityGuardVerification> {
  String vefificationState = "PENING";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: Builder(builder: (context) {
        if (vefificationState == "SUCCESS") {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Security Guard Verfification Successful",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Lottie.asset("assets/images/success.json",
                    height: 240, fit: BoxFit.cover),
              ],
            ),
          );
        }
        if (vefificationState == "OTP") {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Enter Security Guard verification code",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Lottie.asset("assets/images/otp.json",
                    height: 200, fit: BoxFit.cover),
                OtpTextField(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  fieldWidth: 80,
                  textStyle: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Theme.of(context).primaryColor),
                  numberOfFields: 6,
                  borderColor: Theme.of(context).primaryColor,
                  //   focusedBorderColor: accentPurpleColor,
                  //  styles: otpTextStyles,
                  showFieldAsBox: true,
                  borderWidth: 2.0,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here if necessary
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {},
                ),
                Text.rich(TextSpan(children: [
                  const TextSpan(text: "Din't get the verification code ? "),
                  TextSpan(
                      text: "Resend Code",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Theme.of(context).primaryColor))
                ])),
                CustomButton(
                  width: 200,
                  title: "Verify Otp",
                  onTap: () {
                    setState(() {
                      securityVerified = true;
                      gff.currentState!.setState(() {});
                      vefificationState = "SUCCESS";
                    });
                  },
                )
              ],
            ),
          );
        }
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Security Guard  Verification Pending",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Lottie.asset("assets/images/pending.json", height: 130),
              const Text("Otp will be sent to Security Guard 's Mobile Number"),
              CustomButton(
                width: 200,
                title: "Verify",
                onTap: () {
                  setState(() {
                    vefificationState = "OTP";
                  });
                },
              )
            ],
          ),
        );
      }),
    );
  }
}

class DriverVerification extends StatefulWidget {
  const DriverVerification({Key? key}) : super(key: key);

  @override
  _DriverVerificationState createState() => _DriverVerificationState();
}

class _DriverVerificationState extends State<DriverVerification> {
  String vefificationState = "PENING";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: Builder(builder: (context) {
        if (vefificationState == "SUCCESS") {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Driver Verfification Successful",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Lottie.asset("assets/images/success.json",
                    height: 240, fit: BoxFit.cover),
              ],
            ),
          );
        }
        if (vefificationState == "OTP") {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Enter Driver verification code",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Lottie.asset("assets/images/otp.json",
                    height: 200, fit: BoxFit.cover),
                OtpTextField(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  fieldWidth: 80,
                  textStyle: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Theme.of(context).primaryColor),
                  numberOfFields: 6,
                  borderColor: Theme.of(context).primaryColor,
                  //   focusedBorderColor: accentPurpleColor,
                  //  styles: otpTextStyles,
                  showFieldAsBox: true,
                  borderWidth: 2.0,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here if necessary
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {},
                ),
                Text.rich(TextSpan(children: [
                  const TextSpan(text: "Din't get the verification code ? "),
                  TextSpan(
                      text: "Resend Code",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Theme.of(context).primaryColor))
                ])),
                CustomButton(
                  width: 200,
                  title: "Verify Otp",
                  onTap: () {
                    setState(() {
                      driverVerified = true;
                      gff.currentState!.setState(() {});
                      vefificationState = "SUCCESS";
                    });
                  },
                )
              ],
            ),
          );
        }
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Driver Verification Pending",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Lottie.asset("assets/images/pending.json", height: 130),
              const Text("Otp will be sent to Driver's Mobile Number"),
              CustomButton(
                width: 200,
                title: "Verify",
                onTap: () {
                  setState(() {
                    vefificationState = "OTP";
                  });
                },
              )
            ],
          ),
        );
      }),
    );
  }
}
