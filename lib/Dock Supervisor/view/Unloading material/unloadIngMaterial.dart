import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Loadingunloadking/indentDetails.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Loadingunloadking/unloadingMaterial.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/vehicle.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsController.dart';
import 'package:moolwmsstore/Dock%20Supervisor/view/Chamber%20Assign/assignChamber.dart';
import 'package:moolwmsstore/Sales/View/common/widgets/salesCommonWidgets.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/globals.dart';

class UnloadIngMaterial extends StatefulWidget {
  UnloadIngMaterial({super.key, required this.entry});
  Vehicle entry;

  @override
  State<UnloadIngMaterial> createState() => _UnloadIngMaterialState();
}

class _UnloadIngMaterialState extends State<UnloadIngMaterial> {
  final ImagePicker picker = ImagePicker();
  IndentDetails? indentDetails;
  // ignore: prefer_const_constructors
  UnloadingMaterial unloadingMaterial = UnloadingMaterial();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    Get.find<DmsController>()
        .dmsRepo
        .getindentDetails(indentId: widget.entry.indent_number ?? "")
        .then((v) {
      setState(() {
        unloadingMaterial = unloadingMaterial.copyWith(
            dock_id: widget.entry.dock_id,
            type: widget.entry.type,
            type_id: widget.entry.type_id,
            user_id: Get.find<DmsController>().user.id,
            product_details: v!.product_details!
                .map((e) => MaterialProductDetail.fromJson(e.toJson()))
                .toList());
        indentDetails = v;
      });
    });
  }

  void submit() {
    setState(() {
      isLoading = true;
    });
    Get.find<DmsController>()
        .dmsRepo
        .unloadingMaterial(unloadingMaterial)
        .then((v) {
      if (v) {
        Get.off(
            AssignChamber(
              entry: widget.entry,
            ),
            id: dmsNavigationKey);
      } else {
        setState(() {
          isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title:
            const Text('Unloading Material', style: TextStyles.appBarTextStyle),
      ),
      body: indentDetails == null
          ? const Center(
              child: SpinKitDoubleBounce(
                color: Color(0xFF5A57FF),
              ),
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Movement of Direction',
                    style: TextStyle(
                      color: Color(0xFF595959),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                  ).paddingSymmetric(horizontal: 8),
                  Container(
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFAF9FF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x195E57FC)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      widget.entry.movement ?? "--",
                      style: const TextStyle(
                        color: Color(0xFF353535),
                        fontSize: 18,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                      ),
                    ).paddingSymmetric(vertical: 8, horizontal: 8),
                  ),
                  const Gap(12),
                  //"Product Details"
                  TagContainer(
                      title: "Product Details",
                      child: Column(
                        children: List.generate(
                            unloadingMaterial.product_details!.length, (i) {
                          return Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0x335A57FF)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TitileWithContainer(
                                  title: 'Product Name',
                                  productDetail: unloadingMaterial
                                      .product_details![i].product_name,
                                ),
                                const Gap(12),
                                TitileWithContainer(
                                  title: 'Quantity',
                                  productDetail: unloadingMaterial
                                      .product_details![i].qty
                                      .toString(),
                                ),
                                const Gap(12),
                                TitileWithContainer(
                                  title: 'Units',
                                  productDetail: (indentDetails!
                                              .product_details![i].unit ??
                                          0)
                                      .toString(),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Is units recieved is not in provided correct ?',
                                      style: TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ).paddingSymmetric(horizontal: 10),
                                    const Spacer(),
                                    Checkbox(
                                      value: unloadingMaterial
                                          .product_details![i].isUnitsDifferent,
                                      onChanged: (v) {
                                        if (v == false) {
                                          List<MaterialProductDetail> pd =
                                              unloadingMaterial.product_details!
                                                  .toList();
                                          pd[i] = pd[i].copyWith(
                                              unit: indentDetails!
                                                  .product_details![i].unit,
                                              isUnitsDifferent: v ?? false);
                                          setState(() {
                                            unloadingMaterial =
                                                unloadingMaterial.copyWith(
                                                    product_details: pd);
                                          });
                                        } else {
                                          List<MaterialProductDetail> pd =
                                              unloadingMaterial.product_details!
                                                  .toList();
                                          pd[i] = pd[i].copyWith(
                                              isUnitsDifferent: v ?? false);
                                          setState(() {
                                            unloadingMaterial =
                                                unloadingMaterial.copyWith(
                                                    product_details: pd);
                                          });
                                        }

                                        // unloadingMaterial = unloadingMaterial.copyWith()
                                      },
                                      checkColor: Colors.white,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4))),
                                    )
                                  ],
                                ),
                                if (unloadingMaterial
                                    .product_details![i].isUnitsDifferent)
                                  CommonTextField(
                                    onChanged: (p0) {
                                      List<MaterialProductDetail> pd =
                                          unloadingMaterial.product_details!
                                              .toList();
                                      pd[i] =
                                          pd[i].copyWith(unit: int.parse(p0));
                                      setState(() {
                                        unloadingMaterial = unloadingMaterial
                                            .copyWith(product_details: pd);
                                      });
                                    },
                                    initialValue: (unloadingMaterial
                                                .product_details![i].unit ??
                                            "")
                                        .toString(),
                                    labelText: "Please Provide units",
                                  ),
                                const Gap(12),
                                if (unloadingMaterial
                                        .product_details![i].expiry_date !=
                                    null)
                                  TitileWithContainer(
                                    imagePath: "assets/icons/calendar.png",
                                    title: 'Expiry Date',
                                    productDetail: AppConstants.dateformatter
                                        .format(unloadingMaterial
                                            .product_details![i]
                                            .expiry_date as DateTime),
                                  ),
                                const Gap(6),
                                const Text(
                                  'Sample Images',
                                  style: TextStyle(
                                    color: Color(0xFF595959),
                                    fontSize: 12,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ).paddingSymmetric(horizontal: 12, vertical: 6),
                                Wrap(
                                  children: [
                                    if (unloadingMaterial.product_details![i]
                                            .sample_images !=
                                        null)
                                      ...List.generate(
                                          unloadingMaterial.product_details![i]
                                              .sample_images!.length,
                                          (imgIndex) => DottedBorder(
                                                borderType: BorderType.RRect,
                                                radius:
                                                    const Radius.circular(22),
                                                color: AppColors.primaryColor,
                                                strokeWidth: 1,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: NetworkImage(
                                                              unloadingMaterial
                                                                      .product_details![
                                                                          i]
                                                                      .sample_images![
                                                                  imgIndex])),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              22)),
                                                  width: 86,
                                                  height: 60,
                                                ),
                                              ).paddingOnly(
                                                  bottom: 4, right: 6)),
                                    InkWell(
                                      onTap: () {
                                        picker
                                            .pickImage(
                                                source: ImageSource.gallery,
                                                imageQuality: 50)
                                            .then((v) {
                                          if (v != null) {
                                            Get.find<DmsController>()
                                                .apiClient
                                                .uploadImage(v)
                                                .then((imgLink) {
                                              if (imgLink != null) {
                                                Logger().d(imgLink);
                                                List<String> images = [imgLink];
                                                if (unloadingMaterial
                                                        .product_details![i]
                                                        .sample_images !=
                                                    null) {
                                                  for (var link
                                                      in unloadingMaterial
                                                          .product_details![i]
                                                          .sample_images!) {
                                                    images.add(link);
                                                  }
                                                }

                                                Logger().d(images);

                                                List<MaterialProductDetail> pd =
                                                    unloadingMaterial
                                                        .product_details!
                                                        .toList();
                                                setState(() {
                                                  pd[i] = pd[i].copyWith(
                                                      sample_images: images);
                                                  unloadingMaterial =
                                                      unloadingMaterial
                                                          .copyWith(
                                                              product_details:
                                                                  pd);
                                                });
                                                Logger().i(unloadingMaterial);
                                              }
                                            });
                                          }
                                        });
                                      },
                                      child: DottedBorder(
                                        borderType: BorderType.RRect,
                                        radius: const Radius.circular(22),
                                        color: AppColors.primaryColor,
                                        strokeWidth: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(22)),
                                          width: 86,
                                          height: 60,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.camera,
                                                color: AppColors.primaryColor,
                                                size: 18,
                                              ),
                                              Text(
                                                'Take Picture',
                                                style: TextStyle(
                                                  color: AppColors.primaryColor,
                                                  fontSize: 9,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ).paddingOnly(bottom: 4, right: 6),
                                  ],
                                ),
                                const Gap(6),
                                Row(
                                  children: [
                                    const Text(
                                      'Is any products damaged?',
                                      style: TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ).paddingSymmetric(horizontal: 10),
                                    const Spacer(),
                                    Checkbox(
                                      value: unloadingMaterial
                                          .product_details![i].isDamaged,
                                      onChanged: (v) {
                                        List<MaterialProductDetail> pd =
                                            unloadingMaterial.product_details!
                                                .toList();
                                        pd[i] = pd[i]
                                            .copyWith(isDamaged: v ?? false);
                                        setState(() {
                                          unloadingMaterial = unloadingMaterial
                                              .copyWith(product_details: pd);
                                        });

                                        // unloadingMaterial = unloadingMaterial.copyWith()
                                      },
                                      checkColor: Colors.white,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4))),
                                    )
                                  ],
                                ),
                                if (unloadingMaterial
                                    .product_details![i].isDamaged)
                                  Wrap(
                                    children: [
                                      if (unloadingMaterial.product_details![i]
                                              .damage_images !=
                                          null)
                                        ...List.generate(
                                            unloadingMaterial
                                                .product_details![i]
                                                .damage_images!
                                                .length,
                                            (imgIndex) => DottedBorder(
                                                  borderType: BorderType.RRect,
                                                  radius:
                                                      const Radius.circular(22),
                                                  color: AppColors.primaryColor,
                                                  strokeWidth: 1,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: NetworkImage(
                                                                unloadingMaterial
                                                                        .product_details![
                                                                            i]
                                                                        .damage_images![
                                                                    imgIndex])),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22)),
                                                    width: 86,
                                                    height: 60,
                                                  ),
                                                ).paddingOnly(
                                                    bottom: 4, right: 6)),
                                      InkWell(
                                        onTap: () {
                                          picker
                                              .pickImage(
                                                  source: ImageSource.gallery,
                                                  imageQuality: 50)
                                              .then((v) {
                                            if (v != null) {
                                              Get.find<DmsController>()
                                                  .apiClient
                                                  .uploadImage(v)
                                                  .then((imgLink) {
                                                if (imgLink != null) {
                                                  Logger().d(imgLink);
                                                  List<String> images = [
                                                    imgLink
                                                  ];
                                                  if (unloadingMaterial
                                                          .product_details![i]
                                                          .damage_images !=
                                                      null) {
                                                    for (var link
                                                        in unloadingMaterial
                                                            .product_details![i]
                                                            .damage_images!) {
                                                      images.add(link);
                                                    }
                                                  }

                                                  Logger().d(images);

                                                  List<MaterialProductDetail>
                                                      pd = unloadingMaterial
                                                          .product_details!
                                                          .toList();
                                                  setState(() {
                                                    pd[i] = pd[i].copyWith(
                                                        damage_images: images);
                                                    unloadingMaterial =
                                                        unloadingMaterial
                                                            .copyWith(
                                                                product_details:
                                                                    pd);
                                                  });
                                                  Logger().i(unloadingMaterial);
                                                }
                                              });
                                            }
                                          });
                                        },
                                        child: DottedBorder(
                                          borderType: BorderType.RRect,
                                          radius: const Radius.circular(22),
                                          color: AppColors.primaryColor,
                                          strokeWidth: 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(22)),
                                            width: 86,
                                            height: 60,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.camera,
                                                  color: AppColors.primaryColor,
                                                  size: 18,
                                                ),
                                                Text(
                                                  'Take Picture',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryColor,
                                                    fontSize: 9,
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ).paddingOnly(bottom: 4, right: 6),
                                    ],
                                  ),
                                if (unloadingMaterial
                                    .product_details![i].isDamaged)
                                  CommonTextField(
                                    onChanged: (p0) {
                                      List<MaterialProductDetail> pd =
                                          unloadingMaterial.product_details!
                                              .toList();
                                      pd[i] = pd[i].copyWith(damage_reason: p0);
                                      setState(() {
                                        unloadingMaterial = unloadingMaterial
                                            .copyWith(product_details: pd);
                                      });
                                    },
                                    initialValue: unloadingMaterial
                                        .product_details![i].damage_reason,
                                    labelText: "Please Describe damage",
                                  ).paddingSymmetric(vertical: 12)
                              ],
                            ),
                          )
                              .paddingSymmetric(horizontal: 14)
                              .paddingOnly(top: 12);
                        }),
                      ).paddingSymmetric(vertical: 12)),
                  const Gap(12),
                  isLoading
                      ? const Center(
                          child: SpinKitDoubleBounce(
                            color: Color(0xFF5A57FF),
                          ),
                        )
                      : CustomButton(
                          title: "Next",
                          onTap: submit,
                        )
                ],
              ),
            ).paddingSymmetric(
              vertical: Dimensions.vericalBodyPad,
              horizontal: Dimensions.horizontalBodyPad),
    );
  }
}

