import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.title,
      this.onTap,
      this.colors,
      this.titleTextColor});

  String title;
  Color? titleTextColor;
  void Function()? onTap;
  List<Color>? colors;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 45,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: const Alignment(1.00, 0.00),
              end: const Alignment(-1, 0),
              colors:
                  colors ?? [const Color(0xFF2D2D2D), const Color(0xFF1F1F1F)],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: titleTextColor ?? Colors.white,
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w600,
            ),
          ),
        ));
  }
}
