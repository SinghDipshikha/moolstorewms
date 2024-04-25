import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/widgets/commonButtons.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/widgets/commonSideDrawer.dart';

//@RoutePage()
class SecurityGuardDashBoard extends StatefulWidget {
  const SecurityGuardDashBoard({super.key});

  @override
  State<SecurityGuardDashBoard> createState() => _SecurityGuardDashBoardState();
}

class _SecurityGuardDashBoardState extends State<SecurityGuardDashBoard> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0x00353535),
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.menu,
        //     color: Colors.white,
        //   ),
        //   onPressed: () {},
        // ),
        actions: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage("assets/images/profile_photo.png"),
                fit: BoxFit.fill,
              ),
            ),
          ).paddingOnly(right: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
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
                        color: Colors.white.withOpacity(0.30000001192092896),
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
                          height: 0,
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
                        color: Colors.white.withOpacity(0.30000001192092896),
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
                          height: 0,
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
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 85,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(-1.00, -0.00),
                    end: Alignment(1, 0),
                    colors: [Color(0xFF5A57FF), Color(0xFF7C79FF)],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x3FFAF9FF)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Ticket',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 85,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(-1.00, -0.00),
                    end: Alignment(1, 0),
                    colors: [Color(0xFF5A57FF), Color(0xFF7C79FF)],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x3FFAF9FF)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Customer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 85,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(-1.00, -0.00),
                    end: Alignment(1, 0),
                    colors: [Color(0xFF5A57FF), Color(0xFF7C79FF)],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x3FFAF9FF)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Register',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Gap(20),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Column(
              children: [
                Container(
                  width: 180,
                  height: 100,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(-1.00, -0.00),
                      end: Alignment(1, 0),
                      colors: [
                        Color.fromARGB(255, 120, 118, 232),
                        Color(0xFF7C79FF)
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x3FFAF9FF)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 66,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/ticket_image.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Gap(10),
                      const Text(
                        'Create Ticket',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.64,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Container(
            //   width: 150,
            //   height: 78,
            //   decoration: ShapeDecoration(
            //     image: const DecorationImage(
            //       image: AssetImage("assets/images/addVisitorBySG.png"),
            //       fit: BoxFit.fill,
            //     ),
            //     shape: RoundedRectangleBorder(
            //       side: const BorderSide(width: 1, color: Color(0xFF38D6E0)),
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //   ),
            //   child: const Text(
            //     'Add Visitor',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 16,
            //       fontFamily: 'SF Pro Text',
            //       fontWeight: FontWeight.w500,
            //       height: 0,
            //       letterSpacing: -0.64,
            //     ),
            //   ),
            // ),

            Container(
              width: 180,
              height: 100,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(-1.00, -0.00),
                  end: Alignment(1, 0),
                  colors: [
                    Color.fromARGB(255, 120, 118, 232),
                    Color(0xFF7C79FF)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x3FFAF9FF)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 66,
                    height: 66,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/visitorNew.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Gap(10),
                  const Text(
                    'Add Visitor',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                ],
              ),
            ),
          ]),
          const Gap(5),
          InkWell(
            onTap: () {
              _showPopup(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 134,
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
                    const Text(
                      'Material',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: -0.72,
                      ),
                    ).paddingOnly(top: 20, left: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Column(
                          children: [
                            Text(
                              '12',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.72,
                              ),
                            ),
                            Text(
                              'Check In',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.56,
                              ),
                            ),
                          ],
                        ),
                        const Column(
                          children: [
                            Text(
                              '10',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.72,
                              ),
                            ),
                            Text(
                              'Check Out',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.56,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 92,
                          height: 90,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/material.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const Gap(5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 134,
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
                  const Text(
                    'Vehicle',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.72,
                    ),
                  ).paddingOnly(top: 20, left: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Column(
                        children: [
                          Text(
                            '12',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.72,
                            ),
                          ),
                          Text(
                            'Vehicle In',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.56,
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          Text(
                            '10',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.72,
                            ),
                          ),
                          Text(
                            'Vehicle Out',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.56,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 120,
                        height: 90,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/vehicle.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Gap(5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 134,
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
                  const Text(
                    'Person',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.72,
                    ),
                  ).paddingOnly(top: 20, left: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Column(
                        children: [
                          Text(
                            '12',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.72,
                            ),
                          ),
                          Text(
                            'Person In',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.56,
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          Text(
                            '10',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.72,
                            ),
                          ),
                          Text(
                            'Person Out',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.56,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 92,
                        height: 90,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/person.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Gap(5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 134,
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
                  const Text(
                    'Visitor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.72,
                    ),
                  ).paddingOnly(top: 20, left: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Column(
                        children: [
                          Text(
                            '12',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.72,
                            ),
                          ),
                          Text(
                            'Visitor In',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.56,
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          Text(
                            '10',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.72,
                            ),
                          ),
                          Text(
                            'Visitor Out',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.56,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 92,
                        height: 90,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/visitor.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Gap(20)
        ]),
      ),
      // body: SingleChildScrollView(
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         const Gap(50),
      // InkWell(
      //   onTap: () {
      //     _selectDate(context);
      //   },
      //   child: Container(
      //     height: 60,
      //     //  width: dou,
      //     decoration: const ShapeDecoration(
      //       color: Colors.white,
      //       shape: RoundedRectangleBorder(),
      //       shadows: [
      //         BoxShadow(
      //           color: Color(0x0C000000),
      //           blurRadius: 4,
      //           offset: Offset(3, 4),
      //           spreadRadius: 0,
      //         )
      //       ],
      //     ),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      // const Icon(
      //   Icons.calendar_month,
      //   color: Colors.black,
      //   size: 40,
      // ),
      //         Text(
      //           _selectedDate == null
      //               ? 'No Date Selected'
      //               : _selectedDate.toString(),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      //         const Gap(20),
      //         Container(
      //           // width: double.infinity,
      //           height: 163,
      //           decoration: ShapeDecoration(
      //             gradient: const LinearGradient(
      //               colors: [Colors.black, Color(0xFF383838)],
      //             ),
      //             shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(5)),
      //           ),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //             children: [
      //               Expanded(
      //                 flex: 1,
      //                 child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     const Gap(20),
      //                     const Padding(
      //                       padding: EdgeInsets.all(10.0),
      //                       child: Text(
      //                         'Register',
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 24,
      //                           fontFamily: 'Nunito',
      //                           fontWeight: FontWeight.w700,
      //                           height: 0,
      //                         ),
      //                       ),
      //                     ),
      //                     Container(
      //                       width: 110,
      //                       height: 94,
      // decoration: const BoxDecoration(
      //   shape: BoxShape.rectangle,
      //   image: DecorationImage(
      //     image: AssetImage(
      //         "assets/images/register_engineer.png"),
      //     fit: BoxFit.contain,
      //   ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               const Column(
      //                 mainAxisAlignment: MainAxisAlignment.start,
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Gap(50),
      //                   Padding(
      //                     padding: EdgeInsets.all(10.0),
      //                     child: Row(
      //                       children: [
      //                         Text(
      //                           'Check In',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Nunito',
      //                             fontWeight: FontWeight.w500,
      //                             height: 0,
      //                           ),
      //                         ),
      //                         Gap(10),
      //                         Text(
      //                           '12',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Nunito',
      //                             fontWeight: FontWeight.w500,
      //                             height: 0,
      //                           ),
      //                         )
      //                       ],
      //                     ),
      //                   ),
      //                   Gap(20),
      //                   Padding(
      //                     padding: EdgeInsets.all(10.0),
      //                     child: Row(
      //                       children: [
      //                         Text(
      //                           'Check Out',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Nunito',
      //                             fontWeight: FontWeight.w500,
      //                             height: 0,
      //                           ),
      //                         ),
      //                         Gap(20),
      //                         Text(
      //                           '10',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Nunito',
      //                             fontWeight: FontWeight.w500,
      //                             height: 0,
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               )
      //             ],
      //           ),
      //         ),
      //         const Gap(20),
      //         Container(
      //           width: double.infinity,
      //           height: 163,
      //           decoration: ShapeDecoration(
      //             gradient: const LinearGradient(
      //               colors: [Colors.black, Color(0xFF383838)],
      //             ),
      //             shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(5)),
      //           ),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //             children: [
      //               Expanded(
      //                 flex: 1,
      //                 child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     const Gap(20),
      //                     const Padding(
      //                       padding: EdgeInsets.all(10.0),
      //                       child: Text(
      //                         'Tickets',
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 24,
      //                           fontFamily: 'Nunito',
      //                           fontWeight: FontWeight.w700,
      //                           height: 0,
      //                         ),
      //                       ),
      //                     ),
      //                     Container(
      //                       width: 150,
      //                       height: 94,
      //                       decoration: const BoxDecoration(
      //                         shape: BoxShape.rectangle,
      //                         image: DecorationImage(
      //                           image: AssetImage(
      //                               "assets/images/ticket_image.png"),
      //                           fit: BoxFit.fill,
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               const Column(
      //                 mainAxisAlignment: MainAxisAlignment.start,
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Gap(50),
      //                   Padding(
      //                     padding: EdgeInsets.all(10.0),
      //                     child: Row(
      //                       children: [
      //                         Text(
      //                           'Check In',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Nunito',
      //                             fontWeight: FontWeight.w500,
      //                             height: 0,
      //                           ),
      //                         ),
      //                         Gap(20),
      //                         Text(
      //                           '12',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Nunito',
      //                             fontWeight: FontWeight.w500,
      //                             height: 0,
      //                           ),
      //                         )
      //                       ],
      //                     ),
      //                   ),
      //                   Gap(10),
      //                   Padding(
      //                     padding: EdgeInsets.all(10.0),
      //                     child: Row(
      //                       children: [
      //                         Text(
      //                           'Check Out',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Nunito',
      //                             fontWeight: FontWeight.w500,
      //                             height: 0,
      //                           ),
      //                         ),
      //                         Gap(20),
      //                         Text(
      //                           '10',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Nunito',
      //                             fontWeight: FontWeight.w500,
      //                             height: 0,
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               )
      //             ],
      //           ),
      //         ),
      //         const Gap(20),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Expanded(
      //               child: Container(
      //                 width: double.infinity,
      //                 height: 163,
      //                 decoration: ShapeDecoration(
      //                   gradient: const LinearGradient(
      //                     colors: [Color(0xFF151515), Color(0xFF303030)],
      //                   ),
      //                   shape: RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(5)),
      //                 ),
      //               ),
      //             ),
      //             const Gap(10),
      //             Expanded(
      //               child: Container(
      //                 width: double.infinity,
      //                 height: 163,
      //                 decoration: ShapeDecoration(
      //                   gradient: const LinearGradient(
      //                     colors: [Color(0xFF151515), Color(0xFF303030)],
      //                   ),
      //                   shape: RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(5)),
      //                 ),
      //               ),
      //             )
      //           ],
      //         ),
      //         const Gap(20),
      //         Container(
      //           width: double.infinity,
      //           height: 63,
      //           decoration: ShapeDecoration(
      //             gradient: const LinearGradient(
      //               colors: [Color(0xFF151515), Color(0xFF303030)],
      //             ),
      //             shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(5)),
      //           ),
      //         ),

      //         Container(
      //           height: 50,
      //         )
      //       ],
      //     ),
      //   ),
      // ).paddingSymmetric(
      //   horizontal: 25,
      // ),
    );
  }
}

void _showPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              const Gap(20),
              CommonSubmitButtonForNewTheme(
                buttonColors: const Color(0xFF5A57FF),
                title: 'Verify Ticket',
              ),
              const Gap(10),
              CommonSubmitButtonForNewTheme(
                buttonColors: const Color(0xFF5A57FF),
                title: 'Create Ticket',
              ),
              const Gap(20),
              Container(
                width: 100,
                height: 160,
                decoration: ShapeDecoration(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/dashboardPopup.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: const <Widget>[],
      );
    },
  );
}
