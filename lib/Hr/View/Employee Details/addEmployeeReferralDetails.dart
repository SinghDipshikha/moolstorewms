//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/View/widget/commonAppBar.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/View/widget/commonTextField.dart';
import 'package:moolwmsstore/Hr/constants/validations.dart';
//import 'package:moolwmsstore/routes/approutes.gr.dart';

////@RoutePage()
class AddEmployeeReferralDetails extends StatefulWidget {
  const AddEmployeeReferralDetails({super.key});

  @override
  State<AddEmployeeReferralDetails> createState() =>
      _AddEmployeeReferralDetailsState();
}

class _AddEmployeeReferralDetailsState
    extends State<AddEmployeeReferralDetails> {
  @override
  final _formKey = GlobalKey<FormState>();
  String _mobileNumber = '';
  String _address = '';
  String _email = '';
  String _refereeName = '';
  String _companyName = '';
  String _designation = '';
  final TextEditingController _referralNameController = TextEditingController();
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _designationController = TextEditingController();
  final TextEditingController _mobileNumberContoller = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HRController>(builder: (hrController) {
      return Form(
        key: _formKey,
        child: Scaffold(
         appBar: AppBar(
          title: const Text(
            'Referral Details',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: CustomFloatingActionButton(
            title: 'Next',
            onTap: () {
              hrController.addReferralDetailRequestModel =
                  hrController.addReferralDetailRequestModel.copyWith();
              Logger().i(hrController.addReferralDetailRequestModel.toJson());
              hrController.addReferralDetails();

              print(hrController.addReferralDetailRequestModel);
            },
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: context.isPhone
                                ? Colors.transparent
                                : Colors.black,
                            width: 2)),
                    width: double.infinity,
                    child: Column(
                      children: [
                        CommanTextField(
                          labelText: "Referee Name",
                          hintText: "Referee Name",
                          obscureText: false,
                          controller: _referralNameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your referee name.';
                            }

                            if (!GlobalValidator.isValidUsername(value)) {
                              return 'Please enter a valid referee name.';
                            }

                            return null;
                          },
                          onChanged: (value) {
                            _refereeName = value;
                          },
                        ).paddingAll(10),
                        CommanTextField(
                          labelText: "Company",
                          hintText: "Company",
                          obscureText: false,
                          controller: _companyNameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your company name.';
                            }

                            if (!GlobalValidator.isValidUsername(value)) {
                              return 'Please enter a valid company name.';
                            }

                            return null;
                          },
                          onChanged: (value) {
                            _companyName = value;
                          },
                        ).paddingAll(10),
                        CommanTextField(
                          labelText: "Address",
                          hintText: "Address",
                          obscureText: false,
                          controller: _addressController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your address';
                            }

                            if (!GlobalValidator.isValidAddress(value)) {
                              return 'Please enter a valid address.';
                            }

                            return null;
                          },
                          onChanged: (value) {
                            _address = value;
                          },
                        ).paddingAll(10),
                        CommanTextField(
                          labelText: "Designation",
                          hintText: "Designation",
                          obscureText: false,
                          controller: _designationController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your designation.';
                            }

                            if (!GlobalValidator.isValidUsername(value)) {
                              return 'Please enter a valid designation.';
                            }

                            return null;
                          },
                          onChanged: (value) {
                            _designation = value;
                          },
                        ).paddingAll(10),
                        CommanTextField(
                          labelText: "Mobile Number",
                          hintText: "Mobile Number",
                          obscureText: false,
                          controller: _mobileNumberContoller,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your mobile number.';
                            }

                            if (!GlobalValidator.isValidMobileNumber(value)) {
                              return 'Please enter a valid mobile number.';
                            }

                            return null;
                          },
                          onChanged: (value) {
                            _mobileNumber = value;
                          },
                        ).paddingAll(10),
                        CommanTextField(
                          labelText: "Email ID",
                          hintText: "Email ID",
                          obscureText: false,
                          controller: _emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email address';
                            }

                            if (!GlobalValidator.isValidEmail(value)) {
                              return 'Please enter a valid email address';
                            }

                            return null;
                          },
                          onChanged: (value) {
                            _email = value;
                          },
                        ).paddingAll(10),
                      ],
                    ),
                  ).paddingAll(20),
                  context.isPhone
                      ? Container()
                      : Container(
                          color: const Color(0xFFF7F7F7),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0).copyWith(),
                            child: const Text(
                              'Referral Detail',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          )).paddingOnly(left: 100),
                  if (!context.isPhone)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonPreviousButton(
                          onTap: () {
                            // context.back();
                          },
                          title: 'Previous',
                        ),
                        const Gap(20),
                        CommonNextButton(
                          title: 'Next',
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                            }
                            //  context.pushRoute(const AddEmployeeBankDetails());
                          },
                        ),
                      ],
                    ).paddingAll(20)
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
