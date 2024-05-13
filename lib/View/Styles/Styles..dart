import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextStyles {
  static TextStyle titleMedium(BuildContext context) {
    return TextStyle(
      color: const Color.fromRGBO(22, 22, 22, 1),
      fontSize: !context.isPhone ? 16 : 20,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle titleText(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF161616),
      fontSize: context.isPhone ? 22 : 44,
      fontWeight: context.isPhone ? FontWeight.w700 : FontWeight.w600,
    );
  }

  static TextStyle containerSubText(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF161616),
      fontSize: context.isPhone ? 14 : 40,
      fontWeight: context.isPhone ? FontWeight.w400 : FontWeight.w600,
    );
  }

  static TextStyle subTitleText(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF161616),
      fontSize: context.isPhone ? 14 : 32,
      fontWeight: context.isPhone ? FontWeight.w400 : FontWeight.w400,
    );
  }

  static TextStyle formLabelText(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF161616),
      fontSize: context.isPhone ? 16 : 23,
      fontWeight: context.isPhone ? FontWeight.w400 : FontWeight.w400,
    );
  }

  static TextStyle inputFieldHintText(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF161616),
      fontSize: context.isPhone ? 14 : 23,
      fontWeight: context.isPhone ? FontWeight.w400 : FontWeight.w400,
    );
  }

  static TextStyle inputFieldText(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF161616),
      fontSize: context.isPhone ? 16 : 23,
      fontWeight: context.isPhone ? FontWeight.w400 : FontWeight.w400,
    );
  }

  static TextStyle sideDrawerTitleText(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF161616),
      fontSize: context.isPhone ? 16 : 29,
      fontWeight: context.isPhone ? FontWeight.w700 : FontWeight.w400,
    );
  }

  static TextStyle assestsListDataTableHeadingText(BuildContext context) {
    return TextStyle(
      color: context.isPhone ? const Color(0x008b8b8b) : Colors.white,
      fontSize: context.isPhone ? 10 : 25,
      fontWeight: context.isPhone ? FontWeight.w400 : FontWeight.w700,
    );
  }

  static TextStyle assestsListDataTableDetailsText(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF161616),
      fontSize: context.isPhone ? 12 : 25,
      fontWeight: context.isPhone ? FontWeight.w600 : FontWeight.w500,
    );
  }

  static TextStyle bodylarge(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF161616),
      fontSize: !context.isPhone ? 14 : 18,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle bodysmall(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF161616),
      fontSize: !context.isPhone ? 12 : 14,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle bodyMedium(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF161616),
      fontSize: !context.isPhone ? 14 : 18,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle buttonText(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF161616),
      fontSize: context.isPhone ? 16 : 29.561,
      fontWeight: context.isPhone ? FontWeight.w700 : FontWeight.w700,
    );
  }
}

class AppColors {
  static Color primaryColor = const Color(0xFF161616);
  static Color scaffoldBackgroundColor = const Color(0xFFF7F7F7);
  static Color hint = const Color(0xFF595959);
}

class Snacks {
  static redSnack(String text) {
    ScaffoldMessenger.of(Get.context!).clearSnackBars();
    Get.showSnackbar(GetSnackBar(
      snackStyle: SnackStyle.GROUNDED,
      duration: const Duration(milliseconds: 1000),
      animationDuration: const Duration(milliseconds: 500),
      snackPosition: SnackPosition.BOTTOM,
      messageText: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w700,
          //  height: 0.06,
        ),
      ),
      backgroundColor: Colors.red,
    ));
  }

  static greenSnack(String text) {
    ScaffoldMessenger.of(Get.context!).clearSnackBars();
    Get.showSnackbar(GetSnackBar(
      duration: const Duration(milliseconds: 1000),
      animationDuration: const Duration(milliseconds: 500),
      snackStyle: SnackStyle.GROUNDED,
      messageText: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w700,
          //  height: 0.06,
        ),
      ),
      backgroundColor: Colors.green,
    ));

    //  snackbarKey.currentState?.showSnackBar(snackBar);
  }

  static ShapeDecoration elevatedShadowDecoration = ShapeDecoration(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
    shadows: const [
      BoxShadow(
        color: Color(0x0C000000),
        blurRadius: 10,
        offset: Offset(5, 5),
        spreadRadius: 0,
      )
    ],
  );
  static ShapeDecoration selectedelevatedShadowDecoration = ShapeDecoration(
    color: AppColors.primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
    shadows: const [
      BoxShadow(
        color: Color(0x0C000000),
        blurRadius: 10,
        offset: Offset(5, 5),
        spreadRadius: 0,
      )
    ],
  );
  static Color scaffoldBackgroundColor = const Color(0xFFFCFCFC);
}

class AppDecorations {
  static ShapeDecoration elevatedShadowDecoration = ShapeDecoration(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
    shadows: const [
      BoxShadow(
        color: Color(0x0C000000),
        blurRadius: 10,
        offset: Offset(5, 5),
        spreadRadius: 0,
      )
    ],
  );
  static ShapeDecoration selectedelevatedShadowDecoration = ShapeDecoration(
    color: AppColors.primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
    shadows: const [
      BoxShadow(
        color: Color(0x0C000000),
        blurRadius: 10,
        offset: Offset(5, 5),
        spreadRadius: 0,
      )
    ],
  );
  static Color scaffoldBackgroundColor = const Color(0xFFFCFCFC);
}
