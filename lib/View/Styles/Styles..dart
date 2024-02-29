import 'package:flutter/material.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../main.dart';

class TextStyles {
  static TextStyle titleMedium(context) {
    return TextStyle(
      color: const Color.fromRGBO(22, 22, 22, 1),
      fontSize: !isMobile(context) ? 16.sp : 20.sp,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle bodyMedium(context) {
    return TextStyle(
      color: const Color(0xFF161616),
      fontSize: !isMobile(context) ? 12.sp : 15.sp,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle bodylarge(context) {
    return TextStyle(
      color: const Color(0xFF161616),
      fontSize: !isMobile(context) ? 14.sp : 18.sp,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle bodysmall(context) {
    return TextStyle(
      color: const Color(0xFF161616),
      fontSize: !isMobile(context) ? 12.sp : 14.sp,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle buttonText(context) {
    return TextStyle(
      color: const Color(0xFF161616),
      fontSize: isMobile(context) ? 15.sp : 12.sp,
      fontWeight: FontWeight.w700,
    );
  }
}

class AppColors {
  static Color primaryColor = const Color(0xFF161616);
  static Color scaffoldBackgroundColor = const Color(0xFFF7F7F7);
  static Color hint = const Color(0xFF595959);
}

class AppDecorations {
  static redSnack(String text) {
    final SnackBar snackBar = SnackBar(
      duration: const Duration(seconds: 2),
      content: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.red,
    );
    snackbarKey.currentState?.showSnackBar(snackBar);
    // ScaffoldMessenger.of(Get.context).clearSnackBars();
    // Get.showSnackbar(GetSnackBar(
    //   duration: const Duration(milliseconds: 1000),
    //   animationDuration: const Duration(milliseconds: 500),
    //   snackPosition: SnackPosition.BOTTOM,
    //   messageText: Text(
    //     text,
    //     style: const TextStyle(
    //       color: Colors.white,
    //       fontSize: 18,

    //       fontWeight: FontWeight.w700,
    //       //  height: 0.06,
    //     ),
    //   ),
    //   backgroundColor: Colors.red,
    // ));
  }

  static greenSnack(String text) {
    // ScaffoldMessenger.of(Get.context).clearSnackBars();
    final SnackBar snackBar = SnackBar(
      duration: const Duration(seconds: 2),
      content: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.green,
    );
    snackbarKey.currentState?.showSnackBar(snackBar);
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
