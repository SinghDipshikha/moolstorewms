import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/vehicle.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsController.dart';
import 'package:moolwmsstore/Dock%20Supervisor/view/Chamber%20Assign/chambersDialog.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/globals.dart';

class AssignChamber extends StatelessWidget {
  AssignChamber({super.key, required this.entry});
  Vehicle entry;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await Get.find<DmsController>().getAllVehicleListByWarehouseId();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title:
              const Text('Assign Chamber', style: TextStyles.appBarTextStyle),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 39,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFAF9FF),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Indent ID : ${entry.indent_number}',
                  style: const TextStyle(
                    color: Color(0xFF595959),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Gap(12),
              const Text(
                'Chamber Selection',
                style: TextStyle(
                  color: Color(0xFFACACAC),
                  fontSize: 16,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFAF9FF),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x195E57FC)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: GetBuilder<DmsController>(builder: (dmsController) {
                  return Column(
                    children: [
                      const Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Product Name',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF5A57FF),
                                fontSize: 12,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Gap(8),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Unit',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF5A57FF),
                                fontSize: 12,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ...List.generate(
                          dmsController.toBeAssigned!.length,
                          (i) => Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      "• ${dmsController.toBeAssigned![i].product_name}",
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Color(0xFF353535),
                                        fontSize: 14,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const Gap(8),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      "• "
                                      '${dmsController.toBeAssigned![i].unit}',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Color(0xFF353535),
                                        fontSize: 14,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ).paddingSymmetric(vertical: 4)),
                      const Gap(8),
                      InkWell(
                        onTap: () {
                          Get.dialog(const ChambersDialog(),
                              navigatorKey: Get.nestedKey(dmsNavigationKey),
                              barrierColor: Colors.transparent,
                              barrierDismissible: false);
                        },
                        child: Container(
                          width: 158,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF5A57FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Assign Chamber ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ).paddingAll(16);
                }),
              )
            ],
          ),
        ).paddingSymmetric(
            vertical: Dimensions.vericalBodyPad,
            horizontal: Dimensions.horizontalBodyPad),
      ),
    );
  }
}
