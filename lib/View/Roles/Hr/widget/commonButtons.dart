import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CommonNextButton extends StatelessWidget {
  bool glow;
  void Function()? onTap;
  double? width;
  String title;
  double? radius;

  Color? color;
  String? leftIcon;
  String? rightIcon;
  CommonNextButton(
      {super.key,
      this.onTap,
      this.width,
      required this.title,
      this.glow = true,
      this.color,
      this.leftIcon,
      this.rightIcon,
      this.radius});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(radius ?? 60)),
      onTap: onTap,
      child: Container(
        constraints:
            context.isPhone ? null : const BoxConstraints(maxWidth: 210),
        padding: const EdgeInsets.symmetric(horizontal: 43, vertical: 20),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          shadows: const [
            BoxShadow(
              color: Color(0x0C000000),
              blurRadius: 2,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Next',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Gap(20),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class CommonPreviousButton extends StatelessWidget {
  bool glow;
  void Function()? onTap;
  double? width;
  String title;
  double? radius;

  Color? color;
  String? leftIcon;
  String? rightIcon;
  CommonPreviousButton(
      {super.key,
      this.onTap,
      this.width,
      required this.title,
      this.glow = true,
      this.color,
      this.leftIcon,
      this.rightIcon,
      this.radius});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(radius ?? 60)),
      onTap: onTap,
      child: Container(
        constraints:
            context.isPhone ? null : const BoxConstraints(maxWidth: 205),
        padding: const EdgeInsets.symmetric(horizontal: 43, vertical: 20),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          shadows: const [
            BoxShadow(
              color: Color(0x0C000000),
              blurRadius: 2,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            Gap(15),
            Expanded(
              child: Text(
                'Previous',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,

                  fontWeight: FontWeight.w700,
                  // overflow: TextOverflow.ellipsis
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
                height: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
