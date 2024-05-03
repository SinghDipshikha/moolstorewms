import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AddedStaffScreen extends StatefulWidget {
  const AddedStaffScreen({super.key});

  @override
  State<AddedStaffScreen> createState() => _AddedStaffScreenState();
}

class _AddedStaffScreenState extends State<AddedStaffScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/addedStaff.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: const Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(80),
                    Text(
                      'Staff Added',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Success! ',
                            style: TextStyle(
                              color: Color(0xFFECECEC),
                              fontSize: 18,
                              fontFamily: 'Aileron',
                              fontWeight: FontWeight.w400,
                              height: 0.06,
                              letterSpacing: 0.36,
                            ),
                          ),
                          TextSpan(
                            text: 'Michael Carter',
                            style: TextStyle(
                              color: Color(0xFFECECEC),
                              fontSize: 18,
                              fontFamily: 'Aileron',
                              fontWeight: FontWeight.w700,
                              height: 0.06,
                              letterSpacing: 0.36,
                            ),
                          ),
                          TextSpan(
                            text: ' has been added\nto our warehouse team.',
                            style: TextStyle(
                              color: Color(0xFFECECEC),
                              fontSize: 18,
                              fontFamily: 'Aileron',
                              fontWeight: FontWeight.w400,
                              height: 0.06,
                              letterSpacing: 0.36,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 600.0),
                child: Text(
                  "Each new member brings fresh perspectives, skills, and ideas \nthat can invigorate the team and contribute\nto its overall productivity.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFBCBCBC),
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Aileron',
                    fontWeight: FontWeight.w400,
                    height: 0.10,
                    letterSpacing: 0.24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
