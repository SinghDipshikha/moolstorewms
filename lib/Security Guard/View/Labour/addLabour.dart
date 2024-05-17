import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moolwmsstore/Security%20Guard/View/securityGuardDashboard.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonAppBar.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonButtons.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonTextField.dart';

import '../../../utils/globals.dart';

class AddLabour extends StatefulWidget {
  const AddLabour({super.key});

  @override
  State<AddLabour> createState() => _AddLabourState();
}

class _AddLabourState extends State<AddLabour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(
        title: 'Labour In',
        color: const Color(0xFF04BF8A),
        textColor: Colors.white,
        onTap: () {
          // Get.to(const VisitorAddedSuccessfully(), id: securityGuardNavigation);
        },
      ),
      appBar: CommonAppBar(
        title: 'Add Labour',
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
            const Gap(10),
            CommanTextFieldUpdated2(
              labelText: "Full Name",
              hintText: "Full Name",
              obscureText: false,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your visitor name.';
                }

                return null;
              },
              onChanged: (value) {},
            ).paddingAll(8),
            const Gap(10),
            CommanTextFieldUpdated2(
              labelText: "Mobile Number",
              hintText: "Mobile Number",
              obscureText: false,
              validator: (value) {
                // if (value!.isEmpty) {
                //   return 'Please enter your mobile number.';
                // }

                // if (!GlobalValidator.isValidMobileNumber(value)) {
                //   return 'Please enter a valid mobile number.';
                // }

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
              child: Center(
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
            ),
            const Gap(10),
            CommanTextFieldUpdated2(
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
                        //height: 0,
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
                      onTap: () async {},
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
                                //height: 0,
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
                        //height: 0,
                      ),
                    ),
                    const Gap(20),
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
                    const Gap(20),
                    Row(
                      children: [
                        Container(
                          width: 120,
                          height: 45,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFAF9FF),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0x195A57FF)),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Retake',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF353535),
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        const Gap(10),
                        Container(
                          width: 120,
                          height: 45,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF5A57FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Add',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
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

Future<File?> captureImage() async {
  final returnedImage =
      await ImagePicker().pickImage(source: ImageSource.camera);
  final File file = File(returnedImage!.path);
  return file;
}
