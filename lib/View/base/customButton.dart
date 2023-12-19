import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  void Function()? onTap ;
   CustomButton({Key? key ,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell

      (
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 71,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(60),
            ),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).primaryColor.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Text(
            "GET STARTED",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: isDarkMode ? Colors.black : Colors.white,
                fontSize: 18),
          ),
        ),
      ),
    );
  }
}
