import 'package:flutter/services.dart';

class TextUtils {
  static bool validateTYPE({required String? type, required String val}) {
    if (type == "mobile") {
      return true;
    } else if (type == "pan") {
      return isValidPAN(val);
    } else if (type == "gst") {
      return isValidGST(val);
    } else if (type == "num") {
      return true;
    } else if (type == "email") {
      return isValidEmail(val);
    } else if (type == "double") {
      return isDoubleNumber(val);
    } else if (type == "string") {
      return true;
    } else {
      return true;
    }
  }

  static int? length(String? type) {
    if (type == "mobile") {
      return 10;
    } else {
      return null;
    }
  }

  static TextInputType keyboardType(String? type) {
    if (type == "mobile") {
      return TextInputType.number;
    } else if (type == "pan") {
      return TextInputType.text;
    } else if (type == "gst") {
      return TextInputType.text;
    } else if (type == "num") {
      return TextInputType.number;
    } else if (type == "email") {
      return TextInputType.emailAddress;
    } else if (type == "double") {
      return TextInputType.number;
    } else if (type == "string") {
      return TextInputType.text;
    } else {
      return TextInputType.text;
    }
  }

  static List<TextInputFormatter>? inputFormatters(String? type) {
    if (type == "mobile") {
      return null;
    } else if (type == "pan") {
      return [UpperCaseTextFormatter()];
    } else if (type == "gst") {
      return [UpperCaseTextFormatter()];
    } else if (type == "num") {
      return null;
    } else if (type == "email") {
      return null;
    } else if (type == "double") {
      return null;
    } else if (type == "string") {
      return null;
    } else if (type == "name") {
      return [UpperCaseTextFormatter()];
    } else {
      return null;
    }
  }

  static TextCapitalization textCapitalization(String? type) {
    if (type == "mobile") {
      return TextCapitalization.none;
    } else if (type == "pan") {
      return TextCapitalization.characters;
    } else if (type == "gst") {
      return TextCapitalization.characters;
    } else if (type == "num") {
      return TextCapitalization.none;
    } else if (type == "email") {
      return TextCapitalization.none;
    } else if (type == "double") {
      return TextCapitalization.none;
    } else if (type == "string") {
      return TextCapitalization.none;
    } else if (type == "name") {
      return TextCapitalization.words;
    } else {
      return TextCapitalization.none;
    }
  }

  static bool isValidEmail(String email) {
    return RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
        .hasMatch(email);
  }

  static bool isDoubleNumber(String number) {
    return RegExp(r'^-?(([0-9]*)|(([0-9]*)\.([0-9]*)))$').hasMatch(number);
  }

  // static bool isMobilenum(String number) {
  //   return RegExp(r'/^([+]\d{2})?\d{10}$/').hasMatch(number);
  // }

  static String enumToString(dynamic obj) {
    return obj?.toString().split('.').last ?? "";
  }

  static String trimSpecific(String data, String trimChar) {
    if (data.startsWith(trimChar)) {
      return data.replaceFirst(trimChar, '');
    }
    return data;
  }

  static bool isValidGST(String gstNo) {
    return gstNo.contains(
        RegExp(r'[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}[1-9A-Z]{1}'));
  }

  static bool isValidPAN(String gstNo) {
    return gstNo.contains(RegExp('[A-Z]{5}[0-9]{4}[A-Z]{1}'));
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: capitalize(newValue.text),
      selection: newValue.selection,
    );
  }
}

String capitalize(String value) {
  if (value.trim().isEmpty) return "";
  return "${value[0].toUpperCase()}${value.substring(1).toLowerCase()}";
}
