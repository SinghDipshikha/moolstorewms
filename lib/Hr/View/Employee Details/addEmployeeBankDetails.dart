import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/Model/addBankDetails.dart';
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
  String _accountName = '';
  String _accountNumber = '';
  String _bankName = '';
  String _ifscCode = '';
  String _accountType = '';
  final TextEditingController _accountNameController = TextEditingController();
  final TextEditingController _accountNumberController =
      TextEditingController();
  final TextEditingController _ifscCodeController = TextEditingController();
  final TextEditingController _bankNameController = TextEditingController();
  final TextEditingController _branchController = TextEditingController();
  final TextEditingController _accountTypeController = TextEditingController();
  final AddBankDetails _addBankDetails = const AddBankDetails();
  @override
  oninit() {
    int? userId = Get.find<HRController>().currentUserId;
  }

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
              //if (_formKey.currentState?.validate() ?? false) {
              hrController.addBankDetailsRequestModel =
                  hrController.addBankDetailsRequestModel.copyWith(
                id: hrController.currentUserId,
                user_id: hrController.currentUserId,
                updated_by: hrController.user.id,
                account_name: _accountNameController.text,
                account_no: _accountNumberController.text,
                ifsc_no: _ifscCodeController.text,
                bank_name: _bankNameController.text,
                account_type: _accountTypeController.text,
                branch_name: _branchController.text,
              );
              Logger().i(hrController.addCareerDetailsRequestModel.toJson());
              hrController.addBankDetails();

              //Get.to(const AddEmployeeDocumentsDetails(), id: hrNavigationKey);
              //  }
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
                            controller: _accountNameController,
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
                            onChanged: (value) {
                              _accountName = value;
                            },
                          ).paddingAll(2),
                          CommanTextField(
                            labelText: "Account Number",
                            hintText: "Account Number",
                            obscureText: false,
                            controller: _accountNumberController,
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
                            onChanged: (value) {
                              _accountNumber = value;
                            },
                          ).paddingAll(2),
                          CommanTextField(
                            labelText: "Bank Name",
                            hintText: "Bank Name",
                            obscureText: false,
                            controller: _bankNameController,
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
                            onChanged: (value) {
                              _bankName = value;
                            },
                          ).paddingAll(2),
                          CommanTextField(
                            labelText: "IFSC Number",
                            hintText: "IFSC Number",
                            obscureText: false,
                            controller: _ifscCodeController,
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
                            onChanged: (value) {
                              _ifscCode = value;
                            },
                          ).paddingAll(2),
                          CommanTextField(
                            labelText: "Account Type",
                            hintText: "Account Type",
                            obscureText: false,
                            controller: _accountTypeController,
                            inputFormatters:
                                GlobalValidator.accountTypeInputFormatter(),
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
      );
    });
  }
}
