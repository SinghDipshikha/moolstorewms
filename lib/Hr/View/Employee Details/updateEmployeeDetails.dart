import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class UpdateEmployeeDetailsScreen extends StatefulWidget {
  const UpdateEmployeeDetailsScreen({super.key});

  @override
  State<UpdateEmployeeDetailsScreen> createState() =>
      _UpdateEmployeeDetailsScreenState();
}

class _UpdateEmployeeDetailsScreenState
    extends State<UpdateEmployeeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF9FF),
      appBar: AppBar(
        title: const Text(
          'View Employee Details',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: CustomFloatingActionButton(
      //   title: 'Next',
      //   onTap: () {
      //     // Get.to(, id: hrNavigationKey);
      //   },
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(10),
            Center(
              child: Container(
                width: 180,
                height: 180,
                decoration: const ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/AccountPhoto.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: OvalBorder(
                    side: BorderSide(width: 5, color: Color(0xFF04BF8A)),
                  ),
                ),
              ),
            ),
            const Gap(10),
            const Text(
              'Johnson Charles',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF353535),
                fontSize: 32,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(10),
            const Text(
              '555 123 4567',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF595959),
                fontSize: 22,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
              ),
            ),
            const Gap(10),
            const Text(
              'Security Guard',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFFF5789),
                fontSize: 20,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
              ),
            ),
            const Gap(10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Employment Status',
                  style: TextStyle(
                    color: Color(0xFFACACAC),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Active',
                  style: TextStyle(
                    color: Color(0xFF02A676),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Gap(10),
            Container(
              width: 358,
              height: 54,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Profile Status',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Gap(40),
                  Row(
                    children: [
                      const Text(
                        'Complete',
                        style: TextStyle(
                          color: Color(0xFF2BBF8A),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Gap(10),
                      Container(
                          width: 25,
                          height: 25,
                          decoration: const BoxDecoration(
                              color: Color(0xFF2BBF8A),
                              shape: BoxShape.circle,
                              boxShadow: [BoxShadow()]),
                          child: const Icon(Icons.check)),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(10),
            Container(
              width: 358,
              height: 54,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Employee Details',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Gap(40),
                  Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                          color: Color(0xFF5A57FF),
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow()]),
                      child: const Icon(Icons.person)),
                ],
              ),
            ),
            const Gap(10),
            Column(
              children: [
                Container(
                  width: 358,
                  height: 44,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF5A57FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/visitor.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Gap(10),
                          const Text(
                            'Personal Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 358,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0x195E57FC)),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(10),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Please click the below field to edit.'),
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CommonTileForUpdate(
                              labelText: 'Full Name',
                              inputText: '',
                            ),
                            CommonTileForUpdate(
                              labelText: 'Mobile Number',
                              inputText: '',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CommonTileForUpdate(
                              labelText: 'Date of Birth',
                              inputText: '',
                            ),
                            CommonTileForUpdate(
                              labelText: 'Email ID',
                              inputText: '',
                            ),
                          ],
                        ),
                        const Gap(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CommonTileForUpdate(
                              labelText: 'Gender',
                              inputText: '',
                            ),
                            CommonTileForUpdate(
                              labelText: 'Blood Group',
                              inputText: '',
                            )
                          ],
                        ),
                        const Gap(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CommonTileForUpdate(
                              labelText: 'PF Number',
                              inputText: '',
                            ),
                            CommonTileForUpdate(
                              labelText: 'PAN Number',
                              inputText: '',
                            ),
                          ],
                        ),
                        const Gap(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CommonTileForUpdate(
                              labelText: 'Passport Number',
                              inputText: '',
                            ),
                            CommonTileForUpdate(
                              labelText: 'Disability',
                              inputText: '',
                            ),
                          ],
                        ),
                        const Gap(5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Column(
              children: [
                Container(
                  width: 358,
                  height: 44,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF5A57FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Gap(15),
                          Container(
                            width: 44,
                            height: 44,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/contact.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Gap(10),
                          const Text(
                            'Contact Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Gap(30)
                    ],
                  ),
                ),
                Container(
                  width: 358,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0x195E57FC)),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(10),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Please click the below field to edit.'),
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CommonTileForUpdate(
                              labelText: 'Full Address',
                              inputText: '',
                            ),
                            CommonTileForUpdate(
                              labelText: 'State',
                              inputText: '',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CommonTileForUpdate(
                              labelText: 'City',
                              inputText: '',
                            ),
                            CommonTileForUpdate(
                              labelText: 'Email ID',
                              inputText: '',
                            ),
                          ],
                        ),
                        const Gap(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CommonTileForUpdate(
                              labelText: 'Pincode',
                              inputText: '',
                            ),
                            CommonTileForUpdate(
                              labelText: 'Emergency Contact',
                              inputText: '',
                            )
                          ],
                        ),
                        const Gap(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Gap(10),
                            CommonTileForUpdate(
                              labelText: 'Mailing Address',
                              inputText: '',
                            ),
                          ],
                        ),
                        const Gap(5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Column(
              children: [
                Container(
                  width: 358,
                  height: 44,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF5A57FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Gap(15),
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/career.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Gap(10),
                          const Text(
                            'Career Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Gap(30)
                    ],
                  ),
                ),
                Container(
                  width: 358,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0x195E57FC)),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Gap(10),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Please click the below field to edit.'),
                        ),
                        const Gap(10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CommonTileForUpdate(
                                  labelText: 'Employer',
                                  inputText: '',
                                ),
                                CommonTileForUpdate(
                                  labelText: 'Designation',
                                  inputText: '',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CommonTileForUpdate(
                                  labelText: 'Reporting TO.',
                                  inputText: '',
                                ),
                                CommonTileForUpdate(
                                  labelText: 'Employement Duration',
                                  inputText: '',
                                ),
                              ],
                            ),
                            const Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Gap(10),
                                CommonTileForUpdate(
                                  labelText: 'Current Salary',
                                  inputText: '',
                                ),
                              ],
                            ),
                            const Gap(5),
                          ],
                        ),
                        const Divider(
                          thickness: 0.5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CommonTileForUpdate(
                                  labelText: 'Employer',
                                  inputText: '',
                                ),
                                CommonTileForUpdate(
                                  labelText: 'Designation',
                                  inputText: '',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CommonTileForUpdate(
                                  labelText: 'Reporting TO.',
                                  inputText: '',
                                ),
                                CommonTileForUpdate(
                                  labelText: 'Employement Duration',
                                  inputText: '',
                                ),
                              ],
                            ),
                            const Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Gap(10),
                                CommonTileForUpdate(
                                  labelText: 'Current Salary',
                                  inputText: '',
                                ),
                              ],
                            ),
                            const Gap(5),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Column(
              children: [
                Container(
                  width: 358,
                  height: 44,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF5A57FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Gap(15),
                          Container(
                            width: 44,
                            height: 44,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/education.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Gap(10),
                          const Text(
                            'Education Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Gap(30)
                    ],
                  ),
                ),
                Container(
                  width: 358,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0x195E57FC)),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(10),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Please click the below field to edit.'),
                        ),
                        const Gap(10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CommonTileForUpdate(
                                  labelText: 'Qualification',
                                  inputText: '',
                                ),
                                CommonTileForUpdate(
                                  labelText: 'Year of Passing',
                                  inputText: '',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CommonTileForUpdate(
                                  labelText: 'School',
                                  inputText: '',
                                ),
                                CommonTileForUpdate(
                                  labelText: 'University',
                                  inputText: '',
                                ),
                              ],
                            ),
                            const Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Gap(10),
                                CommonTileForUpdate(
                                  labelText: 'Percentage & Grade',
                                  inputText: '',
                                ),
                              ],
                            ),
                            const Gap(5),
                          ],
                        ),
                        const Divider(
                          thickness: 0.5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CommonTileForUpdate(
                                  labelText: 'Qualification',
                                  inputText: '',
                                ),
                                CommonTileForUpdate(
                                  labelText: 'Year of Passing',
                                  inputText: '',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CommonTileForUpdate(
                                  labelText: 'School',
                                  inputText: '',
                                ),
                                CommonTileForUpdate(
                                  labelText: 'University',
                                  inputText: '',
                                ),
                              ],
                            ),
                            const Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Gap(10),
                                CommonTileForUpdate(
                                  labelText: 'Percentage & Grade',
                                  inputText: '',
                                ),
                              ],
                            ),
                            const Gap(5),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Column(
              children: [
                Container(
                  width: 358,
                  height: 44,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF5A57FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Gap(15),
                          Container(
                            width: 44,
                            height: 44,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/referral.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Gap(10),
                          const Text(
                            'Referral Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Gap(30)
                    ],
                  ),
                ),
                Container(
                  width: 358,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0x195E57FC)),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(10),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Please click the below field to edit.'),
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CommonTileForUpdate(
                              labelText: 'Name of Referee',
                              inputText: '',
                            ),
                            CommonTileForUpdate(
                              labelText: 'Company Name',
                              inputText: '',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CommonTileForUpdate(
                              labelText: 'Referee Designation',
                              inputText: '',
                            ),
                            CommonTileForUpdate(
                              labelText: 'Address',
                              inputText: '',
                            ),
                          ],
                        ),
                        const Gap(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CommonTileForUpdate(
                              labelText: 'Referee Email-Id',
                              inputText: '',
                            ),
                            CommonTileForUpdate(
                              labelText: 'Referee Mobile No.',
                              inputText: '',
                            )
                          ],
                        ),
                        const Gap(5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Column(
              children: [
                Container(
                  width: 358,
                  height: 44,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF5A57FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          const Gap(15),
                          Container(
                            width: 44,
                            height: 44,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/bank.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Gap(10),
                          const Text(
                            'Bank Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Gap(30)
                    ],
                  ),
                ),
                Container(
                  width: 358,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0x195E57FC)),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(10),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Please click the below field to edit.'),
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CommonTileForUpdate(
                              labelText: 'Account Holder',
                              inputText: '',
                            ),
                            CommonTileForUpdate(
                              labelText: 'Account Number',
                              inputText: '',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CommonTileForUpdate(
                              labelText: 'Bank Name',
                              inputText: '',
                            ),
                            CommonTileForUpdate(
                              labelText: 'IFSC Code',
                              inputText: '',
                            ),
                          ],
                        ),
                        const Gap(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CommonTileForUpdate(
                              labelText: 'Branch Name',
                              inputText: '',
                            ),
                            CommonTileForUpdate(
                              labelText: 'Account Type',
                              inputText: '',
                            )
                          ],
                        ),
                        const Gap(5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Gap(40),
          ],
        ),
      ),
    );
  }
}

