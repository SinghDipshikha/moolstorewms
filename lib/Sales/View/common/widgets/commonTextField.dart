import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

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

  CommonTextField({
    this.containerColor,
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "$labelText",
                  style: const TextStyle(
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
        TextFormField(
          textAlignVertical: TextAlignVertical.center,
          maxLength: maxLength,
          maxLines: maxLines,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
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
            counterStyle: const TextStyle(color: Colors.black),
            alignLabelWithHint: true,
            contentPadding: const EdgeInsets.only(left: 8),
            filled: true,
            fillColor: containerColor ?? const Color(0xFFFAF9FF),
            // contentPadding: const EdgeInsets.only(left: 8),
            focusedBorder: const OutlineInputBorder(
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