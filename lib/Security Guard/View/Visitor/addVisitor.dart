import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/constants/validations.dart';
import 'package:moolwmsstore/Security%20Guard/View/securityGuarddashboard.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonAppBar.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonButtons.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonTextField.dart';

import '../../../utils/globals.dart';

class AddVisitor extends StatefulWidget {
  const AddVisitor({super.key});

  @override
  State<AddVisitor> createState() => _AddVisitorState();
}

class _AddVisitorState extends State<AddVisitor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(
        title: 'Vehicle In',
        color: const Color(0xFF04BF8A),
        textColor: Colors.white,
        onTap: () {
          /// Get.to(const TicketEntryReviewScreen(), id: securityGuardNavigation);
        },
      ),
      appBar: CommonAppBar(
        title: 'Add Ticket',
        onTap: () {
          Get.to(const SecurityGuardDashBoard(), id: securityGuardNavigation);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 358,
              height: 39,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Visitor ID : 54321',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
            CommanTextFieldUpdated(
              labelText: "Full Name",
              hintText: "Full Name",
              obscureText: false,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your visitor name.';
                }

                if (!GlobalValidator.isValidUsername(value)) {
                  return 'Please enter a valid visitor name.';
                }

                return null;
              },
              onChanged: (value) {},
            ).paddingAll(8),
            const Gap(10),
            CommanTextFieldUpdated(
              labelText: "Mobile Number",
              hintText: "Mobile Number",
              obscureText: false,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your mobile number.';
                }

                if (!GlobalValidator.isValidMobileNumber(value)) {
                  return 'Please enter a valid mobile number.';
                }

                return null;
              },
              onChanged: (value) {},
            ).paddingAll(8),
            const Gap(10),
            const Text(
              "ID Proof",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFFACACAC),
              ),
            ).paddingOnly(left: 10),
            InkWell(
              onTap: () {
                _showPopup(context);
              },
              child: Container(
                width: 358,
                height: 75,
                decoration: ShapeDecoration(
                  color: const Color(0xFF5A57FF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: const Center(
                  child: Text(
                    'Upload ID Image',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.bold,
                      height: 0,
                    ),
                  ),
                ),
              ).paddingOnly(left: 10),
            ),
            const Gap(10),
            CommanTextFieldUpdated(
              labelText: "Purpose of Visit",
              hintText: "Purpose of Visit",
              obscureText: false,
              validator: (value) {
                return null;

                // if (value!.isEmpty) {
                //   return 'Please enter your mobile number.';
                // }

                // if (!GlobalValidator.isValidUsername(value)) {
                //   return 'Please enter a valid mobile number.';
                // }

                // return null;
              },
              onChanged: (value) {},
            ).paddingAll(8),
          ],
        ),
      ),
    );
  }
}

void _showPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Center(
                child: Column(
                  children: [
                    const Text(
                      'ID Proof Document',
                      style: TextStyle(
                        color: Color(0xFF5A57FF),
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    const Gap(10),
                    Container(
                      width: 100,
                      height: 120,
                      decoration: ShapeDecoration(
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        image: const DecorationImage(
                          image:
                              AssetImage("assets/images/uploadDocuments.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Gap(10),
                    InkWell(
                      onTap: () {
                        // Get.to(const SecurityGuardDashBoard(),
                        //     id: securityGuardNavigation);
                      },
                      child: Container(
                        width: 275,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF5A57FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Take Picture',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            Icon(Icons.camera_alt, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: const <Widget>[],
      );
    },
  );
}

void _showPopupForDocuments(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Center(
                child: Column(
                  children: [
                    const Text(
                      'ID Proof Document',
                      style: TextStyle(
                        color: Color(0xFF5A57FF),
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    const Gap(10),
                    Container(
                      width: 232,
                      height: 140,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/aadharCard.png"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 1.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xBF5A57FF),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: const <Widget>[],
      );
    },
  );
}
