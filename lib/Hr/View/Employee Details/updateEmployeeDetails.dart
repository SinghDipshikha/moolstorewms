import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UpdateEmployeeDetailsScreen extends StatefulWidget {
  const UpdateEmployeeDetailsScreen({super.key});

  @override
  State<UpdateEmployeeDetailsScreen> createState() =>
      _UpdateEmployeeDetailsScreenState();
}

class _UpdateEmployeeDetailsScreenState
    extends State<UpdateEmployeeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF9FF),
      appBar: AppBar(
        title: const Text(
          'View Employee Details',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: CustomFloatingActionButton(
      //   title: 'Next',
      //   onTap: () {
      //     // Get.to(, id: hrNavigationKey);
      //   },
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(10),
            Center(
              child: Container(
                width: 180,
                height: 180,
                decoration: const ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/AccountPhoto.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: OvalBorder(
                    side: BorderSide(width: 5, color: Color(0xFF04BF8A)),
                  ),
                ),
              ),
            ),
            const Gap(10),
            const Text(
              'Johnson Charles',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF353535),
                fontSize: 32,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(10),
            const Text(
              '555 123 4567',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF595959),
                fontSize: 22,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
              ),
            ),
            const Gap(10),
            const Text(
              'Security Guard',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFFF5789),
                fontSize: 20,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
              ),
            ),
            const Gap(10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Employment Status',
                  style: TextStyle(
                    color: Color(0xFFACACAC),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Active',
                  style: TextStyle(
                    color: Color(0xFF02A676),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Gap(10),
            Container(
              width: 358,
              height: 54,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Profile Status',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Gap(40),
                  Row(
                    children: [
                      const Text(
                        'Complete',
                        style: TextStyle(
                          color: Color(0xFF2BBF8A),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Gap(10),
                      Container(
                          width: 25,
                          height: 25,
                          decoration: const BoxDecoration(
                              color: Color(0xFF2BBF8A),
                              shape: BoxShape.circle,
                              boxShadow: [BoxShadow()]),
                          child: const Icon(Icons.check)),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(10),
            Container(
              width: 358,
              height: 54,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Employee Details',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Gap(40),
                  Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                          color: Color(0xFF5A57FF),
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow()]),
                      child: const Icon(Icons.person)),
                ],
              ),
            ),
            const Gap(10),
            Column(
              children: [
                Container(
                  width: 358,
                  height: 44,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF5A57FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/visitor.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Gap(10),
                          const Text(
                            'Personal Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 27,
                        height: 27,
                        padding: const EdgeInsets.all(3.68),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 0.98,
                              offset: Offset(0, 0.49),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.edit,
                            color: Color(0xFF5A57FF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 358,
                  height: 182,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0x195E57FC)),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Column(
              children: [
                Container(
                  width: 358,
                  height: 44,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF5A57FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/contact.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Gap(10),
                          const Text(
                            'Contact Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Gap(30)
                    ],
                  ),
                ),
                Container(
                  width: 358,
                  height: 182,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0x195E57FC)),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Column(
              children: [
                Container(
                  width: 358,
                  height: 44,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF5A57FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/career.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Gap(10),
                          const Text(
                            'Career Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Gap(30)
                    ],
                  ),
                ),
                Container(
                  width: 358,
                  height: 182,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0x195E57FC)),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Column(
              children: [
                Container(
                  width: 358,
                  height: 44,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF5A57FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/education.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Gap(10),
                          const Text(
                            'Education Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Gap(30)
                    ],
                  ),
                ),
                Container(
                  width: 358,
                  height: 182,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0x195E57FC)),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Column(
              children: [
                Container(
                  width: 358,
                  height: 44,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF5A57FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/referral.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Gap(10),
                          const Text(
                            'Referral Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Gap(30)
                    ],
                  ),
                ),
                Container(
                  width: 358,
                  height: 182,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0x195E57FC)),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Column(
              children: [
                Container(
                  width: 358,
                  height: 44,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF5A57FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/bank.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Gap(10),
                          const Text(
                            'Bank Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Gap(30)
                    ],
                  ),
                ),
                Container(
                  width: 358,
                  height: 182,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0x195E57FC)),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(40),
          ],
        ),
      ),
    );
  }
}
