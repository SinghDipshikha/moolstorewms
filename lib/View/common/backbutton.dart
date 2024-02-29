import 'package:flutter/material.dart';

class CustomBackbutton extends StatelessWidget {
  void Function()? onTap;
  CustomBackbutton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        "assets/icons/Back Button.png",
        height: 60,
      ),
    );
  }
}
