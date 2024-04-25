import 'package:flutter/material.dart';

class CheckedInInfoScreen extends StatefulWidget {
  const CheckedInInfoScreen({super.key});

  @override
  State<CheckedInInfoScreen> createState() => _CheckedInInfoScreenState();
}

class _CheckedInInfoScreenState extends State<CheckedInInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 318,
            height: 152,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/images/AccountPhoto.png"),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 3.35,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Colors.white.withOpacity(0.30000001192092896),
                ),
                borderRadius: BorderRadius.circular(33.52),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
