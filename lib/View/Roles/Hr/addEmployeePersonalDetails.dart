import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Roles/Hr/constants/validations.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonButtons.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonTextField.dart';

@RoutePage()
class AddEmployeePersonalDetails extends StatefulWidget {
  const AddEmployeePersonalDetails({super.key});

  @override
  State<AddEmployeePersonalDetails> createState() =>
      _AddEmployeePersonalDetailsState();
}

class _AddEmployeePersonalDetailsState
    extends State<AddEmployeePersonalDetails> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  String _email = '';
  String _mobileNumber = '';
  String _gaurdName = '';
  String _bloodGroup = '';
  String _gateId = '';
  final String _pfNumber = '';
  final String _esicNumber = '';
  String _passportNumber = '';

  DateTime? _selectedDate;
  bool _isCheckedPassportYes = false;
  bool _isCheckedPassportNo = false;
  bool _isCheckedDisablityYes = false;
  bool _isCheckedDisablityNo = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Widget x  = context.isPhone ? Column() : Row();

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

                        print('Valid email: $_email');
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
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "Guard Name",
                              hintText: "Guard Name",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your gaurd name.';
                                }

                                if (!HrModuleValidator.isValidUsername(value)) {
                                  return 'Please enter a valid gaurd name.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _gaurdName = value;
                              },
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "Gender",
                              hintText: "Gender ",
                              obscureText: false,
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "Date of Birth",
                              hintText: _selectedDate == null
                                  ? 'Choose your DOB'
                                  : _selectedDate.toString(),
                              suffixIcon: GestureDetector(
                                child: const Icon(Icons.calendar_month),
                                onTap: () {
                                  _selectDate(context);
                                },
                              ),
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "Blood Group",
                              hintText: "Blood Group",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your blood group.';
                                }

                                if (!HrModuleValidator.isValidBloodGroup(
                                    value)) {
                                  return 'Please enter a valid blood group.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _bloodGroup = value;
                              },
                            ).paddingAll(8),
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
                            CommanTextField(
                              labelText: "Gate ID",
                              hintText: "Gate ID",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your Gate Id';
                                }

                                if (!HrModuleValidator.isValidGateID(value)) {
                                  return 'Please enter a valid gate id.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _gateId = value;
                              },
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "PF Number",
                              hintText: "PF Number",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your PF Number.';
                                }

                                if (!HrModuleValidator.isValidPFNumber(value)) {
                                  return 'Please enter a valid PF Number.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _gateId = value;
                              },
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "ESIC Number",
                              hintText: "ESIC Number",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your ESIC Number';
                                }

                                if (!HrModuleValidator.isValidGateID(value)) {
                                  return 'Please enter a valid ESIC Number.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _gateId = value;
                              },
                            ).paddingAll(8),
                            Container(
                              constraints: context.isPhone
                                  ? null
                                  : const BoxConstraints(maxWidth: 500),
                            ),
                            Container(
                              constraints: context.isPhone
                                  ? null
                                  : const BoxConstraints(maxWidth: 520),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Do you have Passport?',
                                    style: TextStyle(fontSize: 16.0),
                                  ).paddingOnly(top: 5),
                                  Checkbox(
                                    value: _isCheckedPassportYes,
                                    onChanged: (value) {
                                      setState(() {
                                        _isCheckedPassportYes = value!;
                                      });
                                    },
                                  ),
                                  Checkbox(
                                    value: _isCheckedPassportNo,
                                    onChanged: (value) {
                                      setState(() {
                                        _isCheckedPassportNo = value!;
                                      });
                                    },
                                  ),
                                ],
                              ).paddingAll(8),
                            ),
                            Container(
                              constraints: context.isPhone
                                  ? null
                                  : const BoxConstraints(maxWidth: 500),
                            ),
                            CommanTextField(
                              labelText: "Passport Number",
                              hintText: "Passport Number",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your Passport Number.';
                                }

                                if (!HrModuleValidator.isValidPassportNumber(
                                    value)) {
                                  return 'Please enter a valid passport number.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _passportNumber = value;
                              },
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "Expiry Date",
                              hintText: _selectedDate == null
                                  ? 'No Date Selected'
                                  : _selectedDate.toString(),
                              suffixIcon: GestureDetector(
                                child: const Icon(Icons.calendar_month),
                                onTap: () {
                                  _selectDate(context);
                                },
                              ),
                              obscureText: false,
                            ).paddingAll(8),
                            Container(
                              constraints: context.isPhone
                                  ? null
                                  : const BoxConstraints(maxWidth: 520),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Do you have any Disability?',
                                    style: TextStyle(fontSize: 16.0),
                                  ).paddingOnly(top: 5),
                                  Checkbox(
                                    value: _isCheckedDisablityYes,
                                    onChanged: (value) {
                                      setState(() {
                                        _isCheckedDisablityYes = value!;
                                      });
                                    },
                                  ),
                                  Checkbox(
                                    value: _isCheckedDisablityNo,
                                    onChanged: (value) {
                                      setState(() {
                                        _isCheckedDisablityNo = value!;
                                      });
                                    },
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
                              labelText: "Description",
                              hintText: "Description",
                              obscureText: false,
                            ).paddingAll(8),
                            Container(
                              constraints: context.isPhone
                                  ? null
                                  : const BoxConstraints(maxWidth: 520),
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
                                'Personal Details',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            )).paddingOnly(left: 80),
                  ]),
                  
            if(!context.isPhone)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [   CommonPreviousButton(
                    title: 'Previous',
                  ),
                  const Gap(20),
                  CommonNextButton(
                    title: 'next'.tr,
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                        print('Valid email: $_email');
                      }
                    },
                  ),],
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
