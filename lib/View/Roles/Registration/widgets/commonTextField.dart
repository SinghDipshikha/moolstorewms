import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';

class CommanTextField extends StatelessWidget {
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

  CommanTextField({
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
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: context.isPhone ? null : const BoxConstraints(maxWidth: 500),
      child: context.isPhone
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints:
                      context.isPhone ? null : const BoxConstraints(maxWidth: 100),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "$labelText",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '*',
                          style: TextStyles.bodyMedium(context)
                              .copyWith(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ),
                // Text("$labelText",
                //     style: TextStyle(
                //       fontSize: 16,
                //       fontWeight: FontWeight.w400,
                //     )),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius ?? 4.82),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x0C000000),
                        blurRadius: 4,
                        offset: Offset(3, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: TextFormField(
                    //  expands: true,
                    maxLines: maxLines,
                    textCapitalization:
                        textCapitalization ?? TextCapitalization.none,
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    onChanged: onChanged,
                    onFieldSubmitted: (value) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    keyboardType: keyboardType,
                    controller: controller,
                    validator: validator,
                    inputFormatters: inputFormatters,
                    obscureText: obscureText ?? false,
                    decoration: InputDecoration(
                      hintText: hintText,
                      hintStyle: const TextStyle(color: Colors.grey),
                      suffixIcon: suffixIcon,
                      prefixIcon: prefixIcon,
                      border: InputBorder.none,
                      errorStyle: const TextStyle(fontSize: 12),
                    ),
                  ).paddingSymmetric(
                    vertical: 0,
                    horizontal: 4,
                  ),
                ),
              ],
            )
          : Row(
              children: [
                SizedBox(
                  width: 220,
                  child: Text.rich(
                    overflow: TextOverflow.ellipsis,
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "$labelText",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '*',
                          style: TextStyles.bodyMedium(context)
                              .copyWith(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ),
                //  Gap(20),
                Expanded(
                  child: Container(
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(borderRadius ?? 4.82),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0C000000),
                          blurRadius: 4,
                          offset: Offset(3, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: TextFormField(
                      //  expands: true,
                      maxLines: maxLines,
                      textCapitalization:
                          textCapitalization ?? TextCapitalization.none,
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      onChanged: onChanged,
                      onFieldSubmitted: (value) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      keyboardType: keyboardType,
                      controller: controller,
                      validator: validator,
                      inputFormatters: inputFormatters,
                      obscureText: obscureText ?? false,
                      decoration: InputDecoration(
                        hintText: hintText,
                        hintStyle: const TextStyle(color: Colors.grey),
                        suffixIcon: suffixIcon,
                        prefixIcon: prefixIcon,
                        border: InputBorder.none,
                        errorStyle: const TextStyle(fontSize: 12),
                      ),
                    ).paddingSymmetric(
                      vertical: 2,
                      horizontal: 6,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

class CommanTextFieldWithoutLabel extends StatelessWidget {
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

  CommanTextFieldWithoutLabel({
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
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: context.isPhone ? null : const BoxConstraints(maxWidth: 300),
      child: context.isPhone
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                const SizedBox(
                  width: 40,
                ),
                Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius ?? 4.82),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x0C000000),
                        blurRadius: 4,
                        offset: Offset(3, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: TextFormField(
                    //  expands: true,
                    maxLines: maxLines,
                    textCapitalization:
                        textCapitalization ?? TextCapitalization.none,
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    onChanged: onChanged,
                    onFieldSubmitted: (value) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    keyboardType: keyboardType,
                    controller: controller,
                    validator: validator,
                    inputFormatters: inputFormatters,
                    obscureText: obscureText ?? false,
                    decoration: InputDecoration(
                      hintText: hintText,
                      hintStyle: const TextStyle(color: Colors.grey),
                      suffixIcon: suffixIcon,
                      prefixIcon: prefixIcon,
                      border: InputBorder.none,
                      errorStyle: const TextStyle(fontSize: 12),
                    ),
                  ).paddingSymmetric(
                    vertical: 0,
                    horizontal: 4,
                  ),
                ),
              ],
            )
          : Row(
              children: [
               
                Expanded(
                  child: Container(
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(borderRadius ?? 4.82),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0C000000),
                          blurRadius: 4,
                          offset: Offset(3, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: TextFormField(
                      //  expands: true,
                      maxLines: maxLines,
                      textCapitalization:
                          textCapitalization ?? TextCapitalization.none,
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      onChanged: onChanged,
                      onFieldSubmitted: (value) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      keyboardType: keyboardType,
                      controller: controller,
                      validator: validator,
                      inputFormatters: inputFormatters,
                      obscureText: obscureText ?? false,
                      decoration: InputDecoration(
                        hintText: hintText,
                        hintStyle: const TextStyle(color: Colors.grey),
                        suffixIcon: suffixIcon,
                        prefixIcon: prefixIcon,
                        border: InputBorder.none,
                        errorStyle: const TextStyle(fontSize: 12),
                      ),
                    ).paddingSymmetric(
                      vertical: 2,
                      horizontal: 6,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
