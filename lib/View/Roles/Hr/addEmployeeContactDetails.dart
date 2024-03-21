import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonDropDown.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonTextField.dart';

@RoutePage()
class AddEmployeeContactDetails extends StatefulWidget {
  const AddEmployeeContactDetails({super.key});

  @override
  State<AddEmployeeContactDetails> createState() =>
      _AddEmployeeContactDetailsState();
}

class _AddEmployeeContactDetailsState extends State<AddEmployeeContactDetails> {
  DateTime? _selectedDate;
  bool _isCheckedPassportYes = false;
  bool _isCheckedPassportNo = false;
  bool _isCheckedDisablityYes = false;
  bool _isCheckedDisablityNo = false;

  List<String> languageDataList = [
    'Hindi',
    'English',
    'Marathi',
    'Tamil',
    'Telegu',
  ];
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
                  padding: const EdgeInsets.all(20),
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      CommanTextField(
                        labelText: "Address",
                        hintText: "Address",
                        obscureText: false,
                      ).paddingAll(8),
                      CommanTextField(
                        labelText: "State",
                        hintText: "State",
                        obscureText: false,
                      ).paddingAll(8),
                      CommanTextField(
                        labelText: "City",
                        hintText: "City ",
                        obscureText: false,
                      ).paddingAll(8),
                      CommanTextField(
                        labelText: "Pincode",
                        hintText: "Pincode",
                        obscureText: false,
                      ).paddingAll(8),
                      Container(
                        constraints: context.isPhone
                            ? null
                            : BoxConstraints(maxWidth: 520),
                        child: context.isPhone
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'Can your mailing address be different from residence?',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      )).paddingOnly(top: 5),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Checkbox(
                                            value: _isCheckedPassportYes,
                                            onChanged: (value) {
                                              setState(() {
                                                _isCheckedPassportYes = value!;
                                              });
                                            },
                                          ),
                                          Text('Yes',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                              ))
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Checkbox(
                                            value: _isCheckedPassportNo,
                                            onChanged: (value) {
                                              setState(() {
                                                _isCheckedPassportNo = value!;
                                              });
                                            },
                                          ),
                                          Text('No',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'Can your mailing address be different from residence?',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      )).paddingOnly(top: 5),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Checkbox(
                                            value: _isCheckedPassportYes,
                                            onChanged: (value) {
                                              setState(() {
                                                _isCheckedPassportYes = value!;
                                              });
                                            },
                                          ),
                                          Text('Yes',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                              ))
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Checkbox(
                                            value: _isCheckedPassportNo,
                                            onChanged: (value) {
                                              setState(() {
                                                _isCheckedPassportNo = value!;
                                              });
                                            },
                                          ),
                                          Text('No',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                      ),
                      Container(
                        constraints: context.isPhone
                            ? null
                            : BoxConstraints(maxWidth: 500),
                      ),
                      CommanTextField(
                        labelText: "Emergency Contact Number",
                        hintText: "",
                        obscureText: false,
                      ).paddingAll(8),
                      CommanTextField(
                        labelText: "Emergency Contact Name",
                        hintText: "",
                        obscureText: false,
                      ).paddingAll(8),
                      CommomDropDown(
                        labelText: "Languages",
                        list: languageDataList,
                        onChanged: (v) {
                          setState(() {
                            selectedLanguage = v;
                          });
                        },
                        selectedValue: selectedLanguage,
                        hintText: 'Select Language',
                      ),
                      Container(
                        constraints: context.isPhone
                            ? null
                            : BoxConstraints(maxWidth: 500),
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
                          'Contact Details',
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
