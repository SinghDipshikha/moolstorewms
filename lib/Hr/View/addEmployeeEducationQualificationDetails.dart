import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/constants/validations.dart';
import 'package:moolwmsstore/Hr/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/widget/commonTextField.dart';

////@RoutePage()
class AddEmployeeEducationQualificationDetails extends StatefulWidget {
  const AddEmployeeEducationQualificationDetails({super.key});

  @override
  State<AddEmployeeEducationQualificationDetails> createState() =>
      _AddEmployeeEducationQualificationDetailsState();
}

class _AddEmployeeEducationQualificationDetailsState
    extends State<AddEmployeeEducationQualificationDetails> {
  String _passingYear = '';
  String _percentage = '';
  String _grade = '';
  String _school = '';
  String _specilization = '';
  String _highestQualification = '';
  final String _collegeUniversity = '';
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
                            !context.isPhone
                                ? Row(
                                    children: [
                                      Container(
                                        constraints: context.isPhone
                                            ? null
                                            : const BoxConstraints(
                                                maxWidth: 350, maxHeight: 35),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'SSC (Secondary School Certificate)',
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
                                : const SizedBox(
                                    height: 50,
                                    width: double.infinity,
                                    child: Center(
                                      child: Text(
                                        'SECONDARY SCHOOL CERTIFICATE',
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
                              labelText: "Passing Year",
                              hintText: "Passing Year",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your passing year.';
                                }

                                if (!GlobalValidator.isValidPassingYear(
                                    value)) {
                                  return 'Please enter a valid passing year.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _passingYear = value;
                              },
                            ).paddingAll(2),
                            CommanTextField(
                              labelText: "Percentage",
                              hintText: "Percentage",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your percentage.';
                                }

                                if (!GlobalValidator.isValidPercentageGrade(
                                    value)) {
                                  return 'Please enter a valid percentage.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _percentage = value;
                              },
                            ).paddingAll(2),
                            CommanTextField(
                              labelText: "Grade",
                              hintText: "Grade",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your grade.';
                                }

                                if (!GlobalValidator.isValidPercentageGrade(
                                    value)) {
                                  return 'Please enter a valid grade.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _grade = value;
                              },
                            ).paddingAll(2),
                            CommanTextField(
                              labelText: "School",
                              hintText: "School",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your school name.';
                                }

                                if (!GlobalValidator.isValidSchool(value)) {
                                  return 'Please enter a valid school name.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _school = value;
                              },
                            ).paddingAll(2),
                            CommanTextField(
                              labelText: "University",
                              hintText: "University",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your college/university name.';
                                }

                                if (!GlobalValidator.isValidCollegeUniversity(
                                    value)) {
                                  return 'Please enter a valid college/universit name.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _school = value;
                              },
                            ).paddingAll(2),
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
                                                maxWidth: 200, maxHeight: 35),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Highest Qualification',
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
                                : const SizedBox(
                                    height: 50,
                                    width: double.infinity,
                                    child: Center(
                                      child: Text(
                                        'HIGHEST QUALIFICATION',
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
                              labelText: "Highest Qualification",
                              hintText: "Highest Qualification",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your highest qualification.';
                                }

                                if (!GlobalValidator
                                    .isValidHighestQualification(value)) {
                                  return 'Please enter a valid highest qualification.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _highestQualification = value;
                              },
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "Specialization",
                              hintText: "Specialization",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your specialization name.';
                                }

                                if (!GlobalValidator.isValidSpecialization(
                                    value)) {
                                  return 'Please enter a valid specialization name.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _specilization = value;
                              },
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "Passing Year",
                              hintText: "Passing Year",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your passing year.';
                                }

                                if (!GlobalValidator.isValidPassingYear(
                                    value)) {
                                  return 'Please enter a valid passing year.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _passingYear = value;
                              },
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "College?University ",
                              hintText: "College?University ",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your college/university name.';
                                }

                                if (!GlobalValidator.isValidCollegeUniversity(
                                    value)) {
                                  return 'Please enter a valid college/universit name.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _school = value;
                              },
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "Percentage & Grade ",
                              hintText: "Percentage & Grade ",
                              obscureText: false,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your percentage.';
                                }

                                if (!GlobalValidator.isValidPercentageGrade(
                                    value)) {
                                  return 'Please enter a valid percentage.';
                                }

                                return null;
                              },
                              onChanged: (value) {
                                _percentage = value;
                              },
                            ).paddingAll(2),
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
                                'Education & Qualifications',
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

                              // print('Valid email: $_email');
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
