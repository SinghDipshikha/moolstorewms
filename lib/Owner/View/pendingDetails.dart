import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PendingDetails extends StatelessWidget {
  const PendingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5A57FF),
      body: SafeArea(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              children: [
                Text(
                  'You profile is incomplete',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                    //height: 0,
                    letterSpacing: -0.96,
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                //   Gap(10),
                Text(
                  'You warehouses are missing some of the\nimportant details.',
                  style: TextStyle(
                    color: Color(0xFFC2C0FF),
                    fontSize: 16,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    //height: 0,
                    letterSpacing: -0.64,
                  ),
                ),
              ],
            ),
            Expanded(child: Image.asset("assets/icons/Group 1000010583.png")),
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white),
                child: const Text(
                  'Add Details',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF353535),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w600,
                    //height: 0,
                    letterSpacing: 0.32,
                  ),
                )).paddingSymmetric(vertical: 20),
            const Text(
              'Take a moment and add your\nWarehouse details.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w400,
                //height: 0,
                letterSpacing: -0.72,
              ),
            )
          ],
        ).paddingAll(20),
      ),
    );
  }
}
