import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

class CommanTextField extends StatelessWidget {
  bool? obscureText;
  String? labelText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? hintText;
  int? maxLength;
  Color? containerColor;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  List<TextInputFormatter>? inputFormatters;
  EdgeInsetsGeometry? padding;
  TextEditingController? controller;
  void Function(String)? onChanged;
  TextCapitalization? textCapitalization;
  double? borderRadius;
  int? maxLines;

  CommanTextField(
      {super.key,
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
      this.containerColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "$labelText",
                style: const TextStyle(
                  color: Color(0xFFACACAC),
                  fontSize: 16,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                ),
              ),
              // const TextSpan(
              //   text: '*',
              //   style: TextStyle(
              //       fontSize: 16,
              //       fontFamily: 'SF Pro Display',
              //       fontWeight: FontWeight.w400,
              //       color: Colors.red),
              // ),
            ],
          ),
        ),
        const Gap(8),
        TextFormField(
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
            errorStyle: const TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
