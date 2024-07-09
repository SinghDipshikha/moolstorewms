import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/View/widget/commonTextField.dart';
import 'package:moolwmsstore/Hr/constants/validations.dart';

////@RoutePage()
class AddEmployeeBankDetails extends StatefulWidget {
  const AddEmployeeBankDetails({super.key});

  @override
  State<AddEmployeeBankDetails> createState() => _AddEmployeeBankDetailsState();
}

class _AddEmployeeBankDetailsState extends State<AddEmployeeBankDetails> {
  @override
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HRController>(builder: (hrController) {
      return Form(
        key: _formKey,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Bank Details',
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
              if (_formKey.currentState?.validate() ?? false) {
                hrController.addUserBankDetails();
              }
            },
          ),
          body: SingleChildScrollView(
            child: Center(
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
                      child: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        spacing: 20,
                        runSpacing: 20,
                        children: [
                          CommanTextField(
                            labelText: "Account Name",
                            hintText: "Account Name ",
                            obscureText: false,
                            inputFormatters:
                                GlobalValidator.accountNameInputFormatter(),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your account name.';
                              }

                              if (!GlobalValidator.isValidAccountName(value)) {
                                return 'Please enter a account name.';
                              }

                              return null;
                            },
                            onChanged: (p0) {
                              hrController.addBankDetails = hrController
                                  .addBankDetails
                                  .copyWith(account_name: p0);
                            },
                          ).paddingAll(2),
                          CommanTextField(
                            labelText: "Account Number",
                            hintText: "Account Number",
                            obscureText: false,
                            inputFormatters:
                                GlobalValidator.accountNumberInputFormatter(),
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
                            onChanged: (p0) {
                              hrController.addBankDetails = hrController
                                  .addBankDetails
                                  .copyWith(account_no: p0);
                            },
                          ).paddingAll(2),
                          CommanTextField(
                            labelText: "Bank Name",
                            hintText: "Bank Name",
                            obscureText: false,
                            inputFormatters:
                                GlobalValidator.bankNameInputFormatter(),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your bank name';
                              }

                              if (!GlobalValidator.isValidBankName(value)) {
                                return 'Please enter a bank name.';
                              }

                              return null;
                            },
                            onChanged: (p0) {
                              hrController.addBankDetails = hrController
                                  .addBankDetails
                                  .copyWith(branch_name: p0);
                            },
                          ).paddingAll(2),
                          CommanTextField(
                            labelText: "IFSC Number",
                            hintText: "IFSC Number",
                            obscureText: false,
                            inputFormatters:
                                GlobalValidator.ifscCodeInputFormatter(),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your ifsc code.';
                              }

                              if (!GlobalValidator.isValidIFSCCode(value)) {
                                return 'Please enter a ifsc code.';
                              }

                              return null;
                            },
                            onChanged: (p0) {
                              hrController.addBankDetails = hrController
                                  .addBankDetails
                                  .copyWith(ifsc_no: p0);
                            },
                          ).paddingAll(2),
                          CommanTextField(
                            labelText: "Account Type",
                            hintText: "Account Type",
                            obscureText: false,
                            inputFormatters:
                                GlobalValidator.accountTypeInputFormatter(),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your account type.';
                              }

                              if (!GlobalValidator.isValidAccountType(value)) {
                                return 'Please enter a account type.';
                              }

                              return null;
                            },
                            onChanged: (p0) {
                              hrController.addBankDetails = hrController
                                  .addBankDetails
                                  .copyWith(account_type: p0);
                            },
                          ).paddingAll(2),
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
                                'Bank Details',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            )).paddingOnly(left: 80),
                  ]),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
