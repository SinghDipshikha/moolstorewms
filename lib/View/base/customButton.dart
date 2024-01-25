import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  bool glow;
  void Function()? onTap;
  double? width;
  String title;
  double? radius;

  Color? color;

  CustomButton(
      {Key? key,
      this.onTap,
      this.width,
      required this.title,
      this.glow = true,
      this.color,
      this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        highlightColor:
            color ?? Theme.of(context).primaryColor.withOpacity(0.1),
        // hoverColor: color?? Theme.of(context).primaryColor,
        splashColor: color ?? Theme.of(context).primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 60)),
        onTap: onTap,
        child: Container(
          width: width,
          alignment: Alignment.center,
          height: 60,
          decoration: BoxDecoration(
            color: glow ? color ?? Theme.of(context).primaryColor : null,
            borderRadius: BorderRadius.all(
              Radius.circular(radius ?? 60),
            ),
            border: glow
                ? null
                : Border.all(
                    width: 0.5, color: color ?? Theme.of(context).primaryColor),
            boxShadow: glow
                ? [
                    BoxShadow(
                      color: color ??
                          Theme.of(context).primaryColor.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ]
                : null,
          ),
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                // color: isDarkMode ? Colors.black :
                color: glow
                    ? Colors.white
                    : color ?? Theme.of(context).primaryColor,
                fontSize: 18),
          ),
        ),
      ),
    );
  }
}
