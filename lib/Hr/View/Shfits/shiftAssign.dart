import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/View/Shfits/shiftsAssignList.dart';
import 'package:moolwmsstore/Hr/View/widget/commonDropDown.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonAppBar.dart';
import 'package:moolwmsstore/utils/globals.dart';

class AssignShift extends StatefulWidget {
  const AssignShift({super.key});

  @override
  State<AssignShift> createState() => _AssignShiftState();
}

class _AssignShiftState extends State<AssignShift> {
  @override
  List<String> shiftDataList = [
    'Shift1',
    'Shift2',
    'Shift3',
    'Shift4',
    'Shift5',
  ];
  String? selectedShift = "Shift1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'Assign Shift',
        onTap: () {
          // Get.to(const ShiftInfo(), id: hrNavigationKey);
        },
      ),
      body: Column(
        children: [
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 34,
                padding: const EdgeInsets.only(
                    top: 5, left: 20, right: 21, bottom: 5),
                decoration: ShapeDecoration(
                  color: const Color(0xFFFAF9FF),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/shift.png",
                      height: 28,
                    ),
                    const Gap(10),
                    const Text(
                      '10 : 15: 50 AM',
                      style: TextStyle(
                        color: Color(0xFFACACAC),
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 34,
                padding: const EdgeInsets.only(
                    top: 5, left: 20, right: 21, bottom: 5),
                decoration: ShapeDecoration(
                  color: const Color(0xFFFAF9FF),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/calender.png",
                      height: 28,
                    ),
                    const Gap(10),
                    const Text(
                      'April 24, 2024',
                      style: TextStyle(
                        color: Color(0xFFACACAC),
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Gap(20),
          const Padding(
            padding: EdgeInsets.only(right: 30.0, left: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        color: Color(0xFFACACAC),
                        fontSize: 12,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Rob Williams',
                      style: TextStyle(
                        color: Color(0xFF353535),
                        fontSize: 18,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Designation',
                      style: TextStyle(
                        color: Color(0xFFACACAC),
                        fontSize: 12,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Security Guard',
                      style: TextStyle(
                        color: Color(0xFF353535),
                        fontSize: 18,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Gap(30),
          CommomDropDown2(
            list: shiftDataList,
            hintText: 'Select Shift',
            onChanged: (v) {
              setState(() {
                selectedShift = v;
              });
            },
            selectedValue: selectedShift,
            labelText: "Assign Shift",
          )
        ],
      ),
    );
  }
}
