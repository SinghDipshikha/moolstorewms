import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Dock%20Supervisor/View/dmsDrawer.dart';
import 'package:moolwmsstore/utils/dimensions.dart';

class DMSDashboard extends StatelessWidget {
  DMSDashboard({super.key});
  ScrollController xx = ScrollController();
  @override
  Widget build(BuildContext context) {
    int dockCount = 8;
    return Scaffold(
      backgroundColor: const Color(0xFF232323),
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      drawer: const DmsDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: ((25 * 60) / 2) + 4,
                decoration: ShapeDecoration(
                  color: const Color(0xFF303030),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: List.generate(25, (hour) {
                            return Container(
                              alignment: Alignment.center,
                              width: 40,
                              height: 30,
                              decoration: const BoxDecoration(),
                              child: Text(
                                hour == 0
                                    ? "Clock"
                                    : '${hour < 10 ? "0$hour" : hour}:00',
                                style: const TextStyle(
                                  color: Color(0xFFACACAC),
                                  fontSize: 8,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            );
                          }),
                        ).paddingSymmetric(vertical: 1),
                        Expanded(
                          child: SingleChildScrollView(
                            controller: xx,
                            scrollDirection: Axis.horizontal,
                            child: Column(
                              children: List.generate(25, (hour) {
                                return Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    width: 0.50,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Colors.white
                                        .withOpacity(0.10000000149011612),
                                  )),
                                  child: Row(
                                    children: List.generate(dockCount, (dock) {
                                      return Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          width: 0.50,
                                          strokeAlign:
                                              BorderSide.strokeAlignCenter,
                                          color: Colors.white
                                              .withOpacity(0.10000000149011612),
                                        )),
                                        height: 30,
                                        width: 80,
                                        child: hour == 0
                                            ? Text(
                                                "Dock ${dock + 1}",
                                                style: const TextStyle(
                                                    color: Colors.white),
                                              )
                                            : null,
                                      );
                                    }),
                                  ),
                                );
                              }),
                            ).paddingSymmetric(vertical: 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ).paddingSymmetric(
            vertical: Dimensions.vericalBodyPad,
            horizontal: Dimensions.horizontalBodyPad),
      ),
    );
  }
}
