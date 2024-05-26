import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moolwmsstore/Owner/View/Common/ownerCommon.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';

class AssetEntry extends StatelessWidget {
  AssetEntry({super.key});
  final ImagePicker picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Asset Entry',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonTextField(
              labelText: 'Asset Name',
              hintText: 'Enter asset name',
            ),
            const Gap(22),
            CommonTextField(
              labelText: 'Invoice Number',
              hintText: 'Enter invoice number',
            ),
            const Gap(22),
            CommonTextField(
              inputFormatters: [
                NumberTextInputFormatter(
                  integerDigits: 10,
                  decimalDigits: 2,
                  maxValue: '1000000000.00',
                  decimalSeparator: '.',
                  groupDigits: 3,
                  groupSeparator: ',',
                  allowNegative: false,
                  overrideDecimalPoint: true,
                  insertDecimalPoint: false,
                  insertDecimalDigits: true,
                ),
              ],
              keyboardType: TextInputType.number,
              prefixIcon: const Text(
                "₹",
                style: TextStyle(
                  color: Color(0xFFACACAC),
                  fontSize: 22,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                ),
              ).paddingOnly(top: 10, left: 10),
              labelText: 'Asset Cost',
              hintText: '0',
            ),
            const Gap(22),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Invoice Photo',
                    style: TextStyle(
                      color: Color(0xFF595959),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(
              8,
            ),
            InkWell(
              onTap: () {
                picker.pickImage(source: ImageSource.camera);
                //   Get.find<OwnerController>().apiClient.uploadImage();
              },
              child: Container(
                height: 86,
                decoration: const ShapeDecoration(
                  color: Color(0xFFFAF9FF),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0x195A57FF)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/icons/Frame 1261155743.png",
                        height: 32,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ).paddingSymmetric(
          vertical: Dimensions.vericalBodyPad,
          horizontal: Dimensions.horizontalBodyPad),
    );
  }
}
