import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonTextField.dart';

@RoutePage()
class AddSecurityGuardScreen extends StatefulWidget {
  const AddSecurityGuardScreen({super.key});

  @override
  State<AddSecurityGuardScreen> createState() => _AddSecurityGuardScreenState();
}

class _AddSecurityGuardScreenState extends State<AddSecurityGuardScreen> {
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

  @override
  Widget build(BuildContext context) {
    // Widget x  = context.isPhone ? Column() : Row();

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(alignment: Alignment.topLeft, children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color:
                            context.isPhone ? Colors.transparent : Colors.black,
                        width: 2)),
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceAround,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    CommanTextField(
                      labelText: "Mobile Number",
                      hintText: "Mobile Number",
                      obscureText: false,
                    ).paddingAll(8),
                    CommanTextField(
                      labelText: "Guard Name",
                      hintText: "Guard Name",
                      obscureText: false,
                    ).paddingAll(8),
                    CommanTextField(
                      labelText: "Gender",
                      hintText: "Gender ",
                      obscureText: false,
                    ).paddingAll(8),
                    CommanTextField(
                      labelText: "Date of Birth",
                      hintText: _selectedDate == null
                          ? 'Choose your DOB'
                          : '${_selectedDate.toString()}',
                      suffixIcon: GestureDetector(
                        child: Icon(Icons.calendar_month),
                        onTap: () {
                          _selectDate(context);
                        },
                      ),
                    ).paddingAll(8),
                    CommanTextField(
                      labelText: "Blood Group",
                      hintText: "Blood Group",
                      obscureText: false,
                    ).paddingAll(8),
                    CommanTextField(
                      labelText: "Email ID",
                      hintText: "Email ID",
                      obscureText: false,
                    ).paddingAll(8),
                    CommanTextField(
                      labelText: "Gate ID",
                      hintText: "Gate ID",
                      obscureText: false,
                    ).paddingAll(8),
                    CommanTextField(
                      labelText: "PF Number",
                      hintText: "PF Number",
                      obscureText: false,
                    ).paddingAll(8),
                    CommanTextField(
                      labelText: "ESIC Number",
                      hintText: "ESIC Number",
                      obscureText: false,
                    ).paddingAll(8),
                    Container(
                      constraints: context.isPhone
                          ? null
                          : BoxConstraints(maxWidth: 400),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Do you have Passport?',
                            style: TextStyle(fontSize: 16.0),
                          ).paddingOnly(top: 5),
                          Checkbox(
                            value: _isCheckedPassportYes,
                            onChanged: (value) {
                              setState(() {
                                _isCheckedPassportYes = value!;
                              });
                            },
                          ),
                          Checkbox(
                            value: _isCheckedPassportNo,
                            onChanged: (value) {
                              setState(() {
                                _isCheckedPassportNo = value!;
                              });
                            },
                          ),
                        ],
                      ).paddingAll(8),
                    ),
                    CommanTextField(
                      labelText: "Passport Number",
                      hintText: "Passport Number",
                      obscureText: false,
                    ).paddingAll(8),
                    CommanTextField(
                      labelText: "Expiry Date",
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
                    ).paddingAll(8),
                    CommanTextField(
                      labelText: "Passport Number",
                      hintText: "Passport Number",
                      obscureText: false,
                    ).paddingAll(8),
                    Container(
                      constraints: context.isPhone
                          ? null
                          : BoxConstraints(maxWidth: 400),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Do you have any Disability?',
                            style: TextStyle(fontSize: 16.0),
                          ).paddingOnly(top: 5),
                          Checkbox(
                            value: _isCheckedDisablityYes,
                            onChanged: (value) {
                              setState(() {
                                _isCheckedDisablityYes = value!;
                              });
                            },
                          ),
                          Checkbox(
                            value: _isCheckedDisablityNo,
                            onChanged: (value) {
                              setState(() {
                                _isCheckedDisablityNo = value!;
                              });
                            },
                          ),
                        ],
                      ).paddingAll(8),
                    ),
                    CommanTextField(
                      labelText: "Description",
                      hintText: "Description",
                      obscureText: false,
                    ).paddingAll(8),
                  ],
                ),
              ),
              Container(
                  color: const Color(0xFFF7F7F7),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0).copyWith(),
                    child: Text(
                      'Personal Details',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )).paddingOnly(left: 20),
            ]),
          ),
        ),
      ),
    );
  }
}
