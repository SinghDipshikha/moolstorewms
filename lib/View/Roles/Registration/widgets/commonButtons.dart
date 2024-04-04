import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CommonSubmitButton extends StatelessWidget {
  bool glow;
  void Function()? onTap;
  double? width;
  String title;
  double? radius;

  Color? color;
  String? leftIcon;
  String? rightIcon;
  CommonSubmitButton(
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
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
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
                  fontFamily: 'Nunito',
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

class CommonButtonForMobile extends StatefulWidget {
  String title;
  void Function()? onTap;
  CommonButtonForMobile({super.key, required this.title});

  @override
  State<CommonButtonForMobile> createState() => _CommonButtonForMobileState();
}

class _CommonButtonForMobileState extends State<CommonButtonForMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174,
      height: 34,
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
      child: Center(
        child: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ),
    );
  }
}
