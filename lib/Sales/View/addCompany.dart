import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Sales/Model/company.dart';
import 'package:moolwmsstore/Sales/View/widgets/customButton.dart';
import 'package:moolwmsstore/Sales/controller/salesController.dart';
import 'package:moolwmsstore/View/common/myTextField.dart';
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
            const Text(
              'Company Name',
              style: TextStyle(
                color: Color(0xFF595959),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                //height: 0,
              ),
            ),
            const Gap(4),
            MyTextField(
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Image.asset(
                  'assets/icons/Company Icon (R) copy.png',
                  height: 20,
                  width: 20,
                ),
              ),
              labelText: "Enter company name",
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
            ),
            const Gap(12),
            const Text(
              'Address',
              style: TextStyle(
                color: Color(0xFF595959),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                //height: 0,
              ),
            ),
            const Gap(4),
            MyTextField(
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Image.asset(
                  'assets/icons/PO Icon Set 1 (R).png',
                  height: 20,
                  width: 20,
                ),
              ),
              labelText: "Enter company address",
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
            ),
            const Gap(12),
            const Text(
              'GST IN',
              style: TextStyle(
                color: Color(0xFF595959),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                //height: 0,
              ),
            ),
            const Gap(4),
            MyTextField(
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Image.asset(
                  'assets/icons/PO Icon Set 1 (R) (1).png',
                  height: 20,
                  width: 20,
                ),
              ),
              labelText: "Enter gst number",
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
            ),
            const Gap(12),
            const Text(
              'Phone Number',
              style: TextStyle(
                color: Color(0xFF595959),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                //height: 0,
              ),
            ),
            const Gap(4),
            MyTextField(
              validator: (val) {
                if (val == null || val.isEmpty) {
                  {
                    return "required";
                  }
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.number,
              labelText: 'Enter phone number',
              prefixIcon: CountryCodePicker(
                padding: EdgeInsets.zero,
                onChanged: (x) {
                  if (x.code != null) {
                    countryCode = x.code;
                    // ownerController.countrydialCode = x.dialCode!;
                  }
                },
                initialSelection: 'IN',
                favorite: const ['+91', 'IN'],

                showCountryOnly: true,
                // showOnlyCountryWhenClosed: true,
                alignLeft: false,
              ),
              controller: phone,
            ),
            const Gap(12),
            const Text(
              'State',
              style: TextStyle(
                color: Color(0xFF595959),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                //height: 0,
              ),
            ),
            const Gap(4),
            MyTextField(
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Image.asset(
                  'assets/icons/PO Icon Set 1 (R) copy.png',
                  height: 20,
                  width: 20,
                ),
              ),
              labelText: "Enter state",
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
            ),
            const Gap(12),
          ]),
        ),
      ),
    );
  }
}
