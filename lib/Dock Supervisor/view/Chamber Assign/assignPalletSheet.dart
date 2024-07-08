import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Chamber/dockProduct.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Chamber/gridChamber.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsController.dart';

class AssignPalletSheet extends StatelessWidget {
  GridItem pallet;
  AssignPalletSheet({super.key, required this.pallet});

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
            'Pallet No. ${pallet.pallet}',
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
                  flex: 2,
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
            child: GetBuilder<DmsController>(builder: (dmsController) {
              return ListView(
                children:
                    List.generate(dmsController.toBeAssigned!.length, (i) {
                  return Container(
                    width: double.infinity,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Text(
                              dmsController.toBeAssigned![i].product_name ??
                                  "--",
                              style: blackTextStyle,
                            )),
                        Expanded(
                            flex: 1,
                            child: Text(
                              dmsController.toBeAssigned![i].unit.toString(),
                              style: blackTextStyle,
                            )),
                        Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      if (dmsController.toBeAssigned![i]
                                                  .unitToUpload <=
                                              dmsController
                                                  .toBeAssigned![i].unit &&
                                          dmsController.toBeAssigned![i]
                                                  .unitToUpload >
                                              0) {
                                        List<DockProduct> products =
                                            dmsController.toBeAssigned!
                                                .toList();

                                        products[i] = products[i].copyWith(
                                            unitToUpload:
                                                products[i].unitToUpload - 1);
                                        Logger().i(products);
                                        dmsController.toBeAssigned = products;

                                        dmsController.update();
                                        // dmsController.toBeAssigned![i] =
                                        //     dmsController.toBeAssigned![i]
                                        //         .copyWith(
                                        //             unitToUpload: dmsController
                                        //                     .toBeAssigned![i]
                                        //                     .unitToUpload -
                                        //                 1);
                                        // dmsController.update();
                                        HapticFeedback.heavyImpact();
                                      }
                                    },
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    dmsController.toBeAssigned![i].unitToUpload
                                        .toString(),
                                    style: blackTextStyle,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      if (dmsController
                                              .toBeAssigned![i].unitToUpload <
                                          dmsController.toBeAssigned![i].unit) {
                                        List<DockProduct> products =
                                            dmsController.toBeAssigned!
                                                .toList();

                                        products[i] = products[i].copyWith(
                                            unitToUpload:
                                                products[i].unitToUpload + 1);
                                        Logger().i(products);
                                        dmsController.toBeAssigned = products;

                                        dmsController.update();
                                        HapticFeedback.heavyImpact();
                                      }
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ).paddingSymmetric(horizontal: 6),
                  ).paddingSymmetric(vertical: 8, horizontal: 10);
                }),
              );
            }),
          ),
          Row(
            children: [
              Expanded(
                child: GetBuilder<DmsController>(builder: (dmsController) {
                  return InkWell(
                    onTap: () {
                      for (int i = 0;
                          i < dmsController.toBeAssigned!.length;
                          i++) {
                        dmsController.toBeAssigned![i] = dmsController
                            .toBeAssigned![i]
                            .copyWith(unitToUpload: 0);
                      }
                      HapticFeedback.heavyImpact();
                      Get.back();
                    },
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
                  );
                }),
              ),
              const Gap(12),
              Expanded(
                child: GetBuilder<DmsController>(builder: (dmsController) {
                  return InkWell(
                    onTap: () {
                      dmsController.assignPalletToProduct(pallet: pallet);
                      HapticFeedback.heavyImpact();
                    },
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
                  );
                }),
              )
            ],
          ).paddingAll(12)
        ],
      ),
    );
  }
}
