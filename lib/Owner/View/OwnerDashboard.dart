import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/View/widget/ownerDrawer.dart';

////@RoutePage()
class OwnerDashboard extends StatefulWidget {
  const OwnerDashboard({super.key});

  @override
  State<OwnerDashboard> createState() => _OwnerDashboardState();
}

class _OwnerDashboardState extends State<OwnerDashboard> {
  @override
  DateTime? _selectedDate;
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

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

  final double _indent = 33;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        drawer: context.isPhone ? const OwnerDrawer() : null,
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: const Color(0xFF232323),
          title: const Text(
            'Dashboard',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w500,
              //height: 0,
              letterSpacing: -0.80,
            ),
          ),
        ),
        // body: SingleChildScrollView(
        //   child: Padding(
        //       padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        //       child: Wrap(
        //         // alignment: WrapAlignment.,
        //         runSpacing: 20,
        //         spacing: 20,
        //         children: List.generate(9, (index) {
        //           if (index == 1) {
        //             return Container(
        //               width: 400,
        //               height: 240,
        //               decoration: ShapeDecoration(
        //                 gradient: const LinearGradient(
        //                   begin: Alignment(0.00, -1.00),
        //                   end: Alignment(0, 1),
        //                   colors: [Color(0xFF373737), Colors.black],
        //                 ),
        //                 shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(10),
        //                 ),
        //               ),
        //               child: Row(
        //                 children: [
        //                   const Gap(20),
        //                   Padding(
        //                     padding: const EdgeInsets.symmetric(vertical: 20),
        //                     child: Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: [
        //                         const Text(
        //                           'Vehicle\nMovement',
        //                           style: TextStyle(
        //                             color: Colors.white,
        //                             fontSize: 20.57,
        //                             fontWeight: FontWeight.w700,
        //                           ),
        //                         ),
        //                         Expanded(
        //                           child: Container(),
        //                         ),
        //                         Row(
        //                           mainAxisSize: MainAxisSize.min,
        //                           children: [
        //                             Container(
        //                               width: 12,
        //                               height: 12,
        //                               decoration: const BoxDecoration(
        //                                   color: Colors.white),
        //                             ),
        //                             const Gap(10),
        //                             const Text(
        //                               'Inward',
        //                               style: TextStyle(
        //                                 color: Colors.white,
        //                                 fontSize: 17.14,
        //                                 fontWeight: FontWeight.w500,
        //                               ),
        //                             ),
        //                           ],
        //                         ),
        //                         Row(
        //                           children: [
        //                             Container(
        //                               width: 12,
        //                               height: 12,
        //                               decoration: const BoxDecoration(
        //                                   color: Color(0xFF9B9B9B)),
        //                             ),
        //                             const Gap(10),
        //                             const Text(
        //                               'Outward',
        //                               style: TextStyle(
        //                                 color: Colors.white,
        //                                 fontSize: 17.14,
        //                                 fontWeight: FontWeight.w500,
        //                               ),
        //                             ),
        //                           ],
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                   Expanded(
        //                       child: Column(
        //                     children: [
        //                       SizedBox(
        //                         height: 200,
        //                         width: 200,
        //                         child:
        //                             Stack(alignment: Alignment.center, children: [
        //                           CircularPercentIndicator(
        //                             animation: true,
        //                             reverse: true,
        //                             lineWidth: 40,
        //                             percent: 0.5,
        //                             radius: 80.0,
        //                             circularStrokeCap: CircularStrokeCap.butt,
        //                             progressColor: const Color(0xB2D3D3D3),
        //                             backgroundColor: Colors.transparent,
        //                           ),
        //                           CircularPercentIndicator(
        //                             animation: true,
        //                             //reverse: true,
        //                             lineWidth: 40,
        //                             radius: 80.0,
        //                             circularStrokeCap: CircularStrokeCap.butt,
        //                             progressColor: Colors.white,
        //                             percent: 0.75,
        //                             backgroundColor: Colors.transparent,
        //                           ),
        //                         ]),
        //                       )
        //                     ],
        //                   ))
        //                 ],
        //               ),
        //             );
        //           }
        //           return Container(
        //             width: 400,
        //             height: 240,
        //             decoration: ShapeDecoration(
        //               gradient: const LinearGradient(
        //                 begin: Alignment(0.00, -1.00),
        //                 end: Alignment(0, 1),
        //                 colors: [Color(0xFF373737), Colors.black],
        //               ),
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(10),
        //               ),
        //             ),
        //             child: Row(
        //               children: [
        //                 const Gap(20),
        //                 Padding(
        //                   padding: const EdgeInsets.symmetric(vertical: 20),
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       const Text(
        //                         'No. of\nWarehouses',
        //                         style: TextStyle(
        //                           color: Colors.white,
        //                           fontSize: 20.57,
        //                           fontWeight: FontWeight.w700,
        //                         ),
        //                       ),
        //                       Expanded(
        //                         child: Container(),
        //                       ),
        //                       Row(
        //                         mainAxisSize: MainAxisSize.min,
        //                         children: [
        //                           Container(
        //                             width: 12,
        //                             height: 12,
        //                             decoration:
        //                                 const BoxDecoration(color: Colors.white),
        //                           ),
        //                           const Gap(10),
        //                           const Text(
        //                             'Added',
        //                             style: TextStyle(
        //                               color: Colors.white,
        //                               fontSize: 17.14,
        //                               fontWeight: FontWeight.w500,
        //                             ),
        //                           ),
        //                         ],
        //                       ),
        //                       Row(
        //                         children: [
        //                           Container(
        //                             width: 12,
        //                             height: 12,
        //                             decoration: const BoxDecoration(
        //                                 color: Color(0xFF9B9B9B)),
        //                           ),
        //                           const Gap(10),
        //                           const Text(
        //                             'Deleted',
        //                             style: TextStyle(
        //                               color: Colors.white,
        //                               fontSize: 17.14,
        //                               fontWeight: FontWeight.w500,
        //                             ),
        //                           ),
        //                         ],
        //                       )
        //                     ],
        //                   ),
        //                 ),
        //                 Expanded(
        //                     child: Column(
        //                   children: [
        //                     SizedBox(
        //                       height: 200,
        //                       width: 200,
        //                       child:
        //                           Stack(alignment: Alignment.center, children: [
        //                         CircularPercentIndicator(
        //                           animation: true,
        //                           reverse: true,
        //                           lineWidth: 40,
        //                           percent: 0.5,
        //                           radius: 50.0,
        //                           circularStrokeCap: CircularStrokeCap.butt,
        //                           progressColor: const Color(0xB2D3D3D3),
        //                           backgroundColor: Colors.transparent,
        //                         ),
        //                         CircularPercentIndicator(
        //                           reverse: true,
        //                           lineWidth: 40,
        //                           radius: 80.0,
        //                           circularStrokeCap: CircularStrokeCap.butt,
        //                           progressColor: Colors.white,
        //                           percent: 0.75,
        //                           backgroundColor: Colors.transparent,
        //                         ),
        //                       ]),
        //                     )
        //                   ],
        //                 ))
        //               ],
        //             ),
        //           );
        //         }),
        //       )),
        // ),

        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Gap(10),
                Container(
                  width: 370,
                  height: 140,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(-1.00, -0.00),
                      end: Alignment(1, 0),
                      colors: [Color(0xFF5A57FF), Color(0xFF6A68FF)],
                    ),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Column(
                          children: [
                            Text(
                              'Warehouses',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '10',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 54,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Total No. of Warehouses',
                              style: TextStyle(
                                color: Color(0xFFC2C0FF),
                                fontSize: 10,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const Gap(20),
                        Column(
                          children: [
                            Container(
                              width: 169.64,
                              height: 112,
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/wareHouseImage.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        _selectDate(context);
                      },
                      child: Container(
                        height: 30,
                        decoration: ShapeDecoration(
                          color: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color:
                                  Colors.white.withOpacity(0.30000001192092896),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x0C000000),
                              blurRadius: 4,
                              offset: Offset(3, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          children: [
                            const Gap(20),
                            const Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xFFACACAC),
                              size: 20,
                            ),
                            const Gap(20),
                            Text(
                              _selectedDate == null
                                  ? 'All Time'
                                  : _selectedDate.toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.56,
                              ),
                            ),
                            const Gap(20),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFFACACAC),
                              size: 20,
                            ),
                            const Gap(20),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _selectDate(context);
                      },
                      child: Container(
                        height: 30,
                        decoration: ShapeDecoration(
                          color: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color:
                                  Colors.white.withOpacity(0.30000001192092896),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x0C000000),
                              blurRadius: 4,
                              offset: Offset(3, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          children: [
                            const Gap(20),
                            const Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xFFACACAC),
                              size: 20,
                            ),
                            const Gap(20),
                            Text(
                              _selectedDate == null
                                  ? 'All Time'
                                  : _selectedDate.toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.56,
                              ),
                            ),
                            const Gap(20),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFFACACAC),
                              size: 20,
                            ),
                            const Gap(20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                Container(
                  width: 380,
                  height: 100,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: const Alignment(0.00, -1.00),
                      end: const Alignment(0, 1),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 42,
                              height: 42,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 22, 22, 22),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/materialOwner.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const Text(
                              'Material',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Material In',
                                  style: TextStyle(
                                    color: Color(0xFF8C8C8C),
                                    fontSize: 16,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Gap(30),
                                Text(
                                  '80',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Material Out',
                                  style: TextStyle(
                                    color: Color(0xFF8C8C8C),
                                    fontSize: 16,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Gap(20),
                                Text(
                                  '80',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                Container(
                  width: 380,
                  height: 100,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: const Alignment(0.00, -1.00),
                      end: const Alignment(0, 1),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 12.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 42,
                              height: 42,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Person Icon (R) Dash.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const Text(
                              'Person',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Person In',
                                style: TextStyle(
                                  color: Color(0xFF8C8C8C),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(30),
                              Text(
                                '120',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Person Out',
                                style: TextStyle(
                                  color: Color(0xFF8C8C8C),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(20),
                              Text(
                                '80',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                Container(
                  width: 380,
                  height: 100,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: const Alignment(0.00, -1.00),
                      end: const Alignment(0, 1),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 42,
                            height: 42,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/vehicleVector.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Text(
                            'Vehicle',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Vehicle In',
                                style: TextStyle(
                                  color: Color(0xFF8C8C8C),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(30),
                              Text(
                                '220',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Vehicle Out',
                                style: TextStyle(
                                  color: Color(0xFF8C8C8C),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(20),
                              Text(
                                '80',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                Container(
                  width: 380,
                  height: 100,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: const Alignment(0.00, -1.00),
                      end: const Alignment(0, 1),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 12.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 42,
                              height: 42,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Dashboard Icons (R).png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const Text(
                              'Visitor',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Visitor In',
                                style: TextStyle(
                                  color: Color(0xFF8C8C8C),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(30),
                              Text(
                                '50',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Visitor Out',
                                style: TextStyle(
                                  color: Color(0xFF8C8C8C),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(20),
                              Text(
                                '80',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 180,
                      height: 150,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: const Alignment(0.00, -1.00),
                          end: const Alignment(0, 1),
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
                      child: Center(
                        child: Row(
                          children: [
                            const Gap(30),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Gap(20),
                                const Text(
                                  'Occupancy ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Gap(20),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Vacant',
                                      style: TextStyle(
                                        color: Color(0xFF8C8C8C),
                                        fontSize: 10,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Gap(60),
                                    Text(
                                      '80%',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Occupied',
                                      style: TextStyle(
                                        color: Color(0xFF8C8C8C),
                                        fontSize: 10,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Gap(50),
                                    Text(
                                      '80%',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                const Gap(20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 12,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.50,
                                              color: Color(0xFF2A2A2A)),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Warehouse',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 7,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 37,
                                      height: 12,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.50,
                                              color: Color(0xFF2A2A2A)),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Chamber',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 7,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 37,
                                      height: 12,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.50,
                                              color: Color(0xFF2A2A2A)),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Pallete',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 7,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 150,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: const Alignment(0.00, -1.00),
                          end: const Alignment(0, 1),
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
                      child: Row(
                        children: [
                          const Gap(20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Gap(20),
                              const Text(
                                'Tickets',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              const Center(
                                child: Text(
                                  '40',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 54,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const Gap(10),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 37,
                                      height: 12,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.50,
                                              color: Color(0xFF2A2A2A)),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'AllTickets',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 7,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 37,
                                      height: 12,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.50,
                                              color: Color(0xFF2A2A2A)),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Sales',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 7,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 37,
                                      height: 12,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.50,
                                              color: Color(0xFF2A2A2A)),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Security Guard',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF595959),
                                            fontSize: 7,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(40)
              ],
            ),
          ),
        ));
  }
}
