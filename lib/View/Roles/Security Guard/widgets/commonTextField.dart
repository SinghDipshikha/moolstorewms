import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
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
                  constraints: context.isPhone
                      ? null
                      : const BoxConstraints(maxWidth: 100),
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

class CommanTextFieldTickets extends StatelessWidget {
  bool? obscureText;
  String? labelText;

  String? hintText;

  String? Function(String?)? validator;

  TextEditingController? controller;
  void Function(String)? onChanged;
  TextCapitalization? textCapitalization;
  double? borderRadius;

  CommanTextFieldTickets({
    super.key,
    this.labelText,
    this.hintText,
    this.textCapitalization,
    this.borderRadius,
    this.onChanged,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints:
            context.isPhone ? null : const BoxConstraints(maxWidth: 500),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Text(
              '$labelText',
              style: const TextStyle(
                color: Color(0xFF595959),
                fontSize: 10,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
                height: 0.31,
              ),
            )),
            const SizedBox(
              width: 40,
            ),
            const Gap(10),
            Container(
              width: 200,
              height: 27,
              padding:
                  const EdgeInsets.only(top: 2, left: 10, right: 20, bottom: 2),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)),
                shadows: const [
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 1.30,
                    offset: Offset(0, 0.90),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: TextFormField(
                textCapitalization:
                    textCapitalization ?? TextCapitalization.none,
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                onChanged: onChanged,
                onFieldSubmitted: (value) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                controller: controller,
                validator: validator,
                obscureText: obscureText ?? false,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintTextDirection: TextDirection.ltr,
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 10),
                  border: InputBorder.none,
                  errorStyle: const TextStyle(fontSize: 12),
                ),
              ).paddingSymmetric(
                vertical: 0,
                horizontal: 4,
              ),
            ),
          ],
        ));
  }
}

class CommanTextFieldNewTheme extends StatelessWidget {
  bool? obscureText;
  String? labelText;

  String? hintText;

  String? Function(String?)? validator;

  TextEditingController? controller;
  void Function(String)? onChanged;
  TextCapitalization? textCapitalization;
  double? borderRadius;

  CommanTextFieldNewTheme({
    super.key,
    this.labelText,
    this.hintText,
    this.textCapitalization,
    this.borderRadius,
    this.onChanged,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$labelText',
          style: const TextStyle(
            color: Color(0xFFACACAC),
            fontSize: 16,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        const Gap(10),
        Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 36,
            decoration: ShapeDecoration(
              color: const Color(0xFFFAF9FF),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0x195E57FC)),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: TextFormField(
              // expands: true,
              textCapitalization: textCapitalization ?? TextCapitalization.none,
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              onChanged: onChanged,
              onFieldSubmitted: (value) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              controller: controller,
              validator: validator,
              obscureText: obscureText ?? false,
              decoration: InputDecoration(
                hintText: hintText,
                contentPadding: EdgeInsets.zero,
                hintStyle: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
                border: InputBorder.none,
                errorStyle: const TextStyle(fontSize: 18),
              ),
            )),
      ],
    );
  }
}
