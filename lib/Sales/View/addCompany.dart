import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Sales/Model/company.dart';
import 'package:moolwmsstore/Sales/View/common/widgets/salesCommonWidgets.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/utils/textutils.dart';

class AddCompany extends StatelessWidget {
  AddCompany({super.key});
  String? countryCode;
  TextEditingController companyName = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController gstNum = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController state = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Company',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
            //height: 0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          GetBuilder<SalesController>(builder: (salesController) {
        return CustomButton(
          colors: const [Color(0xFF5A57FF), Color(0xFF5A57FF)],
          onTap: () {
            if (_formKey.currentState?.validate() ?? false) {
              salesController.addCompany(Company(
                  company_name: companyName.text,
                  user_id: salesController.user.id,
                  status: "1",
                  phone_no: "$countryCode${phone.text}",
                  address: address.text,
                  state: state.text,
                  gst_no: gstNum.text));
            }
          },
          title: "Submit",
        ).paddingSymmetric(horizontal: 12);
      }),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: ListView(children: [
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
              controller: companyName,
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
              controller: address,
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
              controller: state,
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
              controller: gstNum,
              textCapitalization: TextCapitalization.characters,
              labelText: 'GST IN',
              hintText: "Enter gst number",
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
              controller: phone,
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
            const Gap(12),
          ]),
        ),
      ),
    );
  }
}
