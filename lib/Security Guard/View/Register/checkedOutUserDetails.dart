import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonButtons.dart';

class CheckedOutUserDetails extends StatefulWidget {
  const CheckedOutUserDetails({super.key});

  @override
  State<CheckedOutUserDetails> createState() => _CheckedOutUserDetailsState();
}

class _CheckedOutUserDetailsState extends State<CheckedOutUserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(60),
          Center(
            child: Container(
              width: 318,
              height: 152,
              decoration: ShapeDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/checkedInProfilePhoto.png"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 3.35,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Colors.white.withOpacity(0.30000001192092896),
                  ),
                  borderRadius: BorderRadius.circular(33.52),
                ),
              ),
            ),
          ),
          const Gap(20),
          const Center(
            child: Text(
              'ID : #01-WR5001',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFACACAC),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                //height: 0,
              ),
            ),
          ),
          const Gap(30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      height: 0.06,
                    ),
                  ),
                  Gap(20),
                  Text(
                    'Johnson Charles',
                    style: TextStyle(
                      color: Color(0xFF353535),
                      fontSize: 20,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      height: 0.05,
                    ),
                  ),
                ],
              ),
              Gap(20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Occupation',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      height: 0.06,
                    ),
                  ),
                  Gap(20),
                  Text(
                    'Staff Manager',
                    style: TextStyle(
                      color: Color(0xFF353535),
                      fontSize: 20,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      height: 0.05,
                    ),
                  ),
                ],
              )
            ],
          ),
          const Gap(30),
          Center(
            child: Container(
              width: 358,
              height: 62,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(1.00, 0.00),
                  end: Alignment(-1, 0),
                  colors: [Color(0xFFF28585), Color(0xFFFFC7C2)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Center(
                child: Text(
                  'Check In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                    height: 0.04,
                  ),
                ),
              ),
            ),
          ),
          const Gap(30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'North Gate',
                style: TextStyle(
                  color: Color(0xFF595959),
                  fontSize: 28,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  height: 0.04,
                ),
              ),
            ],
          ),
          const Gap(50),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '12 : 30',
                      style: TextStyle(
                        color: Color(0xFF353535),
                        fontSize: 32,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        height: 0.03,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        color: Color(0xFF353535),
                        fontSize: 36,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        height: 0.03,
                      ),
                    ),
                    TextSpan(
                      text: 'PM',
                      style: TextStyle(
                        color: Color(0xFF353535),
                        fontSize: 18,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 0.06,
                      ),
                    ),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '25-02-24',
                      style: TextStyle(
                        color: Color(0xFF353535),
                        fontSize: 32,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        height: 0.03,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Gap(80),
          Center(
            child: CommonButton(
              title: 'Go to List',
              textColor: Colors.white,
              color: const Color(0xFF5A57FF),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const CheckedInSavedStatus(),
                // ));
              },
            ),
          ),
          const Gap(20),
          Center(
            child: CommonButton(
              title: 'Home',
              textColor: Colors.white,
              color: const Color(0xFF353535),
              onTap: () {
                // Get.to(const SecurityGuardDashBoard(),
                //     id: securityGuardNavigation);
              },
            ),
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
