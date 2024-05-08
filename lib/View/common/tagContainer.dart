import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TagContainer extends StatelessWidget {
  TagContainer({super.key, required this.child, required this.title});
  Widget child;
  String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10),
          // alignment: Alignment.center,
          height: 54,
          decoration: const ShapeDecoration(
            color: Color(0xFF5A57FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w600,
              //height: 0,
            ),
          ).paddingSymmetric(horizontal: 18),
        ),
        Container(
          width: double.infinity,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAF9FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              side: BorderSide(width: 1, color: Color(0x195A57FF)),
            ),
          ),
          child: child,
        ).paddingOnly(top: 36)
      ],
    );
  }
}
