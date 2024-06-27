import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/tagContainer.dart';
import 'package:moolwmsstore/utils/dimensions.dart';

class UnloadIngMaterial extends StatelessWidget {
  const UnloadIngMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title:
            const Text('Unloading Material', style: TextStyles.appBarTextStyle),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Movement of Direction',
              style: TextStyle(
                color: Color(0xFF595959),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
            ).paddingSymmetric(horizontal: 8),
            Container(
              width: double.infinity,
              decoration: ShapeDecoration(
                color: const Color(0xFFFAF9FF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x195E57FC)),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text(
                'Inward',
                style: TextStyle(
                  color: Color(0xFF353535),
                  fontSize: 18,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                ),
              ).paddingSymmetric(vertical: 8, horizontal: 8),
            ),
            const Gap(12),
            //"Product Details"
            TagContainer(
                title: "Product Details",
                child: Column(
                  children: List.generate(4, (i) {
                    return Container(
                      width: double.infinity,
                      height: 350,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0x335A57FF)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ).paddingSymmetric(horizontal: 14).paddingOnly(top: 12);
                  }),
                ))
          ],
        ),
      ).paddingSymmetric(
          vertical: Dimensions.vericalBodyPad,
          horizontal: Dimensions.horizontalBodyPad),
    );
  }
}
