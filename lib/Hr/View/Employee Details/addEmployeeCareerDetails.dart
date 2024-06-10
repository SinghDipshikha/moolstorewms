//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/Model/addCareerDetail.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/View/widget/commonTextField.dart';
import 'package:moolwmsstore/Hr/constants/validations.dart';
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
  DateTime? _selectedDate2;
  final bool _isCheckedPassportYes = false;
  final bool _isCheckedPassportNo = false;
  final bool _isCheckedDisablityYes = false;
  final bool _isCheckedDisablityNo = false;
  final String _monthlySalary = '';
  final String _currentSalary = '';
  String _employerName = '';
 
  final AddCareerDetail _careerDetails = const AddCareerDetail();

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

  Future<void> _selectDate2(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate2) {
      setState(() {
        _selectedDate2 = picked;
      });
    }
  }

  String? selectedLanguage = "Hindi";
  final _formKey = GlobalKey<FormState>();
   AddCareerDetail careerDetail = const AddCareerDetail();
  @override
  


  @override
  Widget build(BuildContext context) {
    return GetBuilder<HRController>(builder: (hrController) {
      return Form(
        key: _formKey,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Career Details',
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
             
            },
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
                          // AddCareerDetail detail  = hRController.carrierDetails[i] ;
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
                                    onChanged: (p0) {
                                careerDetail =
                                    careerDetail.copyWith(name_of_employer: p0);
                              },
                                  ).paddingAll(4),
                                  CommanTextField(
                                    labelText: "Designation",
                                    hintText: "Designation",
                                    obscureText: false,
                                 
                                    onChanged: (p0){
                                       careerDetail = careerDetail.copyWith(designation: p0);
                                    },
                                  ).paddingAll(4),
                                  CommanTextField(
                                    labelText: "Reporting To",
                                    hintText: "Reporting To ",
                                    obscureText: false,
                                    
                                    onChanged: (p0){
                                       careerDetail = careerDetail.copyWith(reporting_to: p0);
                                    },
                                  ).paddingAll(4),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                //height: 0,
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 5),
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
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      //height: 0,
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
                                                //height: 0,
                                              ),
                                            ),
                                          ),
                                          const Gap(10),
                                          InkWell(
                                            onTap: () {
                                              _selectDate2(context);
                                            },
                                            child: Container(
                                              width: 123,
                                              height: 35,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 5),
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
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      //height: 0,
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
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      'Monthly Salary',
                                      style: TextStyle(
                                        color: Color(0xFFACACAC),
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                        //height: 0,
                                      ),
                                    ),
                                  ),
                                  CommanTextField(
                                    labelText: "Start",
                                    hintText: "₹",
                                    obscureText: false,
                                   
                                    onChanged: (p0){
                                       careerDetail = careerDetail.copyWith(monthly_salary_start: p0);
                                    },
                                    inputFormatters: GlobalValidator
                                        .monthlySalaryInputFormatter(),
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
                                   
                                  ).paddingAll(4),
                                  CommanTextField(
                                    labelText: "Current/End",
                                    hintText: "₹",
                                    obscureText: false,
                                    onChanged: (p0){
                                       careerDetail = careerDetail.copyWith(monthly_salary_end: p0);
                                    },
                                    inputFormatters: GlobalValidator
                                        .monthlySalaryInputFormatter(),
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
                                   
                                  ).paddingAll(4),
                                  InkWell(
                                    onTap: () {
                                      hRController.carrierDetails
                                          .add(const AddCareerDetail());
                                      hRController.update();
                                    },
                                    child: Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              width: 55,
                                              height: 55,
                                              decoration: const ShapeDecoration(
                                                color: Color(0xFF5A57FF),
                                                shape: OvalBorder(),
                                              ),
                                              child: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 50,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Gap(5),
                                        const Text(
                                          'Add More',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.03,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w700,
                                            //height: 0,
                                          ),
                                        )
                                      ],
                                    ).paddingAll(4),
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
                  ],
                );
              }),
            ),
          ),
        ),
      );
    });
  }
}
