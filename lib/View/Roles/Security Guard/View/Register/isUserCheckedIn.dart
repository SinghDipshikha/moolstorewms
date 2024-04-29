//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/widgets/commonAppBar.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/widgets/commonButtons.dart';

//@RoutePage()
class IsUserCheckedInScreen extends StatefulWidget {
  const IsUserCheckedInScreen({super.key});

  @override
  State<IsUserCheckedInScreen> createState() => _IsUserCheckedInScreenState();
}

class _IsUserCheckedInScreenState extends State<IsUserCheckedInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'Results',
        actions: const [],
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
          const Gap(20),
          Container(
            width: 180,
            height: 33,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 4),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xFFB9FFC0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: const Center(
              child: Text(
                'Checked In',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF161616),
                  fontSize: 18,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
          const Gap(150),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CommonButtonForMobile(
                title: 'Scan QR Code',
              ),
              const Gap(30),
              CommonButtonForMobile(
                title: 'Main Menu',
              ),
            ],
          )
        ],
      ),
    );
  }
}
