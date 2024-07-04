import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class AssignPalletSheet extends StatelessWidget {
  String palletNo;
  AssignPalletSheet({super.key, required this.palletNo});

  @override
  Widget build(BuildContext context) {
    const greyTextStyle = TextStyle(
      color: Color(0xFFBABABA),
      fontSize: 14,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w400,
    );
    const blackTextStyle = TextStyle(
      color: Color(0xFF353535),
      fontSize: 12,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w500,
    );
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFF353535),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/Vector 644.png"),
            ],
          ).paddingAll(12),
          Text(
            'Pallet No. $palletNo',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
            ),
          ),
          const Divider().paddingSymmetric(vertical: 12),
          Row(
            children: [
              const Expanded(
                  flex: 2,
                  child: Text(
                    'Product',
                    style: greyTextStyle,
                  )),
              const Expanded(
                  flex: 1,
                  child: Text(
                    'Units',
                    style: greyTextStyle,
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Action',
                      style: greyTextStyle,
                    ),
                  )),
            ],
          ).paddingSymmetric(horizontal: 16),
          const Gap(12),
          Expanded(
            child: ListView(
              children: List.generate(10, (i) {
                return Container(
                  width: double.infinity,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 2,
                          child: Text(
                            'Product',
                            style: blackTextStyle,
                          )),
                      const Expanded(
                          flex: 1,
                          child: Text(
                            'Units',
                            style: blackTextStyle,
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Action',
                              style: blackTextStyle,
                            ),
                          )),
                    ],
                  ).paddingSymmetric(horizontal: 6),
                ).paddingSymmetric(vertical: 8, horizontal: 10);
              }),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 150,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF94F46),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const Gap(12),
              Expanded(
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF02A676),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Assign',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ).paddingAll(12)
        ],
      ),
    );
  }
}
