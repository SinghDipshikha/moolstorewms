import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  String title;
  double? radius;
  void Function()? onTap;
  Color? color;
  String? leftIcon;
  CustomFloatingActionButton(
      {super.key, required this.title, this.leftIcon, this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 358,
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          decoration: ShapeDecoration(
            color: Colors.black,
            shadows: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 50.0,
              ),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w600,
                //height: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

