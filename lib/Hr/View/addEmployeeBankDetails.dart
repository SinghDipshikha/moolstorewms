import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/constants/validations.dart';
import 'package:moolwmsstore/Hr/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/widget/commonTextField.dart';

////@RoutePage()
class AddEmployeeBankDetails extends StatefulWidget {
  const AddEmployeeBankDetails({super.key});

  @override
  State<AddEmployeeBankDetails> createState() => _AddEmployeeBankDetailsState();
}

class _AddEmployeeBankDetailsState extends State<AddEmployeeBankDetails> {
  @override
  final _formKey = GlobalKey<FormState>();
  String _accountName = '';
  String _accountNumber = '';
  String _bankName = '';
  String _ifscCode = '';
  String _accountType = '';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: context.isPhone
            ? CommonNextButton(
                title: 'next'.tr,
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
              )
            : Container().paddingSymmetric(horizontal: 12),
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
                            left: 40.0, top: 20, bottom: 20, right: 20),
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          spacing: 20,
                          runSpacing: 20,
                          children: [
                            CommanTextField(
                              labelText: "Account Name",
                              hintText: "Account Name ",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your account name.';
                                }

                                if (!GlobalValidator.isValidAccountName(
                                    value)) {
                                  return 'Please enter a account name.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _accountName = value;
                              },
                            ).paddingAll(2),
                            CommanTextField(
                              labelText: "Account Number",
                              hintText: "Account Number",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your account number.';
                                }

                                if (!GlobalValidator.isValidAccountNumber(
                                    value)) {
                                  return 'Please enter a account number.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _accountNumber = value;
                              },
                            ).paddingAll(2),
                            CommanTextField(
                              labelText: "Bank Name",
                              hintText: "Bank Name",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your bank name';
                                }

                                if (!GlobalValidator.isValidBankName(value)) {
                                  return 'Please enter a bank name.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _bankName = value;
                              },
                            ).paddingAll(2),
                            CommanTextField(
                              labelText: "IFSC Number",
                              hintText: "IFSC Number",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your ifsc code.';
                                }

                                if (!GlobalValidator.isValidIFSCCode(value)) {
                                  return 'Please enter a ifsc code.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _ifscCode = value;
                              },
                            ).paddingAll(2),
                            CommanTextField(
                              labelText: "Account Type",
                              hintText: "Account Type",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your account type.';
                                }

                                if (!GlobalValidator.isValidMonthlySalary(
                                    value)) {
                                  return 'Please enter a account type.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _accountType = value;
                              },
                            ).paddingAll(2),
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
                                'Bank Details',
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
                        ),
                        const Gap(20),
                        CommonNextButton(
                          title: 'Next',
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                            }
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