class TitileWithContainer extends StatelessWidget {
  String title;
  String productDetail;
  String? imagePath;
  TitileWithContainer(
      {super.key,
      required this.title,
      this.imagePath,
      required this.productDetail});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF595959),
            fontSize: 12,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ).paddingSymmetric(horizontal: 10),
        const Gap(8),
        Container(
          width: double.infinity,
          decoration: ShapeDecoration(
            color: const Color(0xFFFAF9FF),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0x195E57FC)),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Row(
            children: [
              if (imagePath != null)
                Image.asset(
                  imagePath ?? "assets/icons/calendar.png",
                  height: 22,
                ).paddingOnly(left: 12, right: 6),
              Text(
                productDetail,
                style: const TextStyle(
                  color: Color(0xFF353535),
                  fontSize: 15,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                ),
              ).paddingSymmetric(vertical: 6, horizontal: 10),
            ],
          ),
        )
      ],
    );
  }
}

class CommonTextField extends StatelessWidget {
  bool? obscureText;
  String? labelText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? hintText;
  int? maxLength;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  List<TextInputFormatter>? inputFormatters;
  EdgeInsetsGeometry? padding;
  TextEditingController? controller;
  void Function(String)? onChanged;
  TextCapitalization? textCapitalization;
  double? borderRadius;
  int? maxLines;
  Color? containerColor;
  String? initialValue;

