import 'dart:convert';
import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/View/widget/commonTextField.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/dimensions.dart';

class DocumentImage {
  final String label;
  Uint8List? image;

  DocumentImage({required this.label, this.image});
}

class AddEmployeeDocumentsDetails extends StatefulWidget {
  const AddEmployeeDocumentsDetails({super.key});

  @override
  State<AddEmployeeDocumentsDetails> createState() =>
      _AddEmployeeDocumentsDetailsState();
}

class _AddEmployeeDocumentsDetailsState
    extends State<AddEmployeeDocumentsDetails> {
  final ImagePicker picker = ImagePicker();
  final List<DocumentImage> documentImages = [
    DocumentImage(label: 'Profile Picture'),
    DocumentImage(label: 'PAN Card'),
    DocumentImage(label: 'Aadhar Card (Front)'),
    DocumentImage(label: 'Aadhar Card (Back)'),
    DocumentImage(label: 'Degree Certificate'),
    DocumentImage(label: 'Cancelled Cheque'),
    DocumentImage(label: 'Experience Letter'),
    DocumentImage(label: 'Bank Receipt'),
  ];

  Future<void> pickImage(String documentType) async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );
    if (pickedFile != null) {
      final bytes = await pickedFile.readAsBytes();
      setState(() {
        documentImages.firstWhere((doc) => doc.label == documentType).image =
            bytes;
      });
    }
  }

  Map<String, String> extractDocumentData(String labelText) {
    String? imagePath = documentImages
                .firstWhere((doc) => doc.label == labelText)
                .image !=
            null
        ? 'https://example.com/uploads/${labelText.replaceAll(' ', '_')}.png'
        : null;

    return {
      labelText.toLowerCase().replaceAll(' ', '_'): imagePath ?? "",
    };
  }

  void submitForm() {
    List<Map<String, String>> labelNames =
        documentImages.map((doc) => extractDocumentData(doc.label)).toList();

    Map<String, dynamic> postBody = {
      "user_id": 3,
      "file_path": "https://example.com/uploads/",
      "file_type": "png",
      "label_name": labelNames,
      "updated_by": 2
    };

    print(jsonEncode(postBody));
  }

  Widget buildDocumentField(String labelText) {
    return GetBuilder<HRController>(
      builder: (hrController) {
        final document =
            documentImages.firstWhere((doc) => doc.label == labelText);
        return document.image != null
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
                        // width: 220,
                        child: Image.memory(
                          document.image!,
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
                              document.image = null;
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
                onTap: () {
                  pickImage(labelText);
                },
                child: CommanTextFieldForDocuments(
                  labelText: labelText,
                ),
              );
      },
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
        title: 'Next',
        onTap: () {
          submitForm();
        },
      ),
      body: SingleChildScrollView(
        child: GetBuilder<HRController>(initState: (state) {
          Get.find<HRController>().getEmployeeDocumnets();
        }, builder: (hRController) {
          return Column(
            children: hRController.userDocumnetsModel!.label_name!.map((doc) {
              return InkWell(
                onTap: () {
                  picker
                      .pickImage(
                    source: ImageSource.gallery,
                    imageQuality: 50,
                  )
                      .then((v) {
                    if (v != null) {
                      hRController.uploadImage(v).then((imgUrl) {
                        int i = hRController.userDocumnetsModel!.label_name!
                            .indexOf(doc);
                        List<Map<String, Map<String, String?>>>? m =
                            hRController.userDocumnetsModel!.label_name;

                        m![i] = {
                          "key": {"${m[i]["key"]?.keys.toList()[0]}": imgUrl}
                        };

                        hRController.userDocumnetsModel = hRController
                            .userDocumnetsModel!
                            .copyWith(label_name: m);
                        hRController.update();
                        hRController.updateDocuments();
                      });
                    }
                  });
                  //  hRController.uploadImage()
                },
                child: Container(
                  height: 60,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFAF9FF),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x195A57FF)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        doc["key"]!.keys.toList()[0],
                        style: const TextStyle(
                          color: Color(0xFF353535),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.32,
                        ),
                      )
                    ],
                  ).paddingSymmetric(horizontal: 8),
                ).paddingSymmetric(vertical: 8),
              );
            }).toList(),
          );
        }),
      ).paddingSymmetric(
          vertical: Dimensions.vericalBodyPad,
          horizontal: Dimensions.horizontalBodyPad),
    );
  }
}
