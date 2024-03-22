import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonButtons.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonDropDown.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonTextField.dart';

@RoutePage()
class AddEmployeeBankDetails extends StatefulWidget {
  const AddEmployeeBankDetails({super.key});

  @override
  State<AddEmployeeBankDetails> createState() => _AddEmployeeBankDetailsState();
}

class _AddEmployeeBankDetailsState extends State<AddEmployeeBankDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Stack(alignment: Alignment.topLeft, children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color:
                                context.isPhone ? Colors.transparent : Colors.black,
                            width: 2)),
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 40.0, top: 20, bottom: 20, right: 20),
                      child: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        spacing: 20,
                        runSpacing: 20,
                        children: [
                          CommanTextField(
                            labelText: "Account Name",
                            hintText: "Account Name ",
                            obscureText: false,
                          ).paddingAll(2),
                          CommanTextField(
                            labelText: "Account Number",
                            hintText: "Account Number",
                            obscureText: false,
                          ).paddingAll(2),
                          CommanTextField(
                            labelText: "Bank Name",
                            hintText: "Bank Name",
                            obscureText: false,
                          ).paddingAll(2),
                          CommanTextField(
                            labelText: "IFSC Number",
                            hintText: "IFSC Number",
                            obscureText: false,
                          ).paddingAll(2),
                          CommanTextField(
                            labelText: "Account Type",
                            hintText: "Account Type",
                            obscureText: false,
                          ).paddingAll(2),
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
                              'Bank Details',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          )).paddingOnly(left: 80),
                ]),
              
               if(!context.isPhone)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [   CommonPreviousButton(
                    title: 'Previous',
                  ),
                  Gap(20),
                  CommonNextButton(
                    title: 'Next',
                    onTap: () {
                      // if (_formKey.currentState!.validate()) {
                      //   _formKey.currentState!.save();

                      //   print('Valid email: $_email');
                      // }
                    },
                  ),],
            ).paddingAll(20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
