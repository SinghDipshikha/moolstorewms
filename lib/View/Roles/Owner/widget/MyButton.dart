import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyButton extends StatelessWidget {
  String title;
  double? width;
  void Function()? onTap;
  var suffixIcon;
Decoration? decoration ;
  var prefixIcon;
  bool glow;
  MyButton(
      {super.key,
      this.onTap,
      this.width,
      this.suffixIcon,
      this.prefixIcon,
      this.decoration,
      this.glow = false,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 50,
        alignment: Alignment.center,
        clipBehavior: Clip.antiAlias,
        decoration: decoration ?? ShapeDecoration(
          color: glow ? Colors.black : Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          shadows: glow
              ? null
              : [
                  const BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 2,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null && prefixIcon is String)
              Image.asset(
                prefixIcon!,
                color: glow ? Colors.white : Colors.black,
                height: 14,
              ),
            if (prefixIcon != null && prefixIcon is Widget) prefixIcon,
            Text(
              title,
              style: TextStyle(color: glow ? Colors.white : Colors.black),
            ).paddingSymmetric(horizontal: 10),
            if (suffixIcon != null && suffixIcon is String)
              Image.asset(
                suffixIcon!,
                color: glow ? Colors.white : Colors.black,
                height: 14,
              ),
            if (suffixIcon != null && suffixIcon is Widget) suffixIcon
          ],
        ).paddingSymmetric(horizontal: 12),
      ),
    );
  }
}
