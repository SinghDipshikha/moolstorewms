import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Controllers/authController.dart';
import 'package:moolwmsstore/Owner/View/Common/commonTextField.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';

class OrganisationCode extends StatelessWidget {
  OrganisationCode({super.key});
  TextEditingController? controller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: GetBuilder<AuthController>(builder: (authController) {
        return Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Select User Type',
                style: TextStyle(
                  color: Color(0xFF5A57FF),
                  fontSize: 24,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Gap(26),
              authController.selectedPersonType == "EMP"
                  ? Column(
                      children: [
                        InkWell(
                          onTap: () {
                            authController.selectedPersonType = "EMP";
                            authController.update();
                          },
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              CircleAvatar(
                                backgroundColor: AppColors.primaryColor,
                                radius: 94,
                                child: const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 90,
                                  foregroundImage: AssetImage(
                                      "assets/icons/employeeAvater.png"),
                                ),
                              ),
                              Image.asset(
                                "assets/icons/Selected Check(R).png",
                                height: 50,
                              )
                            ],
                          ),
                        ),
                        const Text(
                          'Employee',
                          style: TextStyle(
                            color: Color(0xFF5A57FF),
                            fontSize: 24,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  : InkWell(
                      onTap: () {
                        authController.selectedPersonType = "EMP";
                        authController.update();
                      },
                      child: const Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 233, 233, 233),
                            radius: 94,
                            child: CircleAvatar(
                              foregroundColor:
                                  Color.fromARGB(255, 233, 233, 233),
                              backgroundColor:
                                  Color.fromARGB(255, 233, 233, 233),
                              radius: 90,
                              foregroundImage: AssetImage(
                                "assets/icons/employeeGreyAvater.png",
                              ),
                            ),
                          ),
                          Text(
                            'Employee',
                            style: TextStyle(
                              color: Color(0xFFACACAC),
                              fontSize: 24,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
              const Gap(22),
              authController.selectedPersonType == "CUS"
                  ? Column(
                      children: [
                        InkWell(
                          onTap: () {
                            authController.selectedPersonType = "CUS";
                            authController.update();
                          },
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              CircleAvatar(
                                backgroundColor: AppColors.primaryColor,
                                radius: 94,
                                child: const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 90,
                                  foregroundImage: AssetImage(
                                      "assets/icons/customerAvatar.png"),
                                ),
                              ),
                              Image.asset(
                                "assets/icons/Selected Check(R).png",
                                height: 50,
                              )
                            ],
                          ),
                        ),
                        const Text(
                          'Customer',
                          style: TextStyle(
                            color: Color(0xFF5A57FF),
                            fontSize: 24,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  : InkWell(
                      onTap: () {
                        authController.selectedPersonType = "CUS";
                        authController.update();
                      },
                      child: const Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 233, 233, 233),
                            radius: 94,
                            child: CircleAvatar(
                              foregroundColor:
                                  Color.fromARGB(255, 233, 233, 233),
                              backgroundColor:
                                  Color.fromARGB(255, 233, 233, 233),
                              radius: 90,
                              foregroundImage: AssetImage(
                                "assets/icons/customerGreyAvatar.png",
                              ),
                            ),
                          ),
                          Text(
                            'Customer',
                            style: TextStyle(
                              color: Color(0xFFACACAC),
                              fontSize: 24,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
              const Gap(22),
              CommonTextField(
                maxLines: 1,
                style: const TextStyle(
                  color: Color(0xFF5A57FF),
                  fontSize: 20,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                ),
                hintText: 'Enter organisation number',
                labelText: 'Organisation Code',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your organisation code.';
                  }

                  return null;
                },
                controller: controller,
                onFieldSubmitted: (value) {
                  FocusManager.instance.primaryFocus?.unfocus();
                  Get.find<AuthController>().checkOrganisationCode(
                      organiosationCodee: controller!.text.toString().trim());
                },
              ),
              const Gap(22),
              GetBuilder<AuthController>(builder: (authController) {
                return authController.loading
                    ? const Center(
                        child: SpinKitDoubleBounce(
                          color: Colors.white,
                        ),
                      )
                    : Center(
                        child: InkWell(
                          onTap: () {
                            if (formKey.currentState?.validate() ?? false) {
                              Get.find<AuthController>().checkOrganisationCode(
                                  organiosationCodee:
                                      controller!.text.toString());
                            }

                            //  Get.snackbar("cdhbdhcb", "dhbchd");
                            //  context.
                          },
                          child: Container(
                            alignment: Alignment.center,
                            // width: 358,
                            height: 45,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF5A57FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Next',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w600,
                                height: 0.12,
                                letterSpacing: 0.32,
                              ),
                            ),
                          ),
                        ),
                      );
              }),
            ],
          ).paddingSymmetric(
            horizontal: 20,
          ),
        );
      }),
    );
  }
}
