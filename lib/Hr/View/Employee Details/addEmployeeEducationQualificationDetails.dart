import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/View/Staff/staffList.dart';
import 'package:moolwmsstore/Hr/View/widget/commonAppBar.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/View/widget/commonTextField.dart';
import 'package:moolwmsstore/Hr/constants/validations.dart';
import 'package:moolwmsstore/utils/globals.dart';

////@RoutePage()
class AddEmployeeEducationQualificationDetails extends StatefulWidget {
  const AddEmployeeEducationQualificationDetails({super.key});

  @override
  State<AddEmployeeEducationQualificationDetails> createState() =>
      _AddEmployeeEducationQualificationDetailsState();
}

class _AddEmployeeEducationQualificationDetailsState
    extends State<AddEmployeeEducationQualificationDetails> {
  final TextEditingController _sscPassingYearController =
      TextEditingController();
  final TextEditingController _sscPercentageController =
      TextEditingController();
  final TextEditingController _sscGradeController = TextEditingController();
  final TextEditingController _sscSchoolController = TextEditingController();
  final TextEditingController _sscUniversityContoller = TextEditingController();
  final TextEditingController _hqController = TextEditingController();
  final TextEditingController _hqspecializationController =
      TextEditingController();
  final TextEditingController _hqPassingYearController =
      TextEditingController();

  final TextEditingController _hqCollegeUniversityController =
      TextEditingController();
  final TextEditingController _hqGradeController = TextEditingController();
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
    return GetBuilder<HRController>(builder: (hrController) {
      return Form(
        key: _formKey,
        child: Scaffold(
          appBar: CommonAppBar(
              title: 'Education Details',
              onTap: () {
                Get.to(const HrEmployeeList(), id: hrNavigationKey);
              }),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: CustomFloatingActionButton(
            title: 'Next',
            onTap: () {
              // if (_formKey.currentState?.validate() ?? false) {
              hrController.addEducationDetailsRequestModel =
                  hrController.addEducationDetailsRequestModel.copyWith(
                id: 1,
                user_id: 3,
                updated_by: hrController.user.id,
                ssc_passing_year: _sscPassingYearController.text,
                ssc_passing_percentage: _sscPercentageController.text,
                ssc_passing_grade: _sscGradeController.text,
                ssc_passing_school: _sscPassingYearController.text,
                ssc_passing_university: _sscUniversityContoller.text,
                highest_qualification: _hqController.text,
                specialization: _hqspecializationController.text,
                hq_passing_year: _hqPassingYearController.text,
                hq_percentage: _hqGradeController.text,
                hq_college: _hqCollegeUniversityController.text,
              );
              Logger().i(hrController.addCareerDetailsRequestModel.toJson());
              hrController.addEducationDetails();
            
            },
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: const ShapeDecoration(
                        color: Color(0xFFFAF9FF),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0x195A57FF)),
                        ),
                      ),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            const Text(
                              'SSC (Secondary School Certificate)',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF5A57FF),
                                fontSize: 20,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w800,
                              ),
                            ).paddingOnly(),
                            const Gap(20),
                            CommanTextField(
                              labelText: "Passing Year",
                              hintText: "Passing Year",
                              obscureText: false,
                              controller: _sscPassingYearController,
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
                              controller: _sscPercentageController,
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
                              controller: _sscGradeController,
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
                              controller: _sscSchoolController,
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
                              controller: _sscUniversityContoller,
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
                          ],
                        ),
                      ),
                    ).paddingAll(20),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      decoration: const ShapeDecoration(
                        color: Color(0xFFFAF9FF),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0x195A57FF)),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Highest Qualification',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF5A57FF),
                                fontSize: 20,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w800,
                              ),
                            ).paddingOnly(
                              top: 10,
                            ),
                            const Gap(10),
                            CommanTextField(
                              labelText: "Highest Qualification",
                              hintText: "Highest Qualification",
                              obscureText: false,
                              controller: _hqController,
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
                              controller: _hqspecializationController,
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
                              controller: _hqPassingYearController,
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
                              controller: _hqCollegeUniversityController,
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
                              controller: _hqGradeController,
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Gap(200),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
