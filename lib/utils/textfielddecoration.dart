import 'package:flutter/material.dart';

class DecorationUtils {
  static InputDecoration getTextFieldDecoration(
     {required BuildContext context, String? labelText}) {
    return InputDecoration(
      labelText: labelText,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Theme.of(context).primaryColor),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      labelStyle: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(fontWeight: FontWeight.w700),
    );
  }
}
