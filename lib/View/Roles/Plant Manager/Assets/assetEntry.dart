import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/customButton.dart';
import 'package:moolwmsstore/View/common/myTextField.dart';

//@RoutePage()
class AssetEntry extends StatefulWidget {
  const AssetEntry({super.key});

  @override
  State<AssetEntry> createState() => _AssetEntryState();
}

class _AssetEntryState extends State<AssetEntry> {
  final ImagePicker picker = ImagePicker();
// Pick an image.
  XFile? invoiceImage;
  XFile? assetImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomButton2(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        actionsAlignment: MainAxisAlignment.spaceBetween,
                        actions: [
                          Container(
                            width: 85,
                            height: 37,
                            alignment: Alignment.center,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(21.92),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x11000000),
                                  blurRadius: 3.51,
                                  offset: Offset(0, 0.44),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                          Container(
                            width: 85,
                            height: 37,
                            alignment: Alignment.center,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(21.92),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x11000000),
                                  blurRadius: 3.51,
                                  offset: Offset(0, 0.44),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: const Text(
                              'Add',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                        backgroundColor: Colors.white,
                        title: const Text(
                          'Add Template',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(21.92),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x11000000),
                                    blurRadius: 3.51,
                                    offset: Offset(0, 0.44),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Upload Template',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const Gap(10),
                                  Image.asset(
                                    "assets/icons/Group 1000010017.png",
                                    height: 14,
                                  )
                                ],
                              ),
                            ).paddingSymmetric(vertical: 4),
                            const Gap(10),
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Life Cycle ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                      color: Color(0xFFFF0000),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ).paddingSymmetric(vertical: 4),
                            Container(
                              height: 50,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 9.64),
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.82),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x0C000000),
                                    blurRadius: 2,
                                    offset: Offset(0, 1.50),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: DropdownButton(
                                isExpanded: true,
                                alignment: Alignment.center,
                                underline: Container(),
                                items: const [
                                  DropdownMenuItem(child: Text("A"))
                                ],
                                onChanged: (value) {},
                              ),
                            ).paddingSymmetric(vertical: 4),
                          ],
                        ),
                      );
                    });
              },
              rightIcon: "assets/icons/submit.png",
              title: "Submit")
          .paddingSymmetric(horizontal: 12),
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: false,
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          'Asset Entry',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Asset Name ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: Color(0xFFFF0000),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ).paddingSymmetric(vertical: 4),
            MyTextField(
              labelText: "",
            ).paddingSymmetric(vertical: 4),
            const Gap(10),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Asset Category ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: Color(0xFFFF0000),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ).paddingSymmetric(vertical: 4),
            Container(
              height: 50,
              padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 9.64),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.82),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 2,
                    offset: Offset(0, 1.50),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: DropdownButton(
                isExpanded: true,
                alignment: Alignment.center,
                underline: Container(),
                items: const [DropdownMenuItem(child: Text("A"))],
                onChanged: (value) {},
              ),
            ).paddingSymmetric(vertical: 4),
            const Gap(10),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Invoice Number ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: Color(0xFFFF0000),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ).paddingSymmetric(vertical: 4),
            MyTextField(
              labelText: "",
            ).paddingSymmetric(vertical: 4),
            const Gap(10),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Invoice Photo ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: Color(0xFFFF0000),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ).paddingSymmetric(vertical: 4),
            invoiceImage != null
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
                            child: Image.file(
                              File(invoiceImage!.path),
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
                                    invoiceImage = null;
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
                  )
                : InkWell(
                    onTap: () async {
                      await picker
                          .pickImage(source: ImageSource.gallery)
                          .then((value) {
                        setState(() {
                          invoiceImage = value;
                        });
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF595959),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21.92),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x11000000),
                            blurRadius: 3.51,
                            offset: Offset(0, 0.44),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Upload Image',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Gap(10),
                          Image.asset(
                            "assets/icons/Group 1000010017.png",
                            height: 14,
                          )
                        ],
                      ),
                    ).paddingSymmetric(vertical: 4),
                  ),
            const Gap(10),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Asset Cost ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: Color(0xFFFF0000),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ).paddingSymmetric(vertical: 4),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.82),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x0C000000),
                        blurRadius: 2,
                        offset: Offset(0, 1.50),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Image.asset("assets/icons/Rupee Icon.png"),
                ),
                const Gap(10),
                Expanded(
                  child: MyTextField(
                    labelText: "",
                  ),
                )
              ],
            ),
            const Gap(10),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Asset Type ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: Color(0xFFFF0000),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ).paddingSymmetric(vertical: 4),
            Container(
              height: 50,
              padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 9.64),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.82),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 2,
                    offset: Offset(0, 1.50),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: DropdownButton(
                isExpanded: true,
                alignment: Alignment.center,
                underline: Container(),
                items: const [DropdownMenuItem(child: Text("A"))],
                onChanged: (value) {},
              ),
            ).paddingSymmetric(vertical: 4),
            const Gap(20),
            Row(
              children: [
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Add Template ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: Color(0xFFFF0000),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ).paddingSymmetric(vertical: 4),
                const Spacer(),
                Image.asset(
                  "assets/icons/Add Red.png",
                  height: 24,
                ),
                const Gap(5),
                const Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            const Gap(20),
            assetImage != null
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
                            child: Image.file(
                              File(assetImage!.path),
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
                      await picker
                          .pickImage(source: ImageSource.gallery)
                          .then((value) {
                        setState(() {
                          assetImage = value;
                        });
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF595959),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21.92),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x11000000),
                            blurRadius: 3.51,
                            offset: Offset(0, 0.44),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Take Asset Picture',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Gap(10),
                          Image.asset(
                            "assets/icons/Camera Icon.png",
                            height: 14,
                          )
                        ],
                      ),
                    ).paddingSymmetric(vertical: 4),
                  ),
          ],
        ).paddingSymmetric(horizontal: 12, vertical: 12),
      ),
    );
  }
}
