import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonDropDown.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonTextField.dart';

@RoutePage()
class AddEmployeeEducationQualificationDetails extends StatefulWidget {
  const AddEmployeeEducationQualificationDetails({super.key});

  @override
  State<AddEmployeeEducationQualificationDetails> createState() =>
      _AddEmployeeEducationQualificationDetailsState();
}

class _AddEmployeeEducationQualificationDetailsState
    extends State<AddEmployeeEducationQualificationDetails> {
  String? selectedLanguage = "Hindi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(alignment: Alignment.topLeft, children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color:
                            context.isPhone ? Colors.transparent : Colors.black,
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
                                      : BoxConstraints(
                                          maxWidth: 350, maxHeight: 35),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  child: Center(
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
                          : Container(
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
                      ).paddingAll(2),
                      CommanTextField(
                        labelText: "Percentage",
                        hintText: "Percentage",
                        obscureText: false,
                      ).paddingAll(2),
                      CommanTextField(
                        labelText: "Grade",
                        hintText: "Grade",
                        obscureText: false,
                      ).paddingAll(2),
                      CommanTextField(
                        labelText: "School",
                        hintText: "School",
                        obscureText: false,
                      ).paddingAll(2),
                      CommanTextField(
                        labelText: "University",
                        hintText: "University",
                        obscureText: false,
                      ).paddingAll(2),
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
                          : Container(
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
                      ).paddingAll(8),
                      CommanTextField(
                        labelText: "Specialization",
                        hintText: "Specialization",
                        obscureText: false,
                      ).paddingAll(8),
                      CommanTextField(
                        labelText: "Passing Year",
                        hintText: "Passing Year",
                        obscureText: false,
                      ).paddingAll(8),
                      CommanTextField(
                        labelText: "College?University ",
                        hintText: "College?University ",
                        obscureText: false,
                      ).paddingAll(8),
                      CommanTextField(
                        labelText: "Percentage & Grade ",
                        hintText: "Percentage & Grade ",
                        obscureText: false,
                      ).paddingAll(2),
                      Container(
                        constraints: context.isPhone
                            ? null
                            : BoxConstraints(maxWidth: 520),
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
                        child: Text(
                          'Education & Qualifications',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )).paddingOnly(left: 80),
            ]),
          ),
        ),
      ),
    );
  }
}
