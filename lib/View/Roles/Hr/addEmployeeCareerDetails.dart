import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonButtons.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonDropDown.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonTextField.dart';

@RoutePage()
class AddEmployeeCareerDetails extends StatefulWidget {
  const AddEmployeeCareerDetails({super.key});

  @override
  State<AddEmployeeCareerDetails> createState() =>
      _AddEmployeeCareerDetailsState();
}

class _AddEmployeeCareerDetailsState extends State<AddEmployeeCareerDetails> {
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

  String? selectedLanguage = "Hindi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            color:
                                context.isPhone ? Colors.transparent : Colors.black,
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
                                          : BoxConstraints(
                                              maxWidth: 180, maxHeight: 35),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'EXPERIENCE',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w800,
                                            height: 0.06,
                                          ),
                                        ),
                                      ),
                                    ).paddingOnly(top: 10, left: 40),
                                  ],
                                )
                              : Container(
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
                            labelText: "Name of Employer",
                            hintText: "Name of Employer",
                            obscureText: false,
                          ).paddingOnly(left: 20),
                          CommanTextField(
                            labelText: "Designation",
                            hintText: "Designation",
                            obscureText: false,
                          ).paddingOnly(left: 20),
                          CommanTextField(
                            labelText: "Reporting To",
                            hintText: "Reporting To ",
                            obscureText: false,
                          ).paddingOnly(left: 20),
                          Container(
                            constraints: context.isPhone
                                ? null
                                : BoxConstraints(maxWidth: 520),
                          ),
                          !context.isPhone
                              ? Row(
                                  children: [
                                    Container(
                                      constraints: context.isPhone
                                          ? null
                                          : BoxConstraints(
                                              maxWidth: 200, maxHeight: 35),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'EMPLOYMENT DATE',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w800,
                                            height: 0.06,
                                          ),
                                        ),
                                      ),
                                    ).paddingOnly(top: 10, left: 40),
                                  ],
                                )
                              : Container(
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
                                : '${_selectedDate.toString()}',
                            suffixIcon: GestureDetector(
                              child: Icon(Icons.calendar_month),
                              onTap: () {
                                _selectDate(context);
                              },
                            ),
                            obscureText: false,
                          ).paddingOnly(left: 20),
                          CommanTextField(
                            labelText: "To Date",
                            hintText: _selectedDate == null
                                ? 'No Date Selected'
                                : '${_selectedDate.toString()}',
                            suffixIcon: GestureDetector(
                              child: Icon(Icons.calendar_month),
                              onTap: () {
                                _selectDate(context);
                              },
                            ),
                            obscureText: false,
                          ).paddingOnly(left: 20),
                          !context.isPhone
                              ? Row(
                                  children: [
                                    Container(
                                      constraints: context.isPhone
                                          ? null
                                          : BoxConstraints(
                                              maxWidth: 200, maxHeight: 35),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'MONTHLY SALARY',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w800,
                                            height: 0.06,
                                          ),
                                        ),
                                      ),
                                    ).paddingOnly(top: 10, left: 40),
                                  ],
                                )
                              : Container(
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
                          ).paddingOnly(left: 20),
                          CommanTextField(
                            labelText: "Current/End",
                            hintText: "₹",
                            obscureText: false,
                          ).paddingOnly(left: 20),
                          Row(
                            children: [
                              Container(
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
                                        decoration: ShapeDecoration(
                                          color: Colors.black,
                                          shape: OvalBorder(),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Gap(5),
                              Text(
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
                          ).paddingOnly(left: 20)
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
                            child: Text(
                              'Career Details',
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
                  Gap(20),
                  CommonNextButton(
                    title: 'Next',
                    onTap: () {
                      // if (_formKey.currentState!.validate()) {
                      //   _formKey.currentState!.save();

                      //   print('Valid email: $_email');
                      // }
                    },
                  ),],
            ).paddingAll(20)
             
             ],
            ),
          ),
        ),
      ),
    );
  }
}
