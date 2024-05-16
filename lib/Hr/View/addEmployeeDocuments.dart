import 'dart:typed_data';

//import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moolwmsstore/Hr/View/staffList.dart';
import 'package:moolwmsstore/Hr/View/widget/commonAppBar.dart';
// import 'package:image_picker_web/image_picker_web.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/View/widget/commonTextField.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/globals.dart';

////@RoutePage()
class AddEmployeeDocumentsDetails extends StatefulWidget {
  const AddEmployeeDocumentsDetails({super.key});

  @override
  State<AddEmployeeDocumentsDetails> createState() =>
      _AddEmployeeDocumentsDetailsState();
}

class _AddEmployeeDocumentsDetailsState
    extends State<AddEmployeeDocumentsDetails> {
  final ImagePicker picker = ImagePicker();
  Uint8List? bytesFromPicker;
  Uint8List? assetImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
          title: 'Documents',
          onTap: () {
            Get.to(const HrEmployeeList(), id: hrNavigationKey);
          }),
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
                          color: context.isPhone
                              ? Colors.transparent
                              : Colors.black,
                          width: 2)),
                  width: double.infinity,
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      assetImage != null
                          ? DottedBorder(
                              borderType: BorderType.RRect,
                              radius: const Radius.circular(12),
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    SizedBox(
                                      height: 200,
                                      width: 220,
                                      child: Image.memory(
                                        assetImage!,
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
                                              assetImage = null;
                                            });
                                          },
                                          icon: const Icon(
                                            Icons.close_rounded,
                                            color: Colors.white,
                                          )),
                                    ).paddingOnly(top: 5, right: 5)
                                  ],
                                ),
                              ),
                            ).paddingOnly(bottom: 90)
                          : InkWell(
                              onTap: () async {
                                if (context.isPhone) {
                                  await picker
                                      .pickImage(source: ImageSource.gallery)
                                      .then((value) {
                                    setState(() {
                                      // assetImage = value;
                                    });
                                  });
                                } else {
                                  //   await ImagePickerWeb.getImageAsBytes()
                                  //       .whenComplete(() => null)
                                  //       .then((value) {
                                  //     if (value != null) {
                                  //       setState(() {
                                  //         assetImage = value;
                                  //       });
                                  //     }
                                  //   });
                                }
                              },
                              child: CommanTextFieldForDocuments(
                                labelText: 'Profile Picture ',
                                // documentType: 'Upload Profile Picture',
                              ),
                            ),
                      CommanTextFieldForDocuments(
                        labelText: 'PAN Card',
                        // documentType: 'Upload PAN Card',
                      ),
                      CommanTextFieldForDocuments(
                        labelText: 'Aadhar Card (Front)',
                        // documentType: 'Aadhar Card Front',
                      ),
                      CommanTextFieldForDocuments(
                        labelText: 'Aadhar Card (Back)',
                        //   documentType: 'Aadhar Card Back',
                      ),
                      CommanTextFieldForDocuments(
                        labelText: 'Degree Certificate',
                        //   documentType: 'Upload Degree Certificate',
                      ),
                      CommanTextFieldForDocuments(
                        labelText: 'Cancelled Cheque',
                        // documentType: 'Upload Cancelled Cheque',
                      ),
                      CommanTextFieldForDocuments(
                        labelText: 'Experience Letter',
                        //documentType: 'Upload Experience Letter',
                      ),
                      CommanTextFieldForDocuments(
                        labelText: 'Bank Receipt',
                        //documentType: 'Upload Experience Letter',
                      )
                    ],
                  ),
                ).paddingAll(20),
                context.isPhone
                    ? Container()
                    : Container(
                        color: const Color(0xFFF7F7F7),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0).copyWith(),
                          child: const Text(
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
                        //   context.back();
                      },
                      title: 'Previous',
                    ),
                    const Gap(20),
                    CommonNextButton(
                      title: 'next'.tr,
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
