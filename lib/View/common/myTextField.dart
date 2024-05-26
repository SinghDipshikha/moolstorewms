import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';

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
  Color? containercolor ;
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
    return Container(
      decoration: ShapeDecoration(
        color:  containercolor ?? Color(0xFFFAF9FF),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0x195E57FC)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Padding(
        padding:
            padding ?? const EdgeInsets.symmetric(vertical: 0, horizontal: 6),
        child: TextFormField(
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
              // contentPadding: ,
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Color(0xFFACACAC),
                fontSize: 12,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                //  //height: 0,
              ),
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              border: InputBorder.none),
        ),
      ),
    );
  }
}

class MyTextField2 extends StatelessWidget {
  bool? obscureText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? labelText;
  String? type;
  int? maxLength;
  String? Function(String?)? validator;

  EdgeInsetsGeometry? padding;
  TextEditingController? controller;
  void Function(String)? onChanged;
  TextCapitalization? textCapitalization;
  double? borderRadius;
  MyTextField2(
      {super.key,
      this.labelText,
      this.textCapitalization,
      this.borderRadius,
      this.obscureText,
      this.suffixIcon,
      this.onChanged,
      this.prefixIcon,
      this.controller,
      this.maxLength,
      this.type,
      this.padding,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 15),
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
      child: Padding(
        padding:
            padding ?? const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
        child: TextFormField(
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          onChanged: onChanged,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          onFieldSubmitted: (value) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          // keyboardType: ,
          controller: controller,
          validator: validator,
          inputFormatters: const [],
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
              hintText: labelText,
              hintStyle: TextStyle(color: AppColors.hint),
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              border: InputBorder.none),
        ),
      ),
    );
  }
}
