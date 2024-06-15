import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Sales/Model/addCustomer.dart';
import 'package:moolwmsstore/Sales/View/common/widgets/salesCommonWidgets.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/common/widgets/profileAvatar.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/textStyles.dart';
import 'package:moolwmsstore/utils/textutils.dart';

class AddCustomerScreen extends StatelessWidget {
  AddCustomerScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  AddCustomer addCustomer = const AddCustomer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Add Customer',
          style: TextDecorations.appBarTextStyle,
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(children: [
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
          const Gap(22),
          GetBuilder<SalesController>(builder: (salesController) {
            return CustomButton(
              colors: const [Color(0xFF5A57FF), Color(0xFF5A57FF)],
              onTap: () {
                if (_formKey.currentState?.validate() ?? false) {

                  addCustomer = addCustomer.copyWith(addedBy: salesController.user.id);
                  Logger().i(addCustomer.toJson());
                  salesController.addCustomer(addCustomer);

                  // salesController.
                  // salesController.addCompany(Company(
                  //     company_name: companyName.text,
                  //     user_id: salesController.user.id,
                  //     status: "1",
                  //     phone_no: "+91${phone.text}",
                  //     address: address.text,
                  //     state: state.text,
                  //     gst_no: gstNum.text)
                  //     );
                }
              },
              title: "Submit",
            );
          })
        ]),
      ).paddingSymmetric(
          horizontal: Dimensions.horizontalBodyPad,
          vertical: Dimensions.vericalBodyPad),
    );
  }
}
