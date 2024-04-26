import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

////@RoutePage()
class OwnerDashboard extends StatefulWidget {
  const OwnerDashboard({super.key});

  @override
  State<OwnerDashboard> createState() => _OwnerDashboardState();
}

class _OwnerDashboardState extends State<OwnerDashboard> {
  @override
  void initState() {
    super.initState();
    // showAnimatedDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         backgroundColor: Colors.black,
    //         content: Image.asset("assets/icons/WareHouse Added Icon.png"),
    //       );
    //     });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: Wrap(
              // alignment: WrapAlignment.,
              runSpacing: 20,
              spacing: 20,
              children: List.generate(9, (index) {
                if (index == 1) {
                  return Container(
                    width: 400,
                    height: 240,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Color(0xFF373737), Colors.black],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Gap(20),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Vehicle\nMovement',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.57,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    decoration: const BoxDecoration(
                                        color: Colors.white),
                                  ),
                                  const Gap(10),
                                  const Text(
                                    'Inward',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17.14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFF9B9B9B)),
                                  ),
                                  const Gap(10),
                                  const Text(
                                    'Outward',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17.14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 200,
                              width: 200,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CircularPercentIndicator(
                                  animation: true,
                                  reverse: true,
                                  lineWidth: 40,
                                  percent: 0.5,
                                  radius: 80.0,
                                  circularStrokeCap: CircularStrokeCap.butt,
                                  progressColor: const Color(0xB2D3D3D3),
                                  backgroundColor: Colors.transparent,
                                ),
                                CircularPercentIndicator(
                                  animation: true,
                                  //reverse: true,
                                  lineWidth: 40,
                                  radius: 80.0,
                                  circularStrokeCap: CircularStrokeCap.butt,
                                  progressColor: Colors.white,
                                  percent: 0.75,
                                  backgroundColor: Colors.transparent,
                                ),
                              ]),
                            )
                          ],
                        ))
                      ],
                    ),
                  );
                }
                return Container(
                  width: 400,
                  height: 240,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF373737), Colors.black],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Gap(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'No. of\nWarehouses',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.57,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 12,
                                  height: 12,
                                  decoration:
                                      const BoxDecoration(color: Colors.white),
                                ),
                                const Gap(10),
                                const Text(
                                  'Added',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 12,
                                  height: 12,
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF9B9B9B)),
                                ),
                                const Gap(10),
                                const Text(
                                  'Deleted',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 200,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CircularPercentIndicator(
                                animation: true,
                                reverse: true,
                                lineWidth: 40,
                                percent: 0.5,
                                radius: 50.0,
                                circularStrokeCap: CircularStrokeCap.butt,
                                progressColor: const Color(0xB2D3D3D3),
                                backgroundColor: Colors.transparent,
                              ),
                              CircularPercentIndicator(
                                reverse: true,
                                lineWidth: 40,
                                radius: 80.0,
                                circularStrokeCap: CircularStrokeCap.butt,
                                progressColor: Colors.white,
                                percent: 0.75,
                                backgroundColor: Colors.transparent,
                              ),
                            ]),
                          )
                        ],
                      ))
                    ],
                  ),
                );
              }),
            )),
      ),
    );
  }
}
