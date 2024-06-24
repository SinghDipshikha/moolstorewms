import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  bool? obscureText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? labelText;
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
  Color? containercolor;
  MyTextField(
      {super.key,
      this.labelText,
      this.textCapitalization,
      this.borderRadius,
      this.obscureText,
      this.suffixIcon,
      this.onChanged,
      this.prefixIcon,
      this.containercolor,
      this.controller,
      this.maxLength,
      this.maxLines,
      this.inputFormatters,
      this.keyboardType,
      this.padding,
      this.hintText,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ?? const EdgeInsets.symmetric(vertical: 0, horizontal: 6),
      child: TextFormField(
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
          fillColor: containercolor ?? const Color(0xFFFAF9FF),
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
      ),
    );
  }
}
