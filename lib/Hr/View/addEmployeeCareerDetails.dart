//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/Model/addCareerDetail.dart';
import 'package:moolwmsstore/Hr/constants/validations.dart';
import 'package:moolwmsstore/Hr/View/widget/commonAppBar.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/View/widget/commonTextField.dart';
// import 'package:moolwmsstore/View/auth/Model/Hr/addCareerDetail.dart';
// //import 'package:moolwmsstore/routes/approutes.gr.dart';

//@RoutePage()
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
  final String _monthlySalary = '';
  final String _currentSalary = '';
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
        appBar: CommonAppBar(
          title: 'Career Details',
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: CustomFloatingActionButton(
          title: 'Next',
        ),
        body: SingleChildScrollView(
          child: Center(
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
                            child: Wrap(
                              alignment: WrapAlignment.spaceBetween,
                              spacing: 20,
                              runSpacing: 20,
                              children: [
                                CommanTextField(
                                  labelText: hRController
                                          .carrierDetails[i].name_of_employer ??
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
                                            .copyWith(name_of_employer: value);
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(top: 16.0),
                                          child: Text(
                                            'From',
                                            style: TextStyle(
                                              color: Color(0xFF5A57FF),
                                              fontSize: 12,
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                        const Gap(10),
                                        InkWell(
                                          onTap: () {
                                            _selectDate(context);
                                          },
                                          child: Container(
                                            width: 123,
                                            height: 35,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 5),
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFFFAF9FF),
                                              shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    width: 1,
                                                    color: Color(0x195E57FC)),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            child: const Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Select',
                                                  style: TextStyle(
                                                    color: Color(0xFFACACAC),
                                                    fontSize: 11.74,
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.calendar_month,
                                                  color: Color(0xFFACACAC),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(top: 16.0),
                                          child: Text(
                                            'To',
                                            style: TextStyle(
                                              color: Color(0xFF5A57FF),
                                              fontSize: 12,
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                        const Gap(10),
                                        InkWell(
                                          onTap: () {
                                            _selectDate(context);
                                          },
                                          child: Container(
                                            width: 123,
                                            height: 35,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 5),
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFFFAF9FF),
                                              shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    width: 1,
                                                    color: Color(0x195E57FC)),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            child: const Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Select',
                                                  style: TextStyle(
                                                    color: Color(0xFFACACAC),
                                                    fontSize: 11.74,
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.calendar_month,
                                                  color: Color(0xFFACACAC),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Monthly Salary',
                                    style: TextStyle(
                                      color: Color(0xFFACACAC),
                                      fontSize: 16,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
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

                                    if (!GlobalValidator.isValidMonthlySalary(
                                        value)) {
                                      return 'Please enter a monthly salary.';
                                    }

                                    return null;
                                  },
                                  onChanged: (value) {},
                                ).paddingAll(8),
                                CommanTextField(
                                  labelText: "Current/End",
                                  hintText: "₹",
                                  obscureText: false,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your monthly salary.';
                                    }

                                    if (!GlobalValidator.isValidMonthlySalary(
                                        value)) {
                                      return 'Please enter a monthly salary.';
                                    }

                                    return null;
                                  },
                                  onChanged: (value) {},
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
                            Get.back();
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
                            // context.pushRoute(
                            //     const AddEmployeeReferralDetails());
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
    );
  }
}
