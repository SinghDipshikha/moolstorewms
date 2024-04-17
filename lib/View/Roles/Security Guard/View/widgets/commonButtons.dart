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
  CommonButtonForMobile({super.key, required this.title});

  @override
  State<CommonButtonForMobile> createState() => _CommonButtonForMobileState();
}

class _CommonButtonForMobileState extends State<CommonButtonForMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: ShapeDecoration(
        color: const Color(0xFF5A57FF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Center(
        child: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
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

class CommonCheckInButton extends StatefulWidget {
  String title;
  CommonCheckInButton({super.key, required this.title});

  @override
  State<CommonCheckInButton> createState() => _CommonCheckInButtonState();
}

class _CommonCheckInButtonState extends State<CommonCheckInButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 294,
      height: 55,
      decoration: ShapeDecoration(
        color: const Color(0x3302A676),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0x4C02A676)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: ShapeDecoration(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              image: const DecorationImage(
                image: AssetImage("assets/icons/check_in.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            widget.title,
            style: const TextStyle(
              color: Color(0xFF161616),
              fontSize: 26,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}

class CommonCheckOutButtons extends StatefulWidget {
  String title;
  CommonCheckOutButtons({super.key, required this.title});

  @override
  State<CommonCheckOutButtons> createState() => _CommonCheckOutButtonsState();
}

class _CommonCheckOutButtonsState extends State<CommonCheckOutButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 294,
      height: 55,
      decoration: ShapeDecoration(
        color: const Color(0x33E33442),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0x4C02A676)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: ShapeDecoration(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              image: const DecorationImage(
                image: AssetImage("assets/icons/check_out.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            widget.title,
            style: const TextStyle(
              color: Color(0xFF161616),
              fontSize: 26,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}

class CommonApproveAndDeclineButton extends StatefulWidget {
  const CommonApproveAndDeclineButton({
    super.key,
  });

  @override
  State<CommonApproveAndDeclineButton> createState() =>
      _CommonApproveAndDeclineButtonState();
}

class _CommonApproveAndDeclineButtonState
    extends State<CommonApproveAndDeclineButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: const ShapeDecoration(
            shape: OvalBorder(
              side: BorderSide(
                width: 2,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: Color(0xFFACACAC),
              ),
            ),
          ),
          child: const Icon(
            Icons.check,
            color: Colors.black,
            size: 10,
          ),
        ),
        const Gap(10),
        Container(
          width: 20,
          height: 20,
          decoration: const ShapeDecoration(
            shape: OvalBorder(
              side: BorderSide(
                width: 2,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: Color(0xFFACACAC),
              ),
            ),
          ),
          child: const Icon(
            Icons.check,
            color: Colors.black,
            size: 10,
          ),
        )
      ],
    );
  }
}
