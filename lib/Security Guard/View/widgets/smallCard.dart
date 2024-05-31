import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SmallCard extends StatelessWidget {
  void Function()? onTap;
  String imagePath;
  String title;
  Color cardColor;
  SmallCard(
      {super.key, this.onTap, required this.imagePath, required this.title ,required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 106,
          decoration: ShapeDecoration(
            color: cardColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Center(
            child: Column(
              children: [
                const Gap(20),
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Gap(10),
                Text(
                  title,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: -0.64,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
