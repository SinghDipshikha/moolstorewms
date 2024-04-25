import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/Register/checkInInfoScreen.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/widgets/commonButtons.dart';

class ScannedUserDetails extends StatefulWidget {
  const ScannedUserDetails({super.key});

  @override
  State<ScannedUserDetails> createState() => _ScannedUserDetailsState();
}

class _ScannedUserDetailsState extends State<ScannedUserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Gap(30),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 358,
              height: 62,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(1.00, 0.00),
                  end: Alignment(-1, 0),
                  colors: [Color(0xFF7A78FF), Color(0xFF4B48FC)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '25',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.88,
                              ),
                            ),
                            TextSpan(
                              text: 'FEB',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w300,
                                height: 0,
                                letterSpacing: -0.88,
                              ),
                            ),
                            TextSpan(
                              text: '2024',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.88,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '12 : 30',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.88,
                              ),
                            ),
                            TextSpan(
                              text: 'PM',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w300,
                                height: 0,
                                letterSpacing: -0.88,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 240,
            height: 240,
            decoration: const ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/AccountPhoto.png"),
                fit: BoxFit.fill,
              ),
              shape: OvalBorder(),
            ),
          ),
          const Gap(20),
          const Text(
            'ID : #01-WR5001',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFACACAC),
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          const Text(
            'Johnson Charles',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xFF353535),
              fontSize: 28,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          const Text(
            'Staff Manager',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF353535),
              fontSize: 20,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w300,
              height: 0,
            ),
          ),
          const Gap(100),
          CustomFloatingActionButton(
            title: 'Check In',
            color: const Color(0xFF04BF8A),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CheckedInInfoScreen(),
              ));
            },
          ),
          const Gap(20),
          CustomFloatingActionButton(
            title: 'Check Out',
            color: const Color(0xFFFF5F5D),
          )
        ],
      ),
    );
  }
}
