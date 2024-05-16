//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/Model/personaldetailsResponse.dart';
import 'package:moolwmsstore/Hr/View/staffList.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/View/widget/commonTextField.dart';
import 'package:moolwmsstore/Hr/constants/validations.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonAppBar.dart';
import 'package:moolwmsstore/utils/globals.dart';

//import 'package:moolwmsstore/routes/approutes.gr.dart';

////@RoutePage()
class AddEmployeePersonalDetails extends StatefulWidget {
  const AddEmployeePersonalDetails({super.key});

  @override
  State<AddEmployeePersonalDetails> createState() =>
      _AddEmployeePersonalDetailsState();
}

class _AddEmployeePersonalDetailsState
    extends State<AddEmployeePersonalDetails> {
  PersonalDetailsResponse? details;
  final _formKey = GlobalKey<FormState>();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _emailController = TextEditingController();
  String _email = '';
  final String _mobileNumber = '';
  final String _gaurdName = '';
  String _bloodGroup = '';
  String _gateId = '';
  final String _pfNumber = '';
  final String _esicNumber = '';
  String _passportNumber = '';

  DateTime? _selectedDate;
  bool _isCheckedPassportYes = false;
  final bool _isCheckedPassportNo = false;
  bool _isCheckedDisablityYes = false;
  final bool _isCheckedDisablityNo = false;

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
    return GetBuilder<HRController>(builder: (hrController) {
      return Scaffold(
        appBar: CommonAppBar(
          title: 'Personal Details',
          onTap: () {
            Get.to(const HrEmployeeList(), id: hrNavigationKey);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: CustomFloatingActionButton(
          title: 'Next',
          onTap: () {
            if (_formKey.currentState?.validate() ?? false) {
              hrController.addPersonalDetailModel =
                  hrController.addPersonalDetailModel.copyWith(


                    
                  );
              Logger().i(hrController.addPersonalDetailModel.toJson());
              hrController.addPersonalDetails();
            }
          },
        ),
        body: hrController.isLoading
            ? const Center(
                child: SpinKitRipple(
                  color: Color(0xFF5A57FF),
                ),
              )
            : Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Center(
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
                            child: Wrap(
                              alignment: WrapAlignment.spaceBetween,
                              spacing: 20,
                              runSpacing: 20,
                              children: [
                                const Gap(20),
                                Container(
                                  width: 358,
                                  height: 166,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: const Alignment(1.00, 0.00),
                                      end: const Alignment(-1, 0),
                                      colors: [
                                        Colors.white
                                            .withOpacity(0.10000000149011612),
                                        Colors.white
                                            .withOpacity(0.10000000149011612)
                                      ],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, right: 30.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Gap(20),
                                                Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration:
                                                      const BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/hrDashBoardEmployee.png"),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                                const Gap(10),
                                                const Text(
                                                  'Total Employee',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Row(
                                              children: [
                                                Text(
                                                  '80',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 32,
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                                Gap(70),
                                                Text(
                                                  '30',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 32,
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                                Gap(10)
                                              ],
                                            ),
                                          ],
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '110',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 20.0),
                                                  child: Text(
                                                    'Present\nWorkforce',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFFACACAC),
                                                      fontSize: 12,
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                                Gap(50),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 20.0),
                                                  child: Text(
                                                    'Absent\nWorkforce',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFFACACAC),
                                                      fontSize: 12,
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                const Gap(20),
                                Container(
                                    width: 358,
                                    height: 64,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF5A57FF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Gap(10),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Full Name',
                                              style: TextStyle(
                                                color: Color(0xFFC2C0FF),
                                                fontSize: 12,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                            ),
                                            Text(
                                              'Johnson Charles',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Mobile No.',
                                              style: TextStyle(
                                                color: Color(0xFFC2C0FF),
                                                fontSize: 12,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                            ),
                                            Text(
                                              '555 007 1234',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Gap(10),
                                      ],
                                    )),

                                // CommanTextField(
                                //   labelText: "Mobile Number",
                                //   hintText: "Mobile Number",
                                //   keyboardType: TextInputType.number,
                                //   obscureText: false,
                                //   validator: (value) {
                                //     if (value!.isEmpty) {
                                //       return 'Please enter your mobile number.';
                                //     }

                                //     if (!GlobalValidator.isValidMobileNumber(
                                //         value)) {
                                //       return 'Please enter a valid mobile number.';
                                //     }

                                //     return null;
                                //   },
                                //   onChanged: (value) {
                                //     //   details. = value;
                                //   },
                                // ).paddingAll(4),
                                // CommanTextField(
                                //   labelText: "Guard Name",
                                //   hintText: "Guard Name",
                                //   obscureText: false,
                                //   validator: (value) {
                                //     if (value!.isEmpty) {
                                //       return 'Please enter your gaurd name.';
                                //     }

                                //     if (!GlobalValidator.isValidUsername(
                                //         value)) {
                                //       return 'Please enter a valid gaurd name.';
                                //     }

                                //     return null;
                                //   },
                                //   onChanged: (value) {
                                //     _gaurdName = value;
                                //   },
                                // ).paddingAll(4),
                                CommanTextField(
                                  labelText: "Gender",
                                  hintText: "Gender ",
                                  obscureText: false,
                                ).paddingAll(4),
                                CommanTextField(
                                  labelText: "Date of Birth",
                                  hintText: _selectedDate == null
                                      ? 'Choose your DOB'
                                      : _selectedDate.toString(),
                                  suffixIcon: GestureDetector(
                                    child: const Icon(Icons.calendar_month),
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                  ),
                                ).paddingAll(4),
                                CommanTextField(
                                  labelText: "Blood Group",
                                  hintText: "Blood Group",
                                  obscureText: false,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your blood group.';
                                    }

                                    if (!GlobalValidator.isValidBloodGroup(
                                        value)) {
                                      return 'Please enter a valid blood group.';
                                    }

                                    return null;
                                  },
                                  onChanged: (value) {
                                    _bloodGroup = value;
                                  },
                                ).paddingAll(4),
                                CommanTextField(
                                  labelText: "Email ID",
                                  hintText: "Email ID",
                                  obscureText: false,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your email address';
                                    }

                                    if (!GlobalValidator.isValidEmail(value)) {
                                      return 'Please enter a valid email address';
                                    }

                                    return null;
                                  },
                                  onChanged: (value) {
                                    _email = value;
                                  },
                                ).paddingAll(4),
                                CommanTextField(
                                  labelText: "Gate ID",
                                  hintText: "Gate ID",
                                  obscureText: false,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your Gate Id';
                                    }

                                    if (!GlobalValidator.isValidGateID(value)) {
                                      return 'Please enter a valid gate id.';
                                    }

                                    return null;
                                  },
                                  onChanged: (value) {
                                    _gateId = value;
                                  },
                                ).paddingAll(4),
                                CommanTextField(
                                  labelText: "PF Number",
                                  hintText: "PF Number",
                                  obscureText: false,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your PF Number.';
                                    }

                                    if (!GlobalValidator.isValidPFNumber(
                                        value)) {
                                      return 'Please enter a valid PF Number.';
                                    }

                                    return null;
                                  },
                                  onChanged: (value) {
                                    _gateId = value;
                                  },
                                ).paddingAll(4),
                                CommanTextField(
                                  labelText: "ESIC Number",
                                  hintText: "ESIC Number",
                                  obscureText: false,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your ESIC Number';
                                    }

                                    if (!GlobalValidator.isValidGateID(value)) {
                                      return 'Please enter a valid ESIC Number.';
                                    }

                                    return null;
                                  },
                                  onChanged: (value) {
                                    _gateId = value;
                                  },
                                ).paddingAll(4),
                                Container(
                                  constraints: context.isPhone
                                      ? null
                                      : const BoxConstraints(maxWidth: 520),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 4.0),
                                        child: const Text(
                                          'Do you have Passport?',
                                          style: TextStyle(fontSize: 16.0),
                                        ).paddingOnly(top: 4),
                                      ),
                                      Checkbox(
                                        value: _isCheckedPassportYes,
                                        activeColor: const Color(0xFF5A57FF),
                                        onChanged: (value) {
                                          setState(() {
                                            _isCheckedPassportYes = value!;
                                          });
                                        },
                                        side: const BorderSide(
                                          color: Colors.grey,
                                          width: 1.4,
                                        ),
                                      ),
                                    ],
                                  ).paddingAll(4),
                                ),
                                if (_isCheckedPassportYes)
                                  CommanTextField(
                                    labelText: "Passport Number",
                                    hintText: "Passport Number",
                                    obscureText: false,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your Passport Number.';
                                      }

                                      if (!GlobalValidator
                                          .isValidPassportNumber(value)) {
                                        return 'Please enter a valid passport number.';
                                      }

                                      return null;
                                    },
                                    onChanged: (value) {
                                      _passportNumber = value;
                                    },
                                  ).paddingAll(4),
                                if (_isCheckedPassportYes)
                                  CommanTextField(
                                    labelText: "Expiry Date",
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
                                  ).paddingAll(4),
                                Container(
                                  constraints: context.isPhone
                                      ? null
                                      : const BoxConstraints(maxWidth: 520),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 4.0),
                                        child: const Text(
                                          'Do you have any Disability?',
                                          style: TextStyle(fontSize: 16.0),
                                        ).paddingAll(4),
                                      ),
                                      Checkbox(
                                        value: _isCheckedDisablityYes,
                                        activeColor: const Color(0xFF5A57FF),
                                        onChanged: (value) {
                                          setState(() {
                                            _isCheckedDisablityYes = value!;
                                          });
                                        },
                                        side: const BorderSide(
                                          color: Colors.grey,
                                          width: 1.4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CommanTextField(
                                  labelText: "Please Describe",
                                  hintText: "Please Describe",
                                  obscureText: false,
                                ).paddingAll(4),
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
                                      'Personal Details',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )).paddingOnly(left: 80),
                        ]),
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
                                title: 'next'.tr,
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState!.save();
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
      );
    });
  }
}
