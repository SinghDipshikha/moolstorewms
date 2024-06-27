import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/Model/Asset/assetCatoegories.dart';
import 'package:moolwmsstore/Owner/Model/Asset/assetType.dart';
import 'package:moolwmsstore/Owner/View/Assets/assetsList.dart';
import 'package:moolwmsstore/Owner/View/Common/ownerCommon.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/globals.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';

class AssetEntry extends StatefulWidget {
  int warehouseId;
  AssetEntry({super.key, required this.warehouseId});

  @override
  State<AssetEntry> createState() => _AssetEntryState();
}

class _AssetEntryState extends State<AssetEntry> {
  bool uploadasset = false;
  final ImagePicker picker = ImagePicker();
  String? invoice_photo;
  bool uploadinginvoice_photo = false;
  bool uploadingassetPicture = false;

  String? assetPicture;
  TextEditingController assetname = TextEditingController();
  TextEditingController invoiceNum = TextEditingController();
  TextEditingController assetCost = TextEditingController();
  AssetType? selectedAssetType;
  AssetCatoegory? selectedAsseCategory;
  final _formKey = GlobalKey<FormState>();

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
      body: uploadasset
          ? const Center(
              child: SpinKitDoubleBounce(
                color: Color(0xFF5A57FF),
              ),
            )
          : SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonTextField(
                      controller: assetname,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          {
                            return 'required';
                          }
                        } else {
                          return null;
                        }
                      },
                      labelText: 'Asset Name',
                      hintText: 'Enter asset name',
                    ),
                    const Gap(22),
                    CommonTextField(
                      controller: invoiceNum,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          {
                            return 'required';
                          }
                        } else {
                          return null;
                        }
                      },
                      labelText: 'Invoice Number',
                      hintText: 'Enter invoice number',
                    ),
                    const Gap(22),
                    CommonTextField(
                      controller: assetCost,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          {
                            return 'required';
                          }
                        } else {
                          return null;
                        }
                      },
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
                        picker.pickImage(source: ImageSource.camera).then((v) {
                          if (v != null) {
                            setState(() {
                              uploadinginvoice_photo = true;
                            });
                            Get.find<OwnerController>()
                                .apiClient
                                .uploadImage(v)
                                .then((imgUrl) {
                              setState(() {
                                uploadinginvoice_photo = false;
                                invoice_photo = imgUrl;
                              });
                            });
                          }
                        });
                        //   Get.find<OwnerController>().apiClient.uploadImage();
                      },
                      child: Container(
                        width: double.infinity,
                        height: 86,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFFAF9FF),
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0x195A57FF)),
                          ),
                        ),
                        child: uploadinginvoice_photo
                            ? const Center(
                                child: SpinKitDoubleBounce(
                                  color: Color(0xFF5A57FF),
                                ),
                              )
                            : invoice_photo != null
                                ? Image.network(
                                    invoice_photo!,
                                    fit: BoxFit.contain,
                                  )
                                : Row(
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
                        picker.pickImage(source: ImageSource.camera).then((v) {
                          if (v != null) {
                            setState(() {
                              uploadingassetPicture = true;
                            });
                            Get.find<OwnerController>()
                                .apiClient
                                .uploadImage(v)
                                .then((imgUrl) {
                              setState(() {
                                uploadingassetPicture = false;
                                assetPicture = imgUrl;
                              });
                            });
                          }
                        });
                        //   Get.find<OwnerController>().apiClient.uploadImage();
                      },
                      child: Container(
                        height: 86,
                        width: double.infinity,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFFAF9FF),
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0x195A57FF)),
                          ),
                        ),
                        child: uploadingassetPicture
                            ? const Center(
                                child: SpinKitDoubleBounce(
                                  color: Color(0xFF5A57FF),
                                ),
                              )
                            : assetPicture != null
                                ? Image.network(
                                    assetPicture!,
                                    fit: BoxFit.contain,
                                  )
                                : Row(
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
                      child: DropdownButtonFormField2<AssetCatoegory>(
                        value: selectedAsseCategory,
                        // value: ownerController.currentlySelectedWarehouse,
                        decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                            gapPadding: 0,
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 27, 23, 251),
                                width: 0.4),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                              gapPadding: 0,
                              borderSide: BorderSide(
                                  width: 1, color: Color(0x195E57FC)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),

                        items: Get.find<OwnerController>()
                            .assetCatoegories!
                            .map((item) {
                          return DropdownMenuItem<AssetCatoegory>(
                            value: item,
                            child: Row(
                              children: [
                                Text(
                                  item.name,
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
                            selectedAsseCategory = value;
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
                            text: 'Asset Type',
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
                      child: DropdownButtonFormField2<AssetType>(
                        value: selectedAssetType,
                        decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                            gapPadding: 0,
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 27, 23, 251),
                                width: 0.4),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                              gapPadding: 0,
                              borderSide: BorderSide(
                                  width: 1, color: Color(0x195E57FC)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        items:
                            Get.find<OwnerController>().assetTypes!.map((item) {
                          return DropdownMenuItem<AssetType>(
                            value: item,
                            child: Row(
                              children: [
                                Text(
                                  item.name,
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
                            selectedAssetType = value;
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
                    CustomButton(
                      title: "Submit",
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          if (assetPicture == null || invoice_photo == null) {
                            Snacks.redSnack("Not Fan of images ..huhhh");
                          } else {
                            setState(() {
                              uploadasset = true;
                            });
                            Get.find<OwnerController>()
                                .apiClient
                                .postData("asset/addAsset", {
                              "warehouse_id": widget.warehouseId,
                              "user_id": Get.find<OwnerController>().user.id,
                              "asset_name": assetname.text,
                              "asset_category_id": selectedAsseCategory!.id,
                              "invoice_no": invoiceNum.text,
                              "invoice_photo": invoice_photo,
                              "asset_cost": double.parse(assetCost.text),
                              "asset_type_id": selectedAssetType!.id,
                              "asset_image": assetPicture
                              // "template_file":"template@#d123"
                            }).then((res) {
                              if (res.data["message"] == "asset found") {
                                Snacks.greenSnack("Asset Added Successfully");
                                Get.off(
                                    AssetsList(
                                      warehouseId: widget.warehouseId,
                                    ),
                                    id: ownerNavigationKey);
                              } else {
                                setState(() {
                                  uploadasset = false;
                                });
                              }
                            });
                          }
                        }
                      },
                    ),
                    const Gap(22),
                  ],
                ),
              ),
            ).paddingSymmetric(
              vertical: Dimensions.vericalBodyPad,
              horizontal: Dimensions.horizontalBodyPad),
    );
  }
}
