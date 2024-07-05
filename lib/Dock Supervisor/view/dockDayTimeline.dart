import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DockDayTimeline extends StatelessWidget {
  DockDayTimeline({super.key});
  ScrollController xx = ScrollController();
  int dockCount = 8;
  // (1 (for titile) + 24(hours)) divided by 2 , do each pixel represents two minutes + 4 little extra padding
  double contanerHeight = ((25 * 60) / 2) + 4;

  DateTime s = DateTime.now();
  DateTime e = DateTime.now().add(const Duration(minutes: 120));

  // Use DateFormat with 'HH' for 24-hour format
  (int, int) calculateStartEnd((DateTime, DateTime) record) {
    var (start, end) = record;
    String formattedHour = DateFormat('HH').format(start);
    int startPixel = int.parse(formattedHour);

    int difference = end.difference(start).inMinutes;

    return (
      startPixel,
      difference > contanerHeight
          ? (24 * 60) ~/ 2 - (startPixel * 60) ~/ 2
          : difference
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: contanerHeight,
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
                  child: Row(
                    children: List.generate(dockCount, (dock) {
                      var record = calculateStartEnd((s, e));

                      return Stack(
                        children: [
                          Column(
                            children: List.generate(25, (hour) {
                              return Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  width: 0.50,
                                  strokeAlign: BorderSide.strokeAlignCenter,
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
                          if (dock == 3)
                            Container(
                              width: 80,
                              height: record.$2.toDouble(),
                              decoration: ShapeDecoration(
                                color: const Color(0xFF04BF8A),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                              ),
                            ).paddingOnly(
                              top: 30 + ((record.$1 * 60) / 2),
                            ),
                          if (dock == 1)
                            Container(
                              width: 80,
                              height: record.$2.toDouble(),
                              decoration: ShapeDecoration(
                                color: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                              ),
                            ).paddingOnly(
                              top: 30 + ((record.$1 * 60) / 2),
                            ),
                          if (dock == 5)
                            Container(
                              width: 80,
                              height: record.$2.toDouble(),
                              decoration: ShapeDecoration(
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                              ),
                            ).paddingOnly(
                              top: 30 + ((record.$1 * 60) / 2),
                            )
                        ],
                      );
                    }),
                  ),
                )),
                // Expanded(
                //   child: SingleChildScrollView(
                //     controller: xx,
                //     scrollDirection: Axis.horizontal,
                //     child: Column(
                //       children: List.generate(25, (hour) {
                //         return Container(
                //           height: 30,
                //           decoration: BoxDecoration(
                //               border: Border.all(
                //             width: 0.50,
                //             strokeAlign: BorderSide.strokeAlignCenter,
                //             color:
                //                 Colors.white.withOpacity(0.10000000149011612),
                //           )),
                //           child: Row(
                //             children: List.generate(dockCount, (dock) {
                //               return ;
                //             }),
                //           ),
                //         );
                //       }),
                //     ).paddingSymmetric(vertical: 1),
                //   ),
                // ),
              ],
            ),
          ],
        ));
  }
}
