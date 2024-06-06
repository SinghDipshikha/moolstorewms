//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/Model/personaldetailsResponse.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/View/widget/commonTextField.dart';
import 'package:moolwmsstore/Hr/constants/validations.dart';
import 'package:moolwmsstore/utils/dimensions.dart';

//import 'package:moolwmsstore/routes/approutes.gr.dart';

////@RoutePage()
class AddEmployeePersonalDetails extends StatelessWidget {
  AddEmployeePersonalDetails({super.key});

  PersonalDetailsResponse? details;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _genderController = TextEditingController();

  final TextEditingController _gstNoController = TextEditingController();

  final TextEditingController _bloodGroupContoller = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _pfController = TextEditingController();

  final TextEditingController _panCardNumberController =
      TextEditingController();

  final TextEditingController _esicContoller = TextEditingController();

  final TextEditingController _passportNumberController =
      TextEditingController();

  final TextEditingController _disabilityDescribeContoller =
      TextEditingController();

  final TextEditingController _addressContoller = TextEditingController();

  final TextEditingController _stateContoller = TextEditingController();

  final TextEditingController _cityContoller = TextEditingController();

  final TextEditingController _pincodeContoller = TextEditingController();

  final TextEditingController _emergencyContactNoController =
      TextEditingController();

  final TextEditingController _emergencyContactPersonController =
      TextEditingController();

  final TextEditingController _mailingAddressDiffrentContoller =
      TextEditingController();

  final TextEditingController _mailingAddressContoller =
      TextEditingController();

  final TextEditingController _aadharCardContoller = TextEditingController();

  final PersonalDetailsResponse _personalDetails =
      const PersonalDetailsResponse();

  String _email = '';

  final String _mobileNumber = '';

  final String _gaurdName = '';

  String _bloodGroup = '';

  String _gateId = '';

  final String _pfNumber = '';

  final String _esicNumber = '';

  String _passportNumber = '';

  User user = const User();

  DateTime? _selectedDate;

  DateTime? _selectedDate2;

  bool _isCheckedPassportYes = false;

  final bool _isCheckedPassportNo = false;

  bool _isCheckedDisablityYes = false;

  bool _isCheckedMailingAddressYes = false;

