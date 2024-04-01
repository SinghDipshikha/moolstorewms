import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/View/Roles/Registration/widgets/commonAppBar.dart';
import 'package:moolwmsstore/View/Roles/Registration/widgets/commonButtons.dart';

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
      appBar: CommonAppBar(
        title: 'My Screen',
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(80),
            InkWell(
              
              child: Container(
                width: 306,
                height: 60,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Container(
                      width: 50,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        image: const DecorationImage(
                          image: NetworkImage("assets/icons/qr_icon.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(40),
            Container(
              width: 306,
              height: 60,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.only(top: 15.0, left: 15.0, bottom: 15.0),
                    child: Text(
                      'Enter Employee ID',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      image: const DecorationImage(
                        image: NetworkImage("assets/icons/key_icon.png"),
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
