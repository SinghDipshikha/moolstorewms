//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/Model/personaldetails.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/View/widget/commonTextField.dart';
import 'package:moolwmsstore/Hr/constants/validations.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/dimensions.dart';

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
  final _formKey = GlobalKey<FormState>();

  PersonalDetailsResponseUpdate personalDetails =
      const PersonalDetailsResponseUpdate();

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'PersonalpersonalDetails',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Form(
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
                              Get.find<HRController>()
                                      .currentlySeletedEmployee
                                      ?.name ??
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
                              Get.find<HRController>()
                                      .currentlySeletedEmployee
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
                  onChanged: (p0) {
                    personalDetails = personalDetails.copyWith(gender: p0);
                  },
                  // initialValue: "njfnvfjnv",
                  labelText: "Gender",
                  hintText: "Gender ",
                  obscureText: false,
                  //  controller: _genderController,
                ).paddingSymmetric(vertical: 12),
                personalDetails.dob != null
                    ? TextButton(
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                          ).then((v) {
                            if (v != null) {
                              setState(() {
                                personalDetails =
                                    personalDetails.copyWith(dob: v);
                              });
                            }
                          });
                        },
                        child: const Text("Show Date here"))
                    : IconButton(
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                          ).then((v) {
                            if (v != null) {
                              setState(() {
                                personalDetails =
                                    personalDetails.copyWith(dob: v);
                              });
                            }
                          });
                        },
                        icon: const Icon(
                          Icons.calendar_month,
                          color: Colors.black,
                        )),
                CommanTextField(
                  onChanged: (p0) {
                    personalDetails = personalDetails.copyWith(blood_group: p0);
                  },
                  inputFormatters: GlobalValidator.bloodGroupInputFormatter(),
                  labelText: "Blood Group",
                  hintText: "Blood Group",
                  obscureText: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your blood group.';
                    }

                    if (!GlobalValidator.isValidBloodGroup(value)) {
                      return 'Please enter a valid blood group.';
                    }

                    return null;
                  },
                ).paddingSymmetric(vertical: 12),
                CommanTextField(
                  onChanged: (p0) {
                    personalDetails = personalDetails.copyWith(email: p0);
                  },
                  labelText: "Email ID",
                  hintText: "Email ID",
                  obscureText: false,
                  inputFormatters: GlobalValidator.emailInputFormatter(),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email address';
                    }

                    if (!GlobalValidator.isValidEmail(value)) {
                      return 'Please enter a valid email address';
                    }

                    return null;
                  },
                ).paddingSymmetric(vertical: 12),
                CommanTextField(
                  labelText: "Aadhar Card",
                  hintText: "Aadhar Card",
                  obscureText: false,
                  inputFormatters: GlobalValidator.aadharNumberInputFormatter(),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Aadhar Number';
                    }

                    if (!GlobalValidator.isValidGateID(value)) {
                      return 'Please enter a valid Aadhar Number.';
                    }

                    return null;
                  },
                  onChanged: (p0) {
                    personalDetails =
                        personalDetails.copyWith(aadhaar_number: p0);
                  },
                ).paddingSymmetric(vertical: 12),
                CommanTextField(
                  labelText: "PF Number",
                  hintText: "PF Number",
                  obscureText: false,
                  inputFormatters: GlobalValidator.pfNumberInputFormatter(),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your PF Number.';
                    }

                    if (!GlobalValidator.isValidPFNumber(value)) {
                      return 'Please enter a valid PF Number.';
                    }

                    return null;
                  },
                  onChanged: (p0) {
                    personalDetails = personalDetails.copyWith(pf_number: p0);
                  },
                ).paddingSymmetric(vertical: 12),
                CommanTextField(
                  labelText: "PAN Number",
                  hintText: "PAN Number",
                  obscureText: false,
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
                  onChanged: (p0) {
                    personalDetails = personalDetails.copyWith(pan_card: p0);
                  },
                ).paddingSymmetric(vertical: 12),
                CommanTextField(
                  labelText: "ESIC Number",
                  hintText: "ESIC Number",
                  obscureText: false,
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
                  onChanged: (p0) {
                    personalDetails = personalDetails.copyWith(esic_number: p0);
                  },
                ).paddingSymmetric(vertical: 12),
                CommanTextField(
                  labelText: "Address",
                  hintText: "Address",
                  obscureText: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your address';
                    }

                    if (!GlobalValidator.isValidAddress(value)) {
                      return 'Please enter a valid address';
                    }

                    return null;
                  },
                  onChanged: (p0) {
                    personalDetails = personalDetails.copyWith(address: p0);
                  },
                ).paddingSymmetric(vertical: 12),
                CommanTextField(
                  labelText: "City",
                  hintText: "City",
                  obscureText: false,
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
                  onChanged: (p0) {
                    personalDetails = personalDetails.copyWith(city: p0);
                  },
                ).paddingSymmetric(vertical: 12),
                CommanTextField(
                  labelText: "State",
                  hintText: "State",
                  obscureText: false,
                  inputFormatters: GlobalValidator.stateInputFormatter(),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your state';
                    }

                    if (!GlobalValidator.isValidState(value)) {
                      return 'Please enter a valid state';
                    }

                    return null;
                  },
                  onChanged: (p0) {
                    personalDetails = personalDetails.copyWith(state: p0);
                  },
                ).paddingSymmetric(vertical: 12),
                CommanTextField(
                  keyboardType: TextInputType.number,
                  onChanged: (p0) {
                    personalDetails =
                        personalDetails.copyWith(pincode: int.parse(p0));
                  },
                  labelText: "Pincode",
                  hintText: "Pincode",
                  obscureText: false,
                  inputFormatters: GlobalValidator.pincodeInputFormatter(),

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
                ).paddingSymmetric(vertical: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Do you have Passport?',
                      style: TextStyle(fontSize: 16.0),
                    ).paddingOnly(top: 2),
                    Checkbox(
                      value: personalDetails.have_passport == 1 ? true : false,
                      activeColor: const Color(0xFF5A57FF),
                      checkColor: Colors.white,
                      onChanged: (p0) {
                        setState(() {
                          personalDetails = personalDetails.copyWith(
                              have_passport: p0 == true ? 1 : 0);
                        });
                      },
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1.2,
                      ),
                    ),
                  ],
                ).paddingSymmetric(vertical: 12),
                if (personalDetails.have_passport == 1 ? true : false)
                  CommanTextField(
                    labelText: "Passport Number",
                    hintText: "Passport Number",
                    obscureText: false,
                    onChanged: (p0) {
                      personalDetails =
                          personalDetails.copyWith(passport_number: p0);
                    },
                    inputFormatters:
                        GlobalValidator.passportNumberInputFormatter(),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Passport Number.';
                      }

                      if (!GlobalValidator.isValidPassportNumber(value)) {
                        return 'Please enter a valid passport number.';
                      }

                      return null;
                    },
                  ).paddingSymmetric(vertical: 12),
                if (personalDetails.have_passport == 1 ? true : false)
                  personalDetails.passport_expiry_date != null
                      ? TextButton(
                          onPressed: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2101),
                            ).then((v) {
                              if (v != null) {
                                setState(() {
                                  personalDetails = personalDetails.copyWith(
                                      passport_expiry_date: v);
                                });
                              }
                            });
                          },
                          child: const Text("Show Date here"))
                      : IconButton(
                          onPressed: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2101),
                            ).then((v) {
                              if (v != null) {
                                setState(() {
                                  personalDetails = personalDetails.copyWith(
                                      passport_expiry_date: v);
                                });
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.calendar_month,
                            color: Colors.black,
                          )),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Do you have any Disability?',
                      style: TextStyle(fontSize: 16.0),
                    ).paddingSymmetric(vertical: 12),
                    Checkbox(
                      value:
                          personalDetails.have_disability == 1 ? true : false,
                      activeColor: const Color(0xFF5A57FF),
                      checkColor: Colors.white,
                      onChanged: (value) {
                        setState(() {
                          personalDetails = personalDetails.copyWith(
                              have_disability: value == true ? 1 : 0);
                        });
                      },
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1.2,
                      ),
                    ),
                  ],
                ),
                if (personalDetails.have_disability == 1)
                  CommanTextField(
                    onChanged: (p0) {
                      personalDetails =
                          personalDetails.copyWith(disability_describe: p0);
                    },
                    labelText: "Please Describe",
                    hintText: "Please Describe",
                    obscureText: false,
                  ).paddingSymmetric(vertical: 12),
                CommanTextField(
                  labelText: "Emergency Contact Number",
                  hintText: "Emergency Contact Number",
                  obscureText: false,
                  inputFormatters: GlobalValidator.mobileNumberInputFormatter(),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your number';
                    }

                    if (!GlobalValidator.isValidMobileNumber(value)) {
                      return 'Please enter a valid number';
                    }

                    return null;
                  },
                  onChanged: (p0) {
                    personalDetails =
                        personalDetails.copyWith(emergency_contact_no: p0);
                  },
                ).paddingSymmetric(vertical: 12),
                CommanTextField(
                  labelText: "Emergency Contact Person Name",
                  hintText: "Emergency Contact Person Name",
                  obscureText: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }

                    if (!GlobalValidator.isValidUsername(value)) {
                      return 'Please enter a valid name';
                    }

                    return null;
                  },
                  onChanged: (p0) {
                    personalDetails =
                        personalDetails.copyWith(emergency_contact_person: p0);
                  },
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
                        value: personalDetails.mailing_address_diffrent == 1
                            ? true
                            : false,
                        activeColor: const Color(0xFF5A57FF),
                        checkColor: Colors.white,
                        onChanged: (value) {
                          setState(() {
                            personalDetails = personalDetails.copyWith(
                                mailing_address_diffrent:
                                    value == true ? 1 : 0);
                          });
                        },
                        side: const BorderSide(
                          color: Colors.grey,
                          width: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),
                if (personalDetails.mailing_address_diffrent == 1
                    ? true
                    : false)
                  CommanTextField(
                    labelText: "Mailing Address",
                    hintText: "Mailing Address",
                    obscureText: false,
                    inputFormatters: GlobalValidator.emailInputFormatter(),
                    onChanged: (p0) {
                      personalDetails =
                          personalDetails.copyWith(mailing_address: p0);
                    },
                  ).paddingSymmetric(vertical: 12),
                const Gap(20),
                GetBuilder<HRController>(builder: (hRController) {
                  if (hRController.isLoading) {
                    return LoadingAnimationWidget.staggeredDotsWave(
                      color: AppColors.primaryColor,
                      size: 80,
                    );
                  }
                  return CustomFloatingActionButton(
                      title: 'Next',
                      onTap: () {
                        // Logger().i(personalDetails.toJson());
                        hRController.addPersonalDetails(personalDetails);
                      }
                      // },
                      );
                }),
                const Gap(20),
              ],
            ),
          ),
        ).paddingSymmetric(
            vertical: Dimensions.vericalBodyPad,
            horizontal: Dimensions.horizontalBodyPad));
  }
}
