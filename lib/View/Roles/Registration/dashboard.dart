import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class RegistrationModuleDashboard extends StatefulWidget {
  const RegistrationModuleDashboard({super.key});

  @override
  State<RegistrationModuleDashboard> createState() =>
      _RegistrationModuleDashboardState();
}

class _RegistrationModuleDashboardState
    extends State<RegistrationModuleDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(50),
            Container(
              height: 60,
              width: 295,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 4,
                    offset: Offset(3, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
            const Gap(20),
            Container(
              width: 295,
              height: 163,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.black, Color(0xFF383838)],
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  Gap(20),
                  Row(
                    children: [
                      Text(
                        'Check In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Gap(40),
                      Text(
                        '12',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                  Gap(20),
                  Row(
                    children: [
                      Text(
                        'Check Out',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Gap(40),
                      Text(
                        '10',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Gap(20),
            Container(
              width: 295,
              height: 163,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.black, Color(0xFF383838)],
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 140,
                  height: 163,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF151515), Color(0xFF303030)],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                const Gap(10),
                Container(
                  width: 140,
                  height: 163,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF151515), Color(0xFF303030)],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                )
              ],
            ),
            const Gap(20),
            Container(
              width: 295,
              height: 63,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF151515), Color(0xFF303030)],
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