  CommonTextField(
      {this.containerColor,
      super.key,
      this.labelText,
      this.hintText,
      this.textCapitalization,
      this.borderRadius,
      this.obscureText,
      this.suffixIcon,
      this.onChanged,
      this.prefixIcon,
      this.controller,
      this.maxLength,
      this.maxLines,
      this.inputFormatters,
      this.keyboardType,
      this.padding,
      this.validator,
      this.initialValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Text(
            labelText ?? '',
            style: const TextStyle(
              color: Color(0xFF595959),
              fontSize: 12,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
            ),
          ).paddingSymmetric(horizontal: 10),
        const Gap(
          8,
        ),
        TextFormField(
          initialValue: initialValue,
          textAlignVertical: TextAlignVertical.center,
          maxLength: maxLength,
          maxLines: maxLines,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          onFieldSubmitted: (value) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          onChanged: onChanged,
          keyboardType: keyboardType,
          controller: controller,
          validator: validator,
          inputFormatters: inputFormatters,
          obscureText: obscureText ?? false,
          style: const TextStyle(
            color: Color(0xFF353535),
            fontSize: 15,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            counterStyle: const TextStyle(color: Colors.black),
            alignLabelWithHint: true,
            contentPadding: const EdgeInsets.only(left: 8, top: 0),

            filled: true,
            fillColor: containerColor ?? const Color(0xFFFAF9FF),
            // contentPadding: const EdgeInsets.only(left: 8),
            focusedBorder: const OutlineInputBorder(
                gapPadding: 0,
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 27, 23, 251), width: 0.4),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 169, 153, 246), width: 0.2),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xFFACACAC),
              fontSize: 14,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
            ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 0.1),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            errorStyle: const TextStyle(fontSize: 14),
          ),
        )
      ],
    );
  }
}

// 