import 'package:dropdown_button2/dropdown_button2.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
            const Gap(22),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Asset Picture',
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
            ),
            const Gap(22),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Asset type',
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
            Container(
              color: const Color(0xFFFAF9FF),
              child: DropdownButtonFormField2<Map>(
                // value: ownerController.currentlySelectedWarehouse,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    gapPadding: 0,
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 27, 23, 251), width: 0.4),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  enabledBorder: const OutlineInputBorder(
                      gapPadding: 0,
                      borderSide:
                          BorderSide(width: 1, color: Color(0x195E57FC)),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                hint: const Text(
                  'All Warehouses',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    // fontSize: 20,
                    // fontFamily: 'SF Pro Display',
                    // fontWeight: FontWeight.w400,
                  ),
                ),
                items: [
                  {
                    "id": "",
                    "warehouse_name": "Hardware",
                  },
                  {
                    "id": "",
                    "warehouse_name": "Software",
                  }
                ].map((item) {
                  return DropdownMenuItem<Map>(
                    value: item,
                    child: Row(
                      children: [
                        Text(
                          "${item["warehouse_name"]}",
                          style: const TextStyle(
                            color: Colors.black,
                            // fontSize: 20,
                            // fontFamily: 'SF Pro Display',
                            // fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  );
                }).toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Required';
                  }
                  return null;
                },
                onChanged: (value) {
                  if (value != null) {
                    //  selectedWarehouseId = value["id"];
                  }
                },
                onSaved: (value) {
                  // ownerController.selectedTempType = value;
                  // ownerController.update();
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.zero,
                  //decoration: BoxDecoration(color: Colors.white),
                  overlayColor: WidgetStatePropertyAll(Colors.white),
                ),
                iconStyleData: IconStyleData(
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ).paddingOnly(right: 10),
                  iconSize: 24,
                ),
                dropdownStyleData: DropdownStyleData(
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 8)),
              ),
            ),
            const Gap(22),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Asset Category',
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
            Container(
              color: const Color(0xFFFAF9FF),
              child: DropdownButtonFormField2<Map>(
                // value: ownerController.currentlySelectedWarehouse,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    gapPadding: 0,
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 27, 23, 251), width: 0.4),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  enabledBorder: const OutlineInputBorder(
                      gapPadding: 0,
                      borderSide:
                          BorderSide(width: 1, color: Color(0x195E57FC)),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                hint: const Text(
                  'All Warehouses',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    // fontSize: 20,
                    // fontFamily: 'SF Pro Display',
                    // fontWeight: FontWeight.w400,
                  ),
                ),
                items: [
                  {
                    "id": "",
                    "warehouse_name": "Hardware",
                  },
                  {
                    "id": "",
                    "warehouse_name": "Software",
                  }
                ].map((item) {
                  return DropdownMenuItem<Map>(
                    value: item,
                    child: Row(
                      children: [
                        Text(
                          "${item["warehouse_name"]}",
                          style: const TextStyle(
                            color: Colors.black,
                            // fontSize: 20,
                            // fontFamily: 'SF Pro Display',
                            // fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  );
                }).toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Required';
                  }
                  return null;
                },
                onChanged: (value) {
                  if (value != null) {
                    //  selectedWarehouseId = value["id"];
                  }
                },
                onSaved: (value) {
                  // ownerController.selectedTempType = value;
                  // ownerController.update();
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.zero,
                  //decoration: BoxDecoration(color: Colors.white),
                  overlayColor: WidgetStatePropertyAll(Colors.white),
                ),
                iconStyleData: IconStyleData(
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ).paddingOnly(right: 10),
                  iconSize: 24,
                ),
                dropdownStyleData: DropdownStyleData(
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 8)),
              ),
            ),
            const Gap(22),
            CustomButton(title: "Submit"),
            const Gap(22),
          ],
        ),
      ).paddingSymmetric(
          vertical: Dimensions.vericalBodyPad,
          horizontal: Dimensions.horizontalBodyPad),
    );
  }
}
