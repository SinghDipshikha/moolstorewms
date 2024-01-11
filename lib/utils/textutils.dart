class TextUtils {
  static bool isValidEmail(String email) {
    return RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
        .hasMatch(email);
  }

  static bool isDoubleNumber(String number) {
    return RegExp(r'^-?(([0-9]*)|(([0-9]*)\.([0-9]*)))$').hasMatch(number);
  }

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
        RegExp('[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}[1-9A-Z]{1}'));
  }

  static bool isValidPAN(String gstNo) {
    return gstNo.contains(RegExp('[A-Z]{5}[0-9]{4}[A-Z]{1}'));
  }
}
