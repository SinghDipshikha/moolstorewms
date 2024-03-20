import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonDropDown.dart';
import 'package:moolwmsstore/View/Roles/Hr/widget/commonTextField.dart';

@RoutePage()
class AddEmployeeReferralDetails extends StatefulWidget {
  const AddEmployeeReferralDetails({super.key});

  @override
  State<AddEmployeeReferralDetails> createState() =>
      _AddEmployeeReferralDetailsState();
}

class _AddEmployeeReferralDetailsState
    extends State<AddEmployeeReferralDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(alignment: Alignment.topLeft, children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color:
                            context.isPhone ? Colors.transparent : Colors.black,
                        width: 2)),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 60.0, top: 20, bottom: 20, right: 20),
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      CommanTextField(
                        labelText: "Name of Referee",
                        hintText: "Name of Referee",
                        obscureText: false,
                      ).paddingAll(2),
                      CommanTextField(
                        labelText: "Company",
                        hintText: "Company",
                        obscureText: false,
                      ).paddingAll(2),
                      CommanTextField(
                        labelText: "Address",
                        hintText: "Address",
                        obscureText: false,
                      ).paddingAll(2),
                      CommanTextField(
                        labelText: "Designation",
                        hintText: "Designation",
                        obscureText: false,
                      ).paddingAll(2),
                      CommanTextField(
                        labelText: "Mobile Number",
                        hintText: "Mobile Number",
                        obscureText: false,
                      ).paddingAll(2),
                      CommanTextField(
                        labelText: "Email ID",
                        hintText: "Email ID",
                        obscureText: false,
                      ).paddingAll(8),
                      Row(
                        children: [
                          Container(
                            width: 28.39,
                            height: 28.39,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 28.39,
                                    height: 28.39,
                                    decoration: ShapeDecoration(
                                      color: Colors.black,
                                      shape: OvalBorder(),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Gap(5),
                          Text(
                            'Add More',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.03,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          )
                        ],
                      ).paddingOnly(left: 50)
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
                          'Referral Detail',
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
