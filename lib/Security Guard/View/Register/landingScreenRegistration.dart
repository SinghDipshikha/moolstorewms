//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonButtons.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonTextField.dart';

//@RoutePage()
class LandingScreenForRegistration extends StatefulWidget {
  const LandingScreenForRegistration({super.key});

  @override
  State<LandingScreenForRegistration> createState() =>
      _LandingScreenForRegistrationState();
}

class _LandingScreenForRegistrationState
    extends State<LandingScreenForRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 1643,
            height: 129,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    'Streamlined Employee\nCheck-In and Attendance Tracking',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                    ),
                  ),
                  Gap(6),
                  Text(
                    'Secure ID Verification and Timekeeping.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w200,
                      //height: 0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/registration-lock.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Gap(8),
          Center(
            child: CommanTextFieldWithoutLabel(
              hintText: "Enter Employee ID",
            ),
          ),
          const Gap(8),
          CommonSubmitButton(
            title: 'Verify',
            onTap: () {
              _showPopup(context);
            },
          ),
          const SizedBox(
            height: 90,
          ),
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(maxHeight: 157, minHeight: 82),
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}

void _showPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        contentPadding: EdgeInsets.zero,
        content: Center(
          child: Container(
            width: 700,
            height: 450,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(children: [
                      TextSpan(
                        text: 'Ouchh!\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          //height: 0,
                        ),
                      ),
                      TextSpan(
                        text:
                            'we couldnt find an employee with that ID.\nPlease check the ID and try again.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          //height: 0,
                        ),
                      ),
                    ])),
                const SizedBox(height: 20), // Spacer
                Container(
                  width: 500,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/registration_popup.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Gap(20),
                Center(
                  child: CommonSubmitButton(
                    title: 'Retry',
                    onTap: () {},
                  ),
                ),
                const Gap(20)
              ],
            ),
          ),
        ),
        actions: const <Widget>[],
      );

      // return AlertDialog(
      //   backgroundColor: Colors.red,
      //   contentPadding: EdgeInsets.zero,
      //   content: Center(
      //     child: Container(
      //       width: 700,

      //       height: 400,
      //       color: Colors.red,
      //       child: Padding(
      //         padding:  const EdgeInsets.all(8.0),
      //         child: Column(
      //           // crossAxisAlignment: CrossAxisAlignment.end,

      //           children: [
      //             const Text.rich(
      //                 textAlign: TextAlign.center,
      //                 TextSpan(children: [
      //                   TextSpan(
      //                     text: 'Ouchh!\n',
      //                     style: TextStyle(
      //                       color: Colors.black,
      //                       fontSize: 36,
      //                       fontFamily: 'Nunito',
      //                       fontWeight: FontWeight.w600,
      //                       //height: 0,
      //                     ),
      //                   ),
      //                   TextSpan(
      //                     text:
      //                         'we couldnt find an employee with that ID.\nPlease check the ID and try again.',
      //                     style: TextStyle(
      //                       color: Colors.black,
      //                       fontSize: 28,
      //                       fontFamily: 'Nunito',
      //                       fontWeight: FontWeight.w400,
      //                       //height: 0,
      //                     ),
      //                   ),
      //                 ])),
      //               Container(
      //               width: 500,
      //               height: 200,
      //               decoration: const BoxDecoration(
      //                 image: DecorationImage(
      //                   image:
      //                       AssetImage("assets/images/registration_popup.png"),
      //                   fit: BoxFit.fill,
      //                 ),
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      //   actions: <Widget>[
      //     Center(
      //       child: CommonSubmitButton(
      //         title: 'Retry',
      //         onTap: () {},
      //       ),
      //     ),
      //   ],
      // );
    },
  );
}