  final bool _isCheckedDisablityNo = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      _selectedDate = picked;
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
      _selectedDate2 = picked;
    }
  }

  // @override
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HRController>(builder: (hrController) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Personal Details',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: GetBuilder<HRController>(initState: (state) {
          Get.find<HRController>().getPersonalDetails();
        }, builder: (hrController) {
          return hrController.isLoading
              ? const Center(
                  child: SpinKitRipple(
                    color: Color(0xFF5A57FF),
                  ),
                )
              : Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                            height: 64,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF5A57FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Gap(10),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Full Name',
                                      style: TextStyle(
                                        color: Color(0xFFC2C0FF),
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    const Gap(4),
                                    Text(
                                      hrController
                                              .currentlySeletedEmployee?.name ??
                                          "--",
                                      style: const TextStyle(
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Mobile No.',
                                      style: TextStyle(
                                        color: Color(0xFFC2C0FF),
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    const Gap(4),
                                    Text(
                                      hrController.currentlySeletedEmployee
                                              ?.mobile ??
                                          "--",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                const Gap(10),
                              ],
                            )).paddingSymmetric(vertical: 12),
                        CommanTextField(
                          // initialValue: "njfnvfjnv",
                          labelText: "Gender",
                          hintText: "Gender ",
                          obscureText: false,
                          //  controller: _genderController,
                        ).paddingSymmetric(vertical: 12),
                        CommanTextField(
                          labelText: "Date of Birth",
                          // hintText: _selectedDate == null
                          //     ? 'Choose your DOB'
                          //     : _selectedDate.toString(),
                          suffixIcon: GestureDetector(
                            child: const Icon(Icons.calendar_month,
                                color: Color(0xFFACACAC)),
                            onTap: () {
                              _selectDate(context);
                            },
                          ),
                        ).paddingSymmetric(vertical: 12),
                        CommanTextField(
                          inputFormatters:
                              GlobalValidator.bloodGroupInputFormatter(),
                          labelText: "Blood Group",
                          hintText: "Blood Group",
                          obscureText: false,
                          controller: _bloodGroupContoller,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your blood group.';
                            }

                            if (!GlobalValidator.isValidBloodGroup(value)) {
                              return 'Please enter a valid blood group.';
                            }

                            return null;
                          },
                          onChanged: (value) {
                            _bloodGroup = value;
                          },
                        ).paddingSymmetric(vertical: 12),
                        CommanTextField(
                          labelText: "Email ID",
                          hintText: "Email ID",
                          obscureText: false,
                          controller: _emailController,
                          inputFormatters:
                              GlobalValidator.emailInputFormatter(),
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
                        ).paddingSymmetric(vertical: 12),
                        CommanTextField(
                          labelText: "Aadhar Card",
                          hintText: "Aadhar Card",
                          obscureText: false,
                          controller: _aadharCardContoller,
                          inputFormatters:
                              GlobalValidator.aadharNumberInputFormatter(),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your Aadhar Number';
                            }

                            if (!GlobalValidator.isValidGateID(value)) {
                              return 'Please enter a valid Aadhar Number.';
                            }

                            return null;
                          },
                          onChanged: (value) {
                            _gateId = value;
                          },
                        ).paddingSymmetric(vertical: 12),
                        CommanTextField(
                          labelText: "PF Number",
                          hintText: "PF Number",
                          obscureText: false,
                          controller: _pfController,
                          inputFormatters:
                              GlobalValidator.pfNumberInputFormatter(),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your PF Number.';
                            }

                            if (!GlobalValidator.isValidPFNumber(value)) {
                              return 'Please enter a valid PF Number.';
                            }

                            return null;
                          },
                          onChanged: (value) {
                            _gateId = value;
                          },
                        ).paddingSymmetric(vertical: 12),
                        CommanTextField(
                          labelText: "PAN Number",
                          hintText: "PAN Number",
                          obscureText: false,
                          controller: _panCardNumberController,
                          inputFormatters: GlobalValidator.panInputFormatter(),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your PAN Number';
                            }

                            if (!GlobalValidator.isValidPAN(value)) {
                              return 'Please enter a valid PAN Number.';
                            }

                            return null;
                          },
                          onChanged: (value) {
                            _gateId = value;
                          },
                        ).paddingSymmetric(vertical: 12),
                        CommanTextField(
                          labelText: "ESIC Number",
                          hintText: "ESIC Number",
                          obscureText: false,
                          controller: _esicContoller,
                          inputFormatters: GlobalValidator.esicInputFormatter(),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your ESIC Number';
                            }

                            if (!GlobalValidator.isValidGateID(value)) {
                              return 'Please enter a valid ESIC Number.';
                            }

                            return null;
                          },
                          onChanged: (value) {},
                        ).paddingSymmetric(vertical: 12),
                        CommanTextField(
                          labelText: "Address",
                          hintText: "Address",
                          obscureText: false,
                          controller: _addressContoller,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your address';
                            }

                            if (!GlobalValidator.isValidAddress(value)) {
                              return 'Please enter a valid address';
                            }

                            return null;
                          },
                          onChanged: (value) {},
                        ).paddingSymmetric(vertical: 12),
                        CommanTextField(
                          labelText: "City",
                          hintText: "City",
                          obscureText: false,
                          controller: _cityContoller,
                          inputFormatters: GlobalValidator.cityInputFormatter(),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your city';
                            }

                            if (!GlobalValidator.isValidCity(value)) {
                              return 'Please enter a valid city';
                            }

                            return null;
                          },
                          onChanged: (value) {},
                        ).paddingSymmetric(vertical: 12),
                        CommanTextField(
                          labelText: "State",
                          hintText: "State",
                          obscureText: false,
                          controller: _stateContoller,
                          inputFormatters:
                              GlobalValidator.stateInputFormatter(),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your state';
                            }

                            if (!GlobalValidator.isValidState(value)) {
                              return 'Please enter a valid state';
                            }

                            return null;
                          },
                          onChanged: (value) {},
                        ).paddingSymmetric(vertical: 12),
                        CommanTextField(
                          labelText: "Pincode",
                          hintText: "Pincode",
                          obscureText: false,
                          inputFormatters:
                              GlobalValidator.pincodeInputFormatter(),
                          controller: _pincodeContoller,
                          // isNumber: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your pincode';
                            }

                            if (!GlobalValidator.isValidPincode(value)) {
                              return 'Please enter a valid pincode';
                            }

                            return null;
                          },
                          onChanged: (value) {},
                        ).paddingSymmetric(vertical: 12),
                        Container(
                          constraints: context.isPhone
                              ? null
                              : const BoxConstraints(maxWidth: 520),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: const Text(
                                  'Do you have Passport?',
                                  style: TextStyle(fontSize: 16.0),
                                ).paddingOnly(top: 2),
                              ),
                              Checkbox(
                                value: _isCheckedPassportYes,
                                activeColor: const Color(0xFF5A57FF),
                                checkColor: Colors.white,
                                onChanged: (value) {
                                  _isCheckedPassportYes = value!;
                                },
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 1.2,
                                ),
                              ),
                            ],
                          ).paddingSymmetric(vertical: 12),
                        ),
                        if (_isCheckedPassportYes)
                          CommanTextField(
                            labelText: "Passport Number",
                            hintText: "Passport Number",
                            obscureText: false,
                            controller: _passportNumberController,
                            inputFormatters:
                                GlobalValidator.passportNumberInputFormatter(),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your Passport Number.';
                              }

                              if (!GlobalValidator.isValidPassportNumber(
                                  value)) {
                                return 'Please enter a valid passport number.';
                              }

                              return null;
                            },
                            onChanged: (value) {
                              _passportNumber = value;
                            },
                          ).paddingSymmetric(vertical: 12),
                        if (_isCheckedPassportYes)
                          CommanTextField(
                            labelText: "Expiry Date",
                            hintText: _selectedDate2 == null
                                ? 'No Date Selected'
                                : _selectedDate2.toString(),
                            suffixIcon: GestureDetector(
                              child: const Icon(
                                Icons.calendar_month,
                                color: Color(0xFFACACAC),
                              ),
                              onTap: () {
                                _selectDate2(context);
                              },
                            ),
                            obscureText: false,
                          ).paddingSymmetric(vertical: 12),
                        Container(
                          constraints: context.isPhone
                              ? null
                              : const BoxConstraints(maxWidth: 520),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: const Text(
                                  'Do you have any Disability?',
                                  style: TextStyle(fontSize: 16.0),
                                ).paddingSymmetric(vertical: 12),
                              ),
                              Checkbox(
                                value: _isCheckedDisablityYes,
                                activeColor: const Color(0xFF5A57FF),
                                checkColor: Colors.white,
                                onChanged: (value) {
                                  _isCheckedDisablityYes = value!;
                                },
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 1.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CommanTextField(
                          labelText: "Please Describe",
                          hintText: "Please Describe",
                          obscureText: false,
                          controller: _disabilityDescribeContoller,
                        ).paddingSymmetric(vertical: 12),
                        CommanTextField(
                          labelText: "Emergency Contact Number",
                          hintText: "Emergency Contact Number",
                          obscureText: false,
                          controller: _emergencyContactNoController,
                          inputFormatters:
                              GlobalValidator.mobileNumberInputFormatter(),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your number';
                            }

                            if (!GlobalValidator.isValidMobileNumber(value)) {
                              return 'Please enter a valid number';
                            }

                            return null;
                          },
                          onChanged: (value) {},
                        ).paddingSymmetric(vertical: 12),
                        CommanTextField(
                          labelText: "Emergency Contact Person Name",
                          hintText: "Emergency Contact Person Name",
                          obscureText: false,
                          controller: _emergencyContactPersonController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your name';
                            }

                            if (!GlobalValidator.isValidUsername(value)) {
                              return 'Please enter a valid name';
                            }

                            return null;
                          },
                          onChanged: (value) {},
                        ).paddingSymmetric(vertical: 12),
                        Container(
                          constraints: context.isPhone
                              ? null
                              : const BoxConstraints(maxWidth: 520),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Do mailing Address is diffrent?',
                                style: TextStyle(fontSize: 16.0),
                              ).paddingSymmetric(vertical: 12),
                              Checkbox(
                                value: _isCheckedMailingAddressYes,
                                activeColor: const Color(0xFF5A57FF),
                                checkColor: Colors.white,
                                onChanged: (value) {
                                  _isCheckedMailingAddressYes = value!;
                                },
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 1.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CommanTextField(
                          labelText: "Mailing Address",
                          hintText: "Mailing Address",
                          obscureText: false,
                          inputFormatters:
                              GlobalValidator.emailInputFormatter(),
                          controller: _mailingAddressDiffrentContoller,
                        ).paddingSymmetric(vertical: 12),
                        const Gap(20),
                        CustomFloatingActionButton(
                            title: 'Next',
                            onTap: () {
                              // if (_formKey.currentState?.validate() ?? false) {
                              hrController.addPersonalDetailRequestModel =
                                  hrController.addPersonalDetailRequestModel
                                      .copyWith(
                                user_id: hrController.currentUserId,
                                updated_by: hrController.user.id,
                                gst_number: _gstNoController.text,
                                gender: _genderController.text,
                                dob: _selectedDate.toString(),
                                blood_group: _bloodGroupContoller.text,
                                email: _emailController.text,
                                pf_number: _pfController.text,
                                pan_card: _panCardNumberController.text,
                                esic_number: _esicContoller.text,
                                have_passport:
                                    _isCheckedPassportYes ? "YES" : "NO",
                                passport_number: _passportNumberController.text,
                                passport_expiry_date: _selectedDate2.toString(),
                                have_disability:
                                    _isCheckedDisablityYes ? "YES" : "NO",
                                disability_describe:
                                    _disabilityDescribeContoller.text,
                                address: _addressContoller.text,
                                state: _stateContoller.text,
                                city: _cityContoller.text,
                                pincode: int.parse(_pincodeContoller.text),
                                emergency_contact_no:
                                    _emergencyContactNoController.text,
                                emergency_contact_person:
                                    _emergencyContactPersonController.text,
                                mailing_address_diffrent:
                                    _isCheckedMailingAddressYes ? "YES" : "NO",
                                mailing_address: _mailingAddressContoller.text,
                              );
                              Logger().i(hrController
                                  .addPersonalDetailRequestModel
                                  .toJson());
                              hrController.addPersonalDetails();

                              print(hrController.addPersonalDetailRequestModel);
                            }
                            // },
                            ),
                        const Gap(20),
                      ],
                    ),
                  ),
                ).paddingSymmetric(
                  vertical: Dimensions.vericalBodyPad,
                  horizontal: Dimensions.horizontalBodyPad);
        }),
      );
    });
  }
}
