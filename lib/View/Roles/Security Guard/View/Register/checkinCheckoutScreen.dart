import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/widgets/commonAppBar.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/widgets/commonButtons.dart';
@RoutePage()
class CheckInCheckCheckOutScreen extends StatefulWidget {
  const CheckInCheckCheckOutScreen({super.key});

  @override
  State<CheckInCheckCheckOutScreen> createState() =>
      _CheckInCheckCheckOutScreenState();
}

class _CheckInCheckCheckOutScreenState
    extends State<CheckInCheckCheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(110.0),
      child: Container(
        width: 1643,
        height: 1024,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 280,
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage("assets/images/profile_photo.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const Gap(20),
              Container(
                width: 280,
                height: 50,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 2,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        image: const DecorationImage(
                          image: NetworkImage("assets/icons/check_in.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Gap(20),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Check In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Container(
                width: 280,
                height: 50,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 2,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        image: const DecorationImage(
                          image: NetworkImage("assets/icons/check_out.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Gap(20),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Check Out',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ).paddingAll(10),
        ),
      ),
    ));
  }
}
@RoutePage()
class CheckInCheckOutScreenMobile extends StatefulWidget {
  const CheckInCheckOutScreenMobile({super.key});

  @override
  State<CheckInCheckOutScreenMobile> createState() =>
      _CheckInCheckOutScreenMobileState();
}

class _CheckInCheckOutScreenMobileState
    extends State<CheckInCheckOutScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Results',
        actions: [],
      ),
      body: Column(
        children: [
          const Gap(30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '25 - FEB - 2024',
                style: TextStyle(
                  color: Color(0xFF595959),
                  fontSize: 14,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              Text(
                '12 : 30 : 40 PM',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF595959),
                  fontSize: 14,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              )
            ],
          ),
          const Gap(40),
          Container(
            width: 212,
            height: 232,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage("assets/images/profile_photo.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Gap(40),
          const Text(
            'Johnson Charles',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          const Gap(20),
          const Text(
            'ID : #01-JC/2024',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF595959),
              fontSize: 14,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          const Gap(80),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CommonButtonForMobile(
                title: 'Check-In',
              ),
              CommonButtonForMobile(
                title: 'Check-Out',
              ),
            ],
          )
        ],
      ),
    );
  }
}
