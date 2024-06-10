import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/Model/addEducationDetails.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/View/widget/commonTextField.dart';
import 'package:moolwmsstore/Hr/constants/validations.dart';

////@RoutePage()
class AddEmployeeEducationQualificationDetails extends StatelessWidget {
   AddEmployeeEducationQualificationDetails({super.key});

  AddEducationDetail addEducationDetail = const AddEducationDetail();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HRController>(builder: (hrController) {
      return Form(
        key: _formKey,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Eductaion Details',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
              ),
            ),
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
                              inputFormatters:
                                  GlobalValidator.passingYearInputFormatter(),
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
                                addEducationDetail = addEducationDetail
                                    .copyWith(ssc_passing_year: value);
                              },
                            ).paddingAll(2),
                            CommanTextField(
                              labelText: "Percentage",
                              hintText: "Percentage",
                              obscureText: false,
                              inputFormatters: GlobalValidator
                                  .percentageGradeInputFormatter(),
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
                                addEducationDetail = addEducationDetail
                                    .copyWith(ssc_passing_percentage: value);
                              },
                            ).paddingAll(2),
                            CommanTextField(
                              labelText: "Grade",
                              hintText: "Grade",
                              obscureText: false,
                              inputFormatters:
                                  GlobalValidator.gateIDInputFormatter(),
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
                                addEducationDetail = addEducationDetail
                                    .copyWith(ssc_passing_grade: value);
                              },
                            ).paddingAll(2),
                            CommanTextField(
                              labelText: "School",
                              hintText: "School",
                              obscureText: false,
                              inputFormatters:
                                  GlobalValidator.schoolInputFormatter(),
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
                                addEducationDetail = addEducationDetail
                                    .copyWith(ssc_passing_school: value);
                              },
                            ).paddingAll(2),
                            CommanTextField(
                              labelText: "University",
                              hintText: "University",
                              obscureText: false,
                              inputFormatters: GlobalValidator
                                  .collegeUniversityInputFormatter(),
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
                                addEducationDetail = addEducationDetail
                                    .copyWith(ssc_passing_university: value);
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
                              inputFormatters: GlobalValidator
                                  .highestQualificationInputFormatter(),
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
                                addEducationDetail = addEducationDetail
                                    .copyWith(highest_qualification: value);
                              },
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "Specialization",
                              hintText: "Specialization",
                              obscureText: false,
                              inputFormatters: GlobalValidator
                                  .specializationInputFormatter(),
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
                                addEducationDetail = addEducationDetail
                                    .copyWith(specialization: value);
                              },
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "Passing Year",
                              hintText: "Passing Year",
                              obscureText: false,
                              inputFormatters:
                                  GlobalValidator.passingYearInputFormatter(),
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
                                addEducationDetail = addEducationDetail
                                    .copyWith(hq_passing_year: value);
                              },
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "College?University ",
                              hintText: "College?University ",
                              obscureText: false,
                              inputFormatters: GlobalValidator
                                  .collegeUniversityInputFormatter(),
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
                                addEducationDetail = addEducationDetail
                                    .copyWith(hq_college: value);
                              },
                            ).paddingAll(8),
                            CommanTextField(
                              labelText: "Percentage & Grade ",
                              hintText: "Percentage & Grade ",
                              obscureText: false,
                              inputFormatters: GlobalValidator
                                  .percentageGradeInputFormatter(),
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
                                addEducationDetail = addEducationDetail
                                    .copyWith(hq_percentage: value);
                              },
                            ).paddingAll(2),
                          ],
                        ),
                      ),
                    ),
                  ),
                  CustomFloatingActionButton(
                      title: 'Next',
                      onTap: () {
                           if (_formKey.currentState?.validate() ?? false) {

                        hrController.addEducationDetails(addEducationDetail);
                        }
                      }),
                  const Gap(20),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
