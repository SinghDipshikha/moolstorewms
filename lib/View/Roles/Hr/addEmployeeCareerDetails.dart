import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/hrController.dart';
import 'package:moolwmsstore/Data/Model/Hr/addCareerDetail.dart';
import 'package:moolwmsstore/View/Roles/Hr/constants/validations.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonButtons.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonTextField.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';

@RoutePage()
class AddEmployeeCareerDetails extends StatefulWidget {
  const AddEmployeeCareerDetails({super.key});

  @override
  State<AddEmployeeCareerDetails> createState() =>
      _AddEmployeeCareerDetailsState();
}

class _AddEmployeeCareerDetailsState extends State<AddEmployeeCareerDetails> {
  DateTime? _selectedDate;
  final bool _isCheckedPassportYes = false;
  final bool _isCheckedPassportNo = false;
  final bool _isCheckedDisablityYes = false;
  final bool _isCheckedDisablityNo = false;
  String _monthlySalary = '';
  String _currentSalary = '';
  String _employerName = '';

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

  String? selectedLanguage = "Hindi";
  final _formKey = GlobalKey<FormState>();
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
              padding: const EdgeInsets.all(20.0),
              child: GetBuilder<HRController>(builder: (hRController) {
                hRController.carrierDetails;

                return Column(
                  children: [
                    ListView.builder(
                        itemCount: hRController.carrierDetails.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, i) {
                          //  AddCareerDetail detail  = hRController.carrierDetails[i] ;
                          return Stack(alignment: Alignment.topLeft, children: [
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
                                    !context.isPhone
                                        ? Row(
                                            children: [
                                              Container(
                                                constraints: context.isPhone
                                                    ? null
                                                    : const BoxConstraints(
                                                        maxWidth: 180,
                                                        maxHeight: 35),
                                                clipBehavior: Clip.antiAlias,
                                                decoration: ShapeDecoration(
                                                  color: Colors.black,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    'EXPERIENCE',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontFamily: 'Nunito',
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      height: 0.06,
                                                    ),
                                                  ),
                                                ),
                                              ).paddingAll(8),
                                            ],
                                          )
                                        : const SizedBox(
                                            height: 50,
                                            width: double.infinity,
                                            child: Center(
                                              child: Text(
                                                'EXPERIENCE',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Nunito',
                                                  fontWeight: FontWeight.w800,
                                                  height: 0.06,
                                                ),
                                              ),
                                            ),
                                          ),
                                    CommanTextField(
                                      labelText: hRController.carrierDetails[i]
                                              .name_of_employer ??
                                          "Name of Employer",
                                      hintText: "Name of Employer",
                                      obscureText: false,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter your gaurd name.';
                                        }

                                        if (!GlobalValidator.isValidUsername(
                                            value)) {
                                          return 'Please enter a valid gaurd name.';
                                        }

                                        return null;
                                      },
                                      onChanged: (value) {
                                        _employerName = value;
                                        hRController.carrierDetails[0] =
                                            hRController.carrierDetails[0]
                                                .copyWith(
                                                    name_of_employer: value);
                                      },
                                    ).paddingAll(8),
                                    CommanTextField(
                                      labelText: "Designation",
                                      hintText: "Designation",
                                      obscureText: false,
                                    ).paddingAll(8),
                                    CommanTextField(
                                      labelText: "Reporting To",
                                      hintText: "Reporting To ",
                                      obscureText: false,
                                    ).paddingAll(8),
                                    Container(
                                      constraints: context.isPhone
                                          ? null
                                          : const BoxConstraints(maxWidth: 520),
                                    ),
                                    !context.isPhone
                                        ? Row(
                                            children: [
                                              Container(
                                                constraints: context.isPhone
                                                    ? null
                                                    : const BoxConstraints(
                                                        maxWidth: 200,
                                                        maxHeight: 35),
                                                clipBehavior: Clip.antiAlias,
                                                decoration: ShapeDecoration(
                                                  color: Colors.black,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    'EMPLOYMENT DATE',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontFamily: 'Nunito',
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      height: 0.06,
                                                    ),
                                                  ),
                                                ),
                                              ).paddingAll(8)
                                            ],
                                          )
                                        : const SizedBox(
                                            height: 50,
                                            width: double.infinity,
                                            child: Center(
                                              child: Text(
                                                'EMPLOYMENT DATE',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Nunito',
                                                  fontWeight: FontWeight.w800,
                                                  height: 0.06,
                                                ),
                                              ),
                                            ),
                                          ),
                                    CommanTextField(
                                      labelText: "From Date",
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
                                    CommanTextField(
                                      labelText: "To Date",
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
                                    !context.isPhone
                                        ? Row(
                                            children: [
                                              Container(
                                                constraints: context.isPhone
                                                    ? null
                                                    : const BoxConstraints(
                                                        maxWidth: 200,
                                                        maxHeight: 35),
                                                clipBehavior: Clip.antiAlias,
                                                decoration: ShapeDecoration(
                                                  color: Colors.black,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    'MONTHLY SALARY',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontFamily: 'Nunito',
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      height: 0.06,
                                                    ),
                                                  ),
                                                ),
                                              ).paddingAll(8),
                                            ],
                                          )
                                        : const SizedBox(
                                            height: 50,
                                            width: double.infinity,
                                            child: Center(
                                              child: Text(
                                                'MONTHLY SALARY',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Nunito',
                                                  fontWeight: FontWeight.w800,
                                                  height: 0.06,
                                                ),
                                              ),
                                            ),
                                          ),
                                    CommanTextField(
                                      labelText: "Start",
                                      hintText: "₹",
                                      obscureText: false,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter your monthly salary.';
                                        }

                                        if (!GlobalValidator
                                            .isValidMonthlySalary(value)) {
                                          return 'Please enter a monthly salary.';
                                        }

                                        return null;
                                      },
                                      onChanged: (value) {
                                        _monthlySalary = value;
                                      },
                                    ).paddingAll(8),
                                    CommanTextField(
                                      labelText: "Current/End",
                                      hintText: "₹",
                                      obscureText: false,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter your monthly salary.';
                                        }

                                        if (!GlobalValidator
                                            .isValidMonthlySalary(value)) {
                                          return 'Please enter a monthly salary.';
                                        }

                                        return null;
                                      },
                                      onChanged: (value) {
                                        _currentSalary = value;
                                      },
                                    ).paddingAll(8),
                                    InkWell(
                                      onTap: () {
                                        hRController.carrierDetails
                                            .add(const AddCareerDetail());
                                        hRController.update();
                                      },
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 28.39,
                                            height: 28.39,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Container(
                                                    width: 28.39,
                                                    height: 28.39,
                                                    decoration:
                                                        const ShapeDecoration(
                                                      color: Colors.black,
                                                      shape: OvalBorder(),
                                                    ),
                                                    child: const Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Gap(5),
                                          const Text(
                                            'Add More',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.03,
                                              fontFamily: 'Nunito',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            ),
                                          )
                                        ],
                                      ).paddingAll(8),
                                    )
                                  ],
                                ),
                              ),
                            ).paddingAll(20),
                            context.isPhone
                                ? Container()
                                : Container(
                                    color: const Color(0xFFF7F7F7),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.all(10.0).copyWith(),
                                      child: const Text(
                                        'Career Details',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )).paddingOnly(left: 80),
                          ]);
                        }),
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
                              // if (_formKey.currentState!.validate()) {
                              //   _formKey.currentState!.save();

                              //   // print('Valid email: $_email');
                              // }
                              context.pushRoute(
                                  const AddEmployeeReferralDetails());
                            },
                          ),
                        ],
                      ).paddingAll(20)
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
