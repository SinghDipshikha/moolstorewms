import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonAppBar.dart';

class HrDashboard extends StatefulWidget {
  const HrDashboard({super.key});

  @override
  State<HrDashboard> createState() => _HrDashboardState();
}

class _HrDashboardState extends State<HrDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232323),
      appBar: CommonAppBar(
        title: 'Dashboard',
      ),
      body: Center(
        child: Column(
          children: [
            const Gap(20),
            Container(
              width: 358,
              height: 173,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(1.00, 0.00),
                  end: const Alignment(-1, 0),
                  colors: [
                    Colors.white.withOpacity(0.10000000149011612),
                    Colors.white.withOpacity(0.10000000149011612)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Today',
                        style: TextStyle(
                          color: Color(0xFFEDEDFC),
                          fontSize: 32,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Container(
                        width: 124,
                        height: 38,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: ShapeDecoration(
                          color: const Color(0xFF2C2C2C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '09 : 41 AM',
                              style: TextStyle(
                                color: Color(0xFFEDEDFC),
                                fontSize: 22,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40.0, top: 20),
                    child: Text(
                      '18th March, 2024',
                      style: TextStyle(
                        color: Color(0xFFACACAC),
                        fontSize: 22,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 0.05,
                      ),
                    ),
                  ),
                  const Gap(20),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CommonButton(
                      color: const Color(0xFF5A57FF),
                      textColor: Colors.white,
                      title: 'View Attendance',
                    ),
                  )
                ],
              ),
            ),
            // const Gap(20),
            // Container(
            //   width: 358,
            //   height: 173,
            //   decoration: ShapeDecoration(
            //     gradient: LinearGradient(
            //       begin: const Alignment(1.00, 0.00),
            //       end: const Alignment(-1, 0),
            //       colors: [
            //         Colors.white.withOpacity(0.10000000149011612),
            //         Colors.white.withOpacity(0.10000000149011612)
            //       ],
            //     ),
            //     shape: RoundedRectangleBorder(
            //       side: const BorderSide(width: 1, color: Colors.white),
            //       borderRadius: BorderRadius.circular(25),
            //     ),
            //   ),
            // ),
            // const Gap(20),
            // Container(
            //   width: 358,
            //   height: 173,
            //   decoration: ShapeDecoration(
            //     gradient: LinearGradient(
            //       begin: const Alignment(1.00, 0.00),
            //       end: const Alignment(-1, 0),
            //       colors: [
            //         Colors.white.withOpacity(0.10000000149011612),
            //         Colors.white.withOpacity(0.10000000149011612)
            //       ],
            //     ),
            //     shape: RoundedRectangleBorder(
            //       side: const BorderSide(width: 1, color: Colors.white),
            //       borderRadius: BorderRadius.circular(25),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
