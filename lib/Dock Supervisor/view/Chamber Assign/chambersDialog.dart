import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsController.dart';
import 'package:moolwmsstore/Dock%20Supervisor/view/Chamber%20Assign/chamberView.dart';
import 'package:moolwmsstore/utils/globals.dart';

class ChambersDialog extends StatelessWidget {
  const ChambersDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        shadowColor: Colors.transparent,
        color: Colors.black.withOpacity(0.4),
        elevation: 0,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          child: Column(
            children: [
              const Text(
                'Select Chamber',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF353535),
                  fontSize: 16,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ).paddingSymmetric(vertical: 12),
              const Divider(),
              Expanded(
                  child: GetBuilder<DmsController>(initState: (state) {
                Get.find<DmsController>().getChambers();
              }, builder: (dmsController) {
                return dmsController.chambers == null
                    ? const Center(
                        child: SpinKitDoubleBounce( 
                          color: Color(0xFF5A57FF),
                        ),
                      )
                    : GridView.builder(
                        itemCount: dmsController.chambers!.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                crossAxisCount: 2,
                                childAspectRatio: 2),
                        itemBuilder: (context, i) {
                          return InkWell(
                            onTap: () {
                              dmsController.selectedChamber =
                                  dmsController.chambers![i];
 
                              dmsController.update();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFDE542C),
                                // color: const Color(0xFF5A57FF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                shadows: dmsController.selectedChamber ==
                                        dmsController.chambers![i]
                                    ? [
                                        const BoxShadow(
                                          color: Color(0xFF000000),
                                          blurRadius: 0,
                                          offset: Offset(4, 4),
                                          spreadRadius: 0,
                                        )
                                      ]
                                    : null,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Ch. No. ${dmsController.chambers![i].chamber_number}" ??
                                        "--",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Image.asset(
                                        "assets/icons/thermameter.png",
                                        height: 22,
                                      ),
                                      const Gap(8),
                                      Column(
                                        children: [
                                          Text(
                                            "Min Temp: ${dmsController.chambers![i].temp_min_range ?? "--"} °${dmsController.chambers![i].temp_type == "celsius" ? "c" : "F"}",
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 8,
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            "Min Temp:  ${dmsController.chambers![i].temp_max_range ?? "--"} °${dmsController.chambers![i].temp_type == "celsius" ? "c" : "F"}",
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 8,
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ).paddingAll(8),
                            ),
                          );
                        });
              })),
              GetBuilder<DmsController>(builder: (dmsController) {
                return Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.back(id: dmsNavigationKey);
                        },
                        child: Container(
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
                    ),
                    if (dmsController.selectedChamber != null) const Gap(12),
                    if (dmsController.selectedChamber != null)
                      Expanded(
                          child: InkWell(
                        onTap: () async {
                          dmsController.getSelectedChamberData();
                         
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
                      ))
                  ],
                ).paddingSymmetric(horizontal: 12, vertical: 8);
              })
            ],
          ).paddingAll(8),
        ).paddingAll(22));
  }
}
