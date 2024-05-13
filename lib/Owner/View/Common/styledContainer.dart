import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StyledContainer extends StatelessWidget {
  StyledContainer({super.key, required this.child, this.width, this.height});
  double? width;
  double? height;
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFFAF9FF),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0x195A57FF)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: child.paddingSymmetric(vertical: 12, horizontal: 12),
    );
  }
}
