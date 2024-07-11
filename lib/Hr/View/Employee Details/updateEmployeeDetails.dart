import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/Model/Employee/allDetailModel.dart';

class UpdateEmployeeDetailsScreen extends StatefulWidget {
  AllDetail empAllDetails;
  UpdateEmployeeDetailsScreen({super.key, required this.empAllDetails});

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
        child: GetBuilder<HRController>(builder: (hrController) {
          return Column(
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
              Text(
                Get.find<HRController>().currentlySeletedEmployee?.name ?? "--",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF353535),
                  fontSize: 32,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Gap(10),
              Text(
                Get.find<HRController>().currentlySeletedEmployee?.mobile ??
                    "--",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromARGB(255, 205, 115, 115),
                  fontSize: 22,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Gap(10),
              Text(
                Get.find<HRController>()
                        .currentlySeletedEmployee
                        ?.personType![0] ??
                    "--",
                textAlign: TextAlign.center,
                style: const TextStyle(
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
                                  image:
                                      AssetImage("assets/images/visitor.png"),
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
                            child:
                                Text('Please click the below field to edit.'),
                          ),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CommonTileForUpdate(
                                labelText: 'Full Name',
                                inputText: Get.find<HRController>()
                                        .currentlySeletedEmployee
                                        ?.name ??
                                    "--",
                                onChanged: (v) {},
                              ),
                              CommonTileForUpdate(
                                labelText: 'Mobile Number',
                                inputText: Get.find<HRController>()
                                        .currentlySeletedEmployee
                                        ?.mobile ??
                                    "--",
                                onChanged: (v) {},
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CommonTileForUpdate(
                                labelText: 'Date of Birth',
                                inputText: widget.empAllDetails
                                        .personalDetailsResponse!.dob ??
                                    "--",
                                onChanged: (v) {},
                              ),
                              CommonTileForUpdate(
                                labelText: 'Email ID',
                                inputText: widget.empAllDetails
                                        .personalDetailsResponse!.email ??
                                    "--",
                                onChanged: (v) {},
                              ),
                            ],
                          ),
                          const Gap(5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CommonTileForUpdate(
                                labelText: 'Gender',
                                inputText: widget.empAllDetails
                                        .personalDetailsResponse!.gender ??
                                    "--",
                                onChanged: (v) {},
                              ),
                              CommonTileForUpdate(
                                labelText: 'Blood Group',
                                inputText: widget.empAllDetails
                                        .personalDetailsResponse!.blood_group ??
                                    "--",
                                onChanged: (v) {},
                              )
                            ],
                          ),
                          const Gap(5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CommonTileForUpdate(
                                labelText: 'PF Number',
                                inputText: widget.empAllDetails
                                        .personalDetailsResponse!.pf_number ??
                                    "--",
                                onChanged: (v) {},
                              ),
                              CommonTileForUpdate(
                                labelText: 'PAN Number',
                                inputText: widget.empAllDetails
                                        .personalDetailsResponse!.pan_card ??
                                    "--",
                                onChanged: (v) {},
                              ),
                            ],
                          ),
                          const Gap(5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CommonTileForUpdate(
                                labelText: 'Passport Number',
                                inputText: widget
                                        .empAllDetails
                                        .personalDetailsResponse!
                                        .passport_number ??
                                    "--",
                                onChanged: (v) {},
                              ),
                              CommonTileForUpdate(
                                labelText: 'Disability',
                                inputText: widget
                                        .empAllDetails
                                        .personalDetailsResponse!
                                        .have_disability ??
                                    "--",
                                onChanged: (v) {},
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
                                  image:
                                      AssetImage("assets/images/contact.png"),
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
                            child:
                                Text('Please click the below field to edit.'),
                          ),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CommonTileForUpdate(
                                labelText: 'Full Address',
                                inputText: widget.empAllDetails
                                        .personalDetailsResponse!.address ??
                                    "--",
                                onChanged: (v) {},
                              ),
                              CommonTileForUpdate(
                                labelText: 'State',
                                inputText: widget.empAllDetails
                                        .personalDetailsResponse!.state ??
                                    "--",
                                onChanged: (v) {},
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CommonTileForUpdate(
                                labelText: 'City',
                                inputText: widget.empAllDetails
                                        .personalDetailsResponse!.city ??
                                    "--",
                                onChanged: (v) {},
                              ),
                              CommonTileForUpdate(
                                labelText: 'Email ID',
                                inputText: widget.empAllDetails
                                        .personalDetailsResponse!.email ??
                                    "--",
                                onChanged: (v) {},
                              ),
                            ],
                          ),
                          const Gap(5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CommonTileForUpdate(
                                labelText: 'Pincode',
                                inputText: widget.empAllDetails
                                        .personalDetailsResponse!.pincode ??
                                    "--",
                                onChanged: (v) {},
                              ),
                              CommonTileForUpdate(
                                labelText: 'Emergency Contact',
                                inputText: widget
                                        .empAllDetails
                                        .personalDetailsResponse!
                                        .emergency_contact_no ??
                                    "--",
                                onChanged: (v) {},
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
                                inputText: widget
                                        .empAllDetails
                                        .personalDetailsResponse!
                                        .mailing_address ??
                                    "--",
                                onChanged: (v) {},
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
                            child:
                                Text('Please click the below field to edit.'),
                          ),
                          const Gap(10),
                          ...List.generate(
                              widget.empAllDetails.careerDetail!.length,
                              (index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Gap(5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CommonTileForUpdate(
                                      labelText: 'Employer',
                                      inputText: widget
                                              .empAllDetails
                                              .careerDetail![index]
                                              .name_of_employer ??
                                          "--",
                                      onChanged: (v) {},
                                    ),
                                    CommonTileForUpdate(
                                      labelText: 'Designation',
                                      inputText: widget
                                              .empAllDetails
                                              .careerDetail![index]
                                              .designation ??
                                          "--",
                                      onChanged: (v) {},
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CommonTileForUpdate(
                                      labelText: 'Reporting TO.',
                                      inputText: widget
                                              .empAllDetails
                                              .careerDetail![index]
                                              .reporting_to ??
                                          "--",
                                      onChanged: (v) {},
                                    ),
                                    CommonTileForUpdate(
                                      labelText: 'Employement Duration',
                                      inputText: widget
                                              .empAllDetails
                                              .careerDetail![index]
                                              .employment_date_from ??
                                          "--",
                                      onChanged: (v) {},
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
                                      inputText: widget
                                              .empAllDetails
                                              .careerDetail![index]
                                              .monthly_salary_end ??
                                          "--",
                                      onChanged: (v) {},
                                    ),
                                  ],
                                ),
                                const Gap(5),
                              ],
                            );
                          }),
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
                            child:
                                Text('Please click the below field to edit.'),
                          ),
                          const Gap(10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Gap(5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CommonTileForUpdate(
                                    labelText: 'Qualification',
                                    inputText: widget
                                            .empAllDetails
                                            .educationDetail!
                                            .highest_qualification ??
                                        "--",
                                    onChanged: (v) {},
                                  ),
                                  CommonTileForUpdate(
                                    labelText: 'Year of Passing',
                                    inputText: widget
                                            .empAllDetails
                                            .educationDetail!
                                            .ssc_passing_year ??
                                        "--",
                                    onChanged: (v) {},
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CommonTileForUpdate(
                                    labelText: 'School',
                                    inputText: widget
                                            .empAllDetails
                                            .educationDetail!
                                            .ssc_passing_school ??
                                        "--",
                                    onChanged: (v) {},
                                  ),
                                  CommonTileForUpdate(
                                    labelText: 'University',
                                    inputText: widget
                                            .empAllDetails
                                            .educationDetail!
                                            .ssc_passing_university ??
                                        "--",
                                    onChanged: (v) {},
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
                                    inputText: widget
                                            .empAllDetails
                                            .educationDetail!
                                            .ssc_passing_percentage ??
                                        "--",
                                    onChanged: (v) {},
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
                                      AssetImage("assets/images/referral.png"),
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
                            child:
                                Text('Please click the below field to edit.'),
                          ),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CommonTileForUpdate(
                                labelText: 'Name of Referee',
                                inputText:
                                    widget.empAllDetails.referralDetail!.name ??
                                        "--",
                                onChanged: (v) {},
                              ),
                              CommonTileForUpdate(
                                labelText: 'Company Name',
                                inputText: widget.empAllDetails.referralDetail!
                                        .company ??
                                    "--",
                                onChanged: (v) {},
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CommonTileForUpdate(
                                labelText: 'Referee Designation',
                                inputText: widget.empAllDetails.referralDetail!
                                        .designation ??
                                    "--",
                                onChanged: (v) {},
                              ),
                              CommonTileForUpdate(
                                labelText: 'Address',
                                inputText: widget.empAllDetails.referralDetail!
                                        .address ??
                                    "--",
                                onChanged: (v) {},
                              ),
                            ],
                          ),
                          const Gap(5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CommonTileForUpdate(
                                labelText: 'Referee Email-Id',
                                inputText: widget
                                        .empAllDetails.referralDetail!.email ??
                                    "--",
                                onChanged: (v) {},
                              ),
                              CommonTileForUpdate(
                                labelText: 'Referee Mobile No.',
                                inputText: widget.empAllDetails.referralDetail!
                                        .mobileNumber ??
                                    "--",
                                onChanged: (v) {},
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
                            child:
                                Text('Please click the below field to edit.'),
                          ),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CommonTileForUpdate(
                                labelText: 'Account Name',
                                inputText: widget.empAllDetails.bankDetails!
                                        .account_name ??
                                    "--",
                                onChanged: (v) {},
                              ),
                              CommonTileForUpdate(
                                labelText: 'Account Number',
                                inputText: widget.empAllDetails.bankDetails!
                                        .account_no ??
                                    "--",
                                onChanged: (v) {},
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CommonTileForUpdate(
                                labelText: 'Bank Name',
                                inputText: widget.empAllDetails.bankDetails!
                                          .branch_name ??
                                    "--",
                                onChanged: (v) {},
                              ),
                              CommonTileForUpdate(
                                labelText: 'IFSC Code',
                                inputText:
                                    widget.empAllDetails.bankDetails!.ifsc_no ??
                                        "--",
                                onChanged: (v) {},
                              ),
                            ],
                          ),
                          const Gap(5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CommonTileForUpdate(
                                labelText: 'Branch Name',
                                inputText: widget.empAllDetails.bankDetails!
                                        .branch_name ??
                                    "--",
                                onChanged: (v) {},
                              ),
                              CommonTileForUpdate(
                                labelText: 'Account Type',
                                inputText: widget.empAllDetails.bankDetails!
                                        .account_type ??
                                    "--",
                                onChanged: (v) {},
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
          );
        }),
      ),
    );
  }
}

class CommonTileForUpdate extends StatelessWidget {
  void Function(String)? onChanged;
  String? labelText;
  dynamic inputText;
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
  CommonTileForUpdate(
      {super.key,
      required this.labelText,
      required this.inputText,
      required this.onChanged});

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
