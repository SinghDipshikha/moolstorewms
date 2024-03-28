import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';

class TitleContainer extends StatelessWidget {
  String title;
  Widget child;
  TitleContainer({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return context.isPhone
        ? child
        : Stack(
            alignment: Alignment.topLeft,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 5, color: AppColors.primaryColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: child,
                ),
              ),
              Container(
                  // alignment: Alignment.center,
                  color: AppColors.scaffoldBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                      ),
                      // style: TextStyles.titleMedium(context),
                    ),
                  )).paddingOnly(left: 20)
            ],
          );
  }
}
