import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Roles/Hr/constants/validations.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonButtons.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonTextField.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';

@RoutePage()
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
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Stack(alignment: Alignment.topLeft, children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: context.isPhone
                                  ? Colors.transparent
                                  : Colors.black,
                              width: 2)),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 60.0, top: 20, bottom: 20, right: 20),
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          spacing: 20,
                          runSpacing: 20,
                          children: [
                            CommanTextField(
                              labelText: "Referee Name",
                              hintText: "Referee Name",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your referee name.';
                                }

                                if (!HrModuleValidator.isValidUsername(value)) {
                                  return 'Please enter a valid referee name.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _refereeName = value;
                              },
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "Company",
                              hintText: "Company",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your company name.';
                                }

                                if (!HrModuleValidator.isValidUsername(value)) {
                                  return 'Please enter a valid company name.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _companyName = value;
                              },
                            ).paddingAll(2),
                            CommanTextField(
                              labelText: "Address",
                              hintText: "Address",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your address';
                                }

                                if (!HrModuleValidator.isValidAddress(value)) {
                                  return 'Please enter a valid address.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _address = value;
                              },
                            ).paddingAll(2),
                            CommanTextField(
                              labelText: "Designation",
                              hintText: "Designation",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your designation.';
                                }

                                if (!HrModuleValidator.isValidUsername(value)) {
                                  return 'Please enter a valid designation.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _designation = value;
                              },
                            ).paddingAll(2),
                            CommanTextField(
                              labelText: "Mobile Number",
                              hintText: "Mobile Number",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your mobile number.';
                                }

                                if (!HrModuleValidator.isValidMobileNumber(
                                    value)) {
                                  return 'Please enter a valid mobile number.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _mobileNumber = value;
                              },
                            ).paddingAll(2),
                            CommanTextField(
                              labelText: "Email ID",
                              hintText: "Email ID",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email address';
                                }

                                if (!HrModuleValidator.isValidEmail(value)) {
                                  return 'Please enter a valid email address';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _email = value;
                              },
                            ).paddingAll(8),
                            // Row(
                            //   children: [
                            //     SizedBox(
                            //       width: 28.39,
                            //       height: 28.39,
                            //       child: Stack(
                            //         children: [
                            //           Positioned(
                            //             left: 0,
                            //             top: 0,
                            //             child: Container(
                            //               width: 28.39,
                            //               height: 28.39,
                            //               decoration: const ShapeDecoration(
                            //                 color: Colors.black,
                            //                 shape: OvalBorder(),
                            //               ),
                            //               child: const Icon(
                            //                 Icons.add,
                            //                 color: Colors.white,
                            //               ),
                            //             ),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //     const Gap(5),
                            //     const Text(
                            //       'Add More',
                            //       style: TextStyle(
                            //         color: Colors.black,
                            //         fontSize: 18.03,
                            //         fontFamily: 'Nunito',
                            //         fontWeight: FontWeight.w700,
                            //         height: 0,
                            //       ),
                            //     )
                            //   ],
                            // ).paddingOnly(left: 50),
                          ],
                        ),
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
                            )).paddingOnly(left: 80),
                  ]),
                  if (!context.isPhone)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonPreviousButton(
                          onTap: () {
                            context.back();
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
                            context.pushRoute(const AddEmployeeBankDetails());
                          },
                        ),
                      ],
                    ).paddingAll(20)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
