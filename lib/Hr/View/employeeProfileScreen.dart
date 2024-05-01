import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EmployeeProfileScreen extends StatefulWidget {
  const EmployeeProfileScreen({super.key});

  @override
  State<EmployeeProfileScreen> createState() => _EmployeeProfileScreenState();
}

class _EmployeeProfileScreenState extends State<EmployeeProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6663FF),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Gap(20),
              const Padding(
                padding: EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Color(0xFFFAF9FF),
                            fontSize: 16,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            height: 0.08,
                            letterSpacing: 0.32,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                height: 200,
                decoration: const ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/AccountPhoto.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: OvalBorder(
                    side: BorderSide(width: 4, color: Colors.white),
                  ),
                ),
              ),
              const Gap(20),
              const Text(
                'Michael Carter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w600,
                  height: 0.03,
                  letterSpacing: 0.48,
                ),
              ),
              const Gap(20),
              const Text(
                'Security Guard',
                style: TextStyle(
                  color: Color(0xFFFAF9FF),
                  fontSize: 16,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w400,
                  height: 0.08,
                  letterSpacing: 0.32,
                ),
              ),
              const Gap(30),
              Container(
                width: 430,
                height: 565,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 10,
                      offset: Offset(0, -7),
                      spreadRadius: 3,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    const Gap(30),
                    Container(
                      width: 358,
                      height: 60,
                      decoration: ShapeDecoration(
                        color: const Color(0x1916E024),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/user-octagon.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Gap(10),
                              const Text(
                                'Edit Profile',
                                style: TextStyle(
                                  color: Color(0xFF353535),
                                  fontSize: 18,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  height: 0.06,
                                  letterSpacing: 0.36,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    Container(
                      width: 358,
                      height: 60,
                      decoration: ShapeDecoration(
                        color: const Color(0x19FF3D7F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/user-octagon.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Gap(10),
                              const Text(
                                'Documents',
                                style: TextStyle(
                                  color: Color(0xFF353535),
                                  fontSize: 18,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  height: 0.06,
                                  letterSpacing: 0.36,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    Container(
                      width: 358,
                      height: 60,
                      decoration: ShapeDecoration(
                        color: const Color(0x190200F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/user-octagon.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Gap(10),
                              const Text(
                                'Settings',
                                style: TextStyle(
                                  color: Color(0xFF353535),
                                  fontSize: 18,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  height: 0.06,
                                  letterSpacing: 0.36,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    Container(
                      width: 358,
                      height: 60,
                      decoration: ShapeDecoration(
                        color: const Color(0x19FF80DE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/user-octagon.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Gap(10),
                              const Text(
                                'Achievements',
                                style: TextStyle(
                                  color: Color(0xFF353535),
                                  fontSize: 18,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  height: 0.06,
                                  letterSpacing: 0.36,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    Container(
                      width: 358,
                      height: 60,
                      decoration: ShapeDecoration(
                        color: const Color(0x19FCCC19),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/user-octagon.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Gap(10),
                              const Text(
                                'Share Profile',
                                style: TextStyle(
                                  color: Color(0xFF353535),
                                  fontSize: 18,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w500,
                                  height: 0.06,
                                  letterSpacing: 0.36,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
