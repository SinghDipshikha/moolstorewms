import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/constants/validations.dart';
import 'package:moolwmsstore/Sales/Model/addCustomer.dart';
import 'package:moolwmsstore/Sales/View/common/widgets/salesCommonWidgets.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/common/widgets/profileAvatar.dart';
import 'package:moolwmsstore/utils/globals.dart';
import 'package:moolwmsstore/utils/textutils.dart';

class AddCompanyDialog extends StatelessWidget {
  AddCompanyDialog({super.key});

  @override
  final _formKey = GlobalKey<FormState>();

  AddCustomer addCustomer = const AddCustomer();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Upload Photo",
                        style: TextStyle(
                          color: Color(0xFF595959),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ).paddingSymmetric(vertical: 12),
              ProfileAvatar(
                borderColor: AppColors.primaryColor,
                initialWidget: Icon(
                  Icons.upload_file,
                  size: 28,
                  color: AppColors.primaryColor,
                ),
                onImageUploaded: (p0) {
                  addCustomer = addCustomer.copyWith(avatar: p0);
                },
              ),
              CommonTextField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    {
                      return "required";
                    }
                  } else {
                    return null;
                  }
                },
                onChanged: (p0) {
                  addCustomer = addCustomer.copyWith(name: p0);
                },
                textCapitalization: TextCapitalization.words,
                labelText: 'Customer Name',
                hintText: "Enter Customer name",
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.asset(
                    'assets/icons/Customer Icon 2.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              const Gap(12),
              CommonTextField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    {
                      return "required";
                    }
                  } else {
                    return null;
                  }
                },
                onChanged: (p0) {
                  addCustomer = addCustomer.copyWith(company_name: p0);
                },
                textCapitalization: TextCapitalization.words,
                labelText: 'Company Name',
                hintText: "Enter company name",
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.asset(
                    'assets/icons/Company Icon (R) copy.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              const Gap(12),
              CommonTextField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    {
                      return "required";
                    }
                  } else {
                    return null;
                  }
                },
                onChanged: (p0) {
                  addCustomer = addCustomer.copyWith(address: p0);
                },
                textCapitalization: TextCapitalization.words,
                labelText: 'Address',
                hintText: "Enter company address",
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.asset(
                    'assets/icons/PO Icon Set 1 (R).png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              const Gap(12),
              CommonTextField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    {
                      return "required";
                    }
                  } else {
                    return null;
                  }
                },
                onChanged: (p0) {
                  addCustomer = addCustomer.copyWith(state: p0);
                },
                textCapitalization: TextCapitalization.words,
                labelText: 'State',
                hintText: "Enter state",
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.asset(
                    'assets/icons/PO Icon Set 1 (R) copy.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              const Gap(12),
              CommonTextField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    {
                      return "required";
                    }
                  } else if (!TextUtils.isValidGST(val)) {
                    return 'Please enter a valid GST.';
                  } else {
                    return null;
                  }
                },
                onChanged: (p0) {
                  addCustomer = addCustomer.copyWith(gst_number: p0);
                },
                textCapitalization: TextCapitalization.characters,
                labelText: 'GST IN',
                hintText: "Enter gst number",
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.asset(
                    'assets/icons/PO Icon Set 1 (R) (1).png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              const Gap(12),
              CommonTextField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    {
                      return "required";
                    }
                  } else if (!TextUtils.isValidCIN(val)) {
                    return 'Please enter a CIN.';
                  } else {
                    return null;
                  }
                },
                onChanged: (p0) {
                  addCustomer = addCustomer.copyWith(cin: p0);
                },
                textCapitalization: TextCapitalization.characters,
                labelText: 'CIN',
                hintText: "Enter Corporate Identification Number",
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.asset(
                    'assets/icons/CIN No. Icon.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              const Gap(12),
              CommonTextField(
                onChanged: (p0) {
                  addCustomer = addCustomer.copyWith(phone: "+91$p0");
                },
                keyboardType: TextInputType.phone,
                maxLength: 10,
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    {
                      return "required";
                    }
                  } else if (val.length < 10) {
                    return 'Please enter a valid Phone number.';
                  } else {
                    return null;
                  }
                },
                labelText: 'Phone Number',
                hintText: 'Enter phone number',
                prefixIcon: Image.asset(
                  "assets/icons/india.png",
                  height: 6,
                ).paddingAll(12),
              ),
              CommonTextField(
                onChanged: (p0) {
                  addCustomer = addCustomer.copyWith(email: p0);
                },
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    {
                      return "required";
                    }
                  } else if (!GlobalValidator.isValidEmail(val)) {
                    return 'Please enter a valid email address';
                  } else {
                    return null;
                  }
                },
                labelText: 'Email Address',
                hintText: 'Enter Email Address',
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.asset(
                    'assets/icons/PO Icon Set 1 (R) copy.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              const Gap(22),
              const Gap(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back(id: salesNavigationKey);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 140,
                      height: 39,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0x195A57FF)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          color: Color(0xFF5A57FF),
                          fontSize: 18,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const Gap(10),
                  GetBuilder<SalesController>(builder: (salesController) {
                    return InkWell(
                      onTap: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          salesController.addCustomer(addCustomer);
                          // salesController
                          //     .addCompanyByDialog(
                          //   Company(
                          //       company_name: companyName.text,
                          //       user_id: salesController.user.id,
                          //       status: "1",
                          //       phone_no: "$countryCode${phone.text}",
                          //       address: address.text,
                          //       state: state.text,
                          //       gst_no: gstNum.text),
                          // )
                          //     .then((value) {
                          //   if (value) {
                          //     Get.back();
                          //     Snacks.greenSnack("Company added successfully");
                          //   }
                          // });
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 140,
                        height: 39,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF5A57FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: const Text(
                          'Add',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    );
                  })
                ],
              )
            ]),
      ),
    ).paddingAll(12);
  }
}
