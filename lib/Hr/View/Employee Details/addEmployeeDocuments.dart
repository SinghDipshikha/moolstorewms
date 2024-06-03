import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/View/widget/commonTextField.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';

class AddEmployeeDocumentsDetails extends StatefulWidget {
  const AddEmployeeDocumentsDetails({super.key});

  @override
  State<AddEmployeeDocumentsDetails> createState() =>
      _AddEmployeeDocumentsDetailsState();
}

class _AddEmployeeDocumentsDetailsState
    extends State<AddEmployeeDocumentsDetails> {
  final ImagePicker picker = ImagePicker();
  Map<String, Uint8List?> documentImages = {
    'Profile Picture': null,
    'PAN Card': null,
    'Aadhar Card (Front)': null,
    'Aadhar Card (Back)': null,
    'Degree Certificate': null,
    'Cancelled Cheque': null,
    'Experience Letter': null,
    'Bank Receipt': null,
  };

  Future<void> pickImage(String documentType) async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );
    if (pickedFile != null) {
      final bytes = await pickedFile.readAsBytes();
      setState(() {
        documentImages[documentType] = bytes;
      });
    }
  }

  Widget buildDocumentField(String labelText) {
    return Column(
      children: [
        documentImages[labelText] != null
            ? DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      SizedBox(
                        height: 200,
                        width: 220,
                        child: Image.memory(
                          documentImages[labelText]!,
                          fit: BoxFit.cover,
                        ),
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColors.primaryColor,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            setState(() {
                              documentImages[labelText] = null;
                            });
                          },
                          icon: const Icon(
                            Icons.close_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ).paddingOnly(top: 5, right: 5)
                    ],
                  ),
                ),
              ).paddingOnly(bottom: 10)
            : InkWell(
                onTap: () => pickImage(labelText),
                child: CommanTextFieldForDocuments(
                  labelText: labelText,
                ),
              ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Documents',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(
        title: 'Submit',
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Stack(alignment: Alignment.topLeft, children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:
                          context.isPhone ? Colors.transparent : Colors.black,
                      width: 2,
                    ),
                  ),
                  width: double.infinity,
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    spacing: 10,
                    runSpacing: 10,
                    children: documentImages.keys
                        .map((key) => buildDocumentField(key))
                        .toList(),
                  ),
                ).paddingAll(20),
                context.isPhone
                    ? Container()
                    : Container(
                        color: const Color(0xFFF7F7F7),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Documents',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )).paddingOnly(left: 80),
              ]),
              if (!context.isPhone)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonPreviousButton(
                      onTap: () {
                        // context.back();
                      },
                      title: 'Previous',
                    ),
                    const Gap(20),
                    CommonNextButton(
                      title: 'Next',
                      onTap: () {
                        // if (_formKey.currentState!.validate()) {
                        //   _formKey.currentState!.save();
                        //   print('Valid email: $_email');
                        // }
                      },
                    ),
                  ],
                ).paddingAll(20)
            ],
          ),
        ),
      ),
    );
  }
}
