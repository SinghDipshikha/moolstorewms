

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Auth/Controllers/authController.dart';
import 'package:moolwmsstore/Auth/widgets/commonTextField.dart';
import 'package:moolwmsstore/Hr/constants/validations.dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController ogn = TextEditingController();
  TextEditingController ognAdress = TextEditingController();
  TextEditingController pan = TextEditingController();
  TextEditingController fn = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Gap(20),
              Column(
                children: [
                  TagContainer(
                      title: 'Personal Information',
                      child: Column(
                        children: [
                          CommonTextField(
                            controller: ogn,
                            textCapitalization: TextCapitalization.words,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Organisation name.';
                              }

                              return null;
                            },
                            //   inputFormatters: [ FilteringTextInputFormatter.allow(RegExp('[0-9]')),],
                            labelText: 'Organisation Name',
                            hintText: 'Enter your organisation’s name',
                          ),
                          const Gap(16),
                          CommonTextField(
                            controller: ognAdress,
                            textCapitalization: TextCapitalization.words,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Organisation name.';
                              }

                              return null;
                            },
                            //   inputFormatters: [ FilteringTextInputFormatter.allow(RegExp('[0-9]')),],
                            labelText: 'Company Adress',
                            hintText: 'Enter your Company Adress',
                          ),
                          const Gap(16),
                          CommonTextField(
                            controller: pan,
                            textCapitalization: TextCapitalization.characters,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter PAN';
                              }

                              if (!GlobalValidator.isValidPAN(value)) {
                                return 'Please enter a valid PAN.';
                              }

                              return null;
                            },
                            //  validator: ,
                            // inputFormatters: [
                            //   FilteringTextInputFormatter.allow(
                            //       RegExp(r"^[A-Z]{5}[0-9]{4}[A-Z]{1}$"))
                            // ],
                            labelText: "PAN Number",
                            hintText: "Enter PAN number",
                          ),
                          const Gap(16),
                        ],
                      ).paddingSymmetric(vertical: 16, horizontal: 16)),
                  const Gap(22),
                  TagContainer(
                      title: 'Personal Information',
                      child: Column(
                        children: [
                          CommonTextField(
                            controller: fn,
                            textCapitalization: TextCapitalization.words,
                            labelText: "Full Name",
                            hintText: "Enter full name",
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your name.';
                              }

                              return null;
                            },
                            onChanged: (value) {},
                          ),
                          const Gap(16),
                          // CommonTextField(
                          //   keyboardType: TextInputType.phone,
                          //   inputFormatters: [
                          //     FilteringTextInputFormatter.allow(
                          //         RegExp('[0-9]')),
                          //   ],
                          //   labelText: "Mobile Number",
                          //   hintText: "Enter mobile number",
                          //   validator: (value) {
                          //     if (value!.isEmpty) {
                          //       return 'Please enter your mobile number.';
                          //     }

                          //     if (!GlobalValidator.isValidMobileNumber(value)) {
                          //       return 'Please enter a valid mobile number.';
                          //     }

                          //     return null;
                          //   },
                          //   onChanged: (value) {},
                          // ),
                          //  const Gap(16),
                          CommonTextField(
                            controller: email,
                            inputFormatters: const [],
                            labelText: "Email ID",
                            hintText: "Enter email address",
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your email address';
                              }

                              if (!GlobalValidator.isValidEmail(value)) {
                                return 'Please enter a valid email address';
                              }

                              return null;
                            },
                            onChanged: (value) {},
                          ),
                          const Gap(16),
                        ],
                      ).paddingSymmetric(vertical: 16, horizontal: 16)),
                  const Gap(22),
                  GetBuilder<AuthController>(builder: (authController) {
                    return authController.loading
                        ? const SpinKitWave(
                            color: Color(0xFF5A57FF),
                          )
                        : InkWell(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                authController.sigupOrg(
                                    pan: pan.text,
                                    email: email.text,
                                    company_name: ogn.text,
                                    company_address: ognAdress.text,
                                    name: fn.text);
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 45,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment(1.00, 0.00),
                                  end: Alignment(-1, 0),
                                  colors: [
                                    Color(0xFF2D2D2D),
                                    Color(0xFF1F1F1F)
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: const Text(
                                'Submit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w600,
                                  //height: 0,
                                  letterSpacing: 0.32,
                                ),
                              ),
                            ),
                          ).paddingSymmetric(horizontal: 12);
                  })
                ],
              )
            ],
          ).paddingSymmetric(vertical: 8, horizontal: 20),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton:
      appBar: AppBar(
        title: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
