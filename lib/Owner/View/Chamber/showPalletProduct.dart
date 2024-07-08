import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Chamber/gridChamber.dart';
import 'package:moolwmsstore/utils/globals.dart';

class ShowPalletProduct extends StatelessWidget {
  GridItem pallet;
  ShowPalletProduct({super.key, required this.pallet});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height / 2,
      color: Colors.amber,
      child: SingleChildScrollView(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset("assets/icons/Vector 644.png")),
            ],
          ).paddingAll(12),
          Text(
            'Pallet No. ${pallet.pallet}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
            ),
          ),
          const Divider().paddingSymmetric(vertical: 12),
          ...List.generate(pallet.products!.length, (productIndex) {
            return Text(pallet.products![productIndex].toJson().toString());
          })
        ],
      )),
    );
  }
}
