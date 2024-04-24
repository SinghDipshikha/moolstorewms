import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/widgets/commonAppBar.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/View/widgets/commonButtons.dart';
@RoutePage()
class RegistrationTypeOptions extends StatefulWidget {
  const RegistrationTypeOptions({super.key});

  @override
  State<RegistrationTypeOptions> createState() =>
      _RegistrationTypeOptionsState();
}

class _RegistrationTypeOptionsState extends State<RegistrationTypeOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'My Screen',
        actions: [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(80),
            InkWell(
              child: Container(
                width: 317,
                height: 75,
                decoration: ShapeDecoration(
                  color: const Color(0xFF5A57FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.only(top: 15.0, left: 15.0, bottom: 15.0),
                      child: Text(
                        'QR Scanner',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => QRScanScreen(),
                        // ));
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF5A57FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          image: const DecorationImage(
                            image: AssetImage("assets/icons/qr_icon.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(40),
            Container(
              width: 317,
              height: 75,
              decoration: ShapeDecoration(
                color: const Color(0xFFFAF9FF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.only(top: 15.0, left: 15.0, bottom: 15.0),
                    child: Text(
                      'Enter Employee ID',
                      style: TextStyle(
                        color: Color(0xFFACACAC),
                        fontSize: 20,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      image: const DecorationImage(
                        image: AssetImage("assets/icons/key_icon.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            CommonButtonForMobile(
              title: 'Verify',
            ),
          ],
        ),
      ),
    );
  }
}