class CommonTileForUpdate extends StatelessWidget {
  void Function(String)? onChanged;
  String? labelText;
  String? inputText;
  bool? obscureText;

  Widget? suffixIcon;
  Widget? prefixIcon;
  String? hintText;
  int? maxLength;
  String? initialValue;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  List<TextInputFormatter>? inputFormatters;
  EdgeInsetsGeometry? padding;
  TextEditingController? controller;

  TextCapitalization? textCapitalization;
  double? borderRadius;
  int? maxLines;
  bool? isNumber;
  CommonTileForUpdate({
    super.key,
    required this.labelText,
    required this.inputText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints:
                  context.isPhone ? null : const BoxConstraints(maxWidth: 100),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "$labelText",
                      style: const TextStyle(
                        color: Color(0xFF595959),
                        fontSize: 14,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        //height: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(2),
            SizedBox(
                width: 150,
                height: 30,
                child: TextFormField(
                  initialValue: initialValue,
                  maxLines: maxLines,
                  textCapitalization:
                      textCapitalization ?? TextCapitalization.none,
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  onChanged: onChanged,
                  onFieldSubmitted: (value) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  keyboardType: keyboardType,
                  controller: controller,
                  validator: validator,
                  obscureText: obscureText ?? false,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide:
                          BorderSide(width: 0.50, color: Color(0x195E57FC)),
                    ),
                    filled: true,
                    fillColor: Color(0xFFFAF9FF),
                  ),
                )),
          ],
        ));
  }
}
