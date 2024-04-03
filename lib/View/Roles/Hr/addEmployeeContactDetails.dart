import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Roles/Hr/constants/validations.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonButtons.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonDropDown.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonTextField.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';

@RoutePage()
class AddEmployeeContactDetails extends StatefulWidget {
  const AddEmployeeContactDetails({super.key});

  @override
  State<AddEmployeeContactDetails> createState() =>
      _AddEmployeeContactDetailsState();
}

class _AddEmployeeContactDetailsState extends State<AddEmployeeContactDetails> {
  final _formKey = GlobalKey<FormState>();
  DateTime? _selectedDate;
  bool _isCheckedPassportYes = false;
  bool _isCheckedPassportNo = false;
  final bool _isCheckedDisablityYes = false;
  final bool _isCheckedDisablityNo = false;

  List<String> languageDataList = [
    'Hindi',
    'English',
    'Marathi',
    'Tamil',
    'Telegu',
  ];
  String? selectedLanguage = "Hindi";
  String _mobileNumber = '';
  String _contactName = '';
  String _address = '';
  String _state = '';
  String _pincode = '';
  String _city = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
 floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: context.isPhone
            ? CommonNextButton(
                title: 'next'.tr,
                onTap: (){
                   if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                        
                      }
                },
              )
            : Container().paddingSymmetric(horizontal: 12),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
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
                        padding: const EdgeInsets.all(20),
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          spacing: 20,
                          runSpacing: 20,
                          children: [
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
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "State",
                              hintText: "State",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your State.';
                                }

                                if (!HrModuleValidator.isValidState(value)) {
                                  return 'Please enter a valid State.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _state = value;
                              },
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "City",
                              hintText: "City ",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your city.';
                                }

                                if (!HrModuleValidator.isValidCity(value)) {
                                  return 'Please enter a valid city.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _city = value;
                              },
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "Pincode",
                              hintText: "Pincode",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your Pincode.';
                                }

                                if (!HrModuleValidator.isValidPincode(value)) {
                                  return 'Please enter a valid Pincode.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _pincode = value;
                              },
                            ).paddingAll(8),
                            Container(
                              constraints: context.isPhone
                                  ? null
                                  : const BoxConstraints(maxWidth: 520),
                              child: context.isPhone
                                  ? Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                            'Can your mailing address be different from residence?',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                            )).paddingOnly(top: 5),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: _isCheckedPassportYes,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      _isCheckedPassportYes =
                                                          value!;
                                                    });
                                                  },
                                                ),
                                                const Text('Yes',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                    ))
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: _isCheckedPassportNo,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      _isCheckedPassportNo =
                                                          value!;
                                                    });
                                                  },
                                                ),
                                                const Text('No',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                    ))
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  : Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                            'Can your mailing address be different from residence?',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                            )).paddingOnly(top: 5),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: _isCheckedPassportYes,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      _isCheckedPassportYes =
                                                          value!;
                                                    });
                                                  },
                                                ),
                                                const Text('Yes',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                    ))
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: _isCheckedPassportNo,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      _isCheckedPassportNo =
                                                          value!;
                                                    });
                                                  },
                                                ),
                                                const Text('No',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                    ))
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                            ),
                            Container(
                              constraints: context.isPhone
                                  ? null
                                  : const BoxConstraints(maxWidth: 500),
                            ),
                            CommanTextField(
                              labelText: "Emergency Contact Number",
                              hintText: "",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your contact number.';
                                }

                                if (!HrModuleValidator.isValidMobileNumber(
                                    value)) {
                                  return 'Please enter a valid contact number.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _mobileNumber = value;
                              },
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "Emergency Contact Name",
                              hintText: "",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your contact name.';
                                }

                                if (!HrModuleValidator.isValidUsername(value)) {
                                  return 'Please enter a valid contact name.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _contactName = value;
                              },
                            ).paddingAll(8),
                            CommomDropDown(
                              labelText: "Languages",
                              list: languageDataList,
                              onChanged: (v) {
                                setState(() {
                                  selectedLanguage = v;
                                });
                              },
                              selectedValue: selectedLanguage,
                              hintText: 'Select Language',
                            ),
                            Container(
                              constraints: context.isPhone
                                  ? null
                                  : const BoxConstraints(maxWidth: 500),
                            ),
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
                                'Contact Details',
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
                          title: 'Previous',
                          onTap: () {
                            context.back();
                          },
                        ),
                        const Gap(20),
                        CommonNextButton(
                          title: 'next'.tr,
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();

                              // print('Valid email: $_email');
                            }

                            context.pushRoute(const AddEmployeeCareerDetails());
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
