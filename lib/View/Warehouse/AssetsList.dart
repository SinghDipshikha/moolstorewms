import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/Warehouse/assetEntry.dart';
import 'package:moolwmsstore/View/common/customButton.dart';

class AssetsList extends StatelessWidget {
  const AssetsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomButton2(
              onTap: () {
                Get.to(const AssetEntry());
              },
              leftIcon: "assets/icons/Add Red2.png",
              title: "Add New Asset")
          .paddingSymmetric(horizontal: 12),
      body: ListView.builder(itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Container(
              width: 340,
              height: 100,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 2,
                    offset: Offset(0, 1.50),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/icons/Asset Image.png"),
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Asset Name',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF8B8B8B),
                            fontSize: 10,
                            //fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Gap(10),
                        Text(
                          'Asset One',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Category',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF8B8B8B),
                            fontSize: 10,
                            //fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Gap(10),
                        Text(
                          'Category 1',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Asset Cost',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF8B8B8B),
                            fontSize: 10,
                            //fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Gap(10),
                        Text(
                          '\$1500',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        );
      }).paddingOnly(bottom: 100),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppColors.primaryColor,
        title: const Text("Asset List",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            )),
      ),
    );
  }
}
