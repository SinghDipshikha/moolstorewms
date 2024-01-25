import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  bool? obscureText;
  Widget? suffixIcon;
  String labelText;
  int? maxLength;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  List<TextInputFormatter>? inputFormatters;
  EdgeInsetsGeometry? padding;
  TextEditingController? controller;
  MyTextField(
      {Key? key,
      required this.labelText,
      this.obscureText,
      this.suffixIcon,
      this.controller,
      this.maxLength,this.inputFormatters,this.keyboardType,this.padding,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: controller,
        //   key: _mobNoKey,
        validator: validator,
        inputFormatters: inputFormatters,
        // onSaved: (val) {
        //   //  mobileNo.number = val;
        // },
        obscureText: obscureText ?? false,
        maxLength: maxLength,
        decoration: InputDecoration(
            labelText: labelText,
            labelStyle: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w700),
            suffixIcon: suffixIcon,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)))),
      ),
    );
  }
}
