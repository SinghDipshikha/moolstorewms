import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/View/widget/commonDropDown.dart';
import 'package:moolwmsstore/Hr/View/widget/commonTextField.dart';

class CreateShiftScreen extends StatefulWidget {
  const CreateShiftScreen({super.key});

  @override
  State<CreateShiftScreen> createState() => _CreateShiftScreenState();
}

class _CreateShiftScreenState extends State<CreateShiftScreen> {
  @override
  TimeOfDay _selectedTime = TimeOfDay.now();
  TimeOfDay _selectedTime2 = TimeOfDay.now();

  Future<void> _selectTimeMethod(BuildContext context, TimeOfDay initialTime,
      void Function(TimeOfDay) onTimePicked) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );
    if (picked != null && picked != initialTime) {
      setState(() {
        onTimePicked(picked);
      });
    }
  }

  Future<void> _selectTimeMethod2(BuildContext context, TimeOfDay initialTime,
      void Function(TimeOfDay) onTimePicked) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );
    if (picked != null && picked != initialTime) {
      setState(() {
        onTimePicked(picked);
      });
    }
  }

  final TextEditingController _shiftNameContoller = TextEditingController();

  List<String> warehouseDataList = [
    'Warehouse1',
    'Warehouse2',
    'Warehouse3',
    'Warehouse4',
    'Warehouse5',
  ];
  String? selectedWarehouse = "Warehouse1";
  List<String> shiftDataList = [
    'Shift1',
    'Shift2',
    'Shift3',
    'Shift4',
    'Shift5',
  ];
  String? selectedShift = "Shift1";
  void _showPopup(BuildContext context) {
    List<String> shiftDataList = [
      'Shift1',
      'Shift2',
      'Shift3',
      'Shift4',
      'Shift5',
    ];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return GetBuilder<HRController>(builder: (hrController) {
          return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                backgroundColor: Colors.white,
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Center(
                        child: Column(
                          children: [
                            const Text(
                              'Add New Shift',
                              style: TextStyle(
                                color: Color(0xFF5A57FF),
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Shift Timing',
                              style: TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        _selectTimeMethod(
                                            context,
                                            _selectedTime,
                                            (time) => _selectedTime = time);
                                      },
                                      child: Container(
                                        width: 56.09,
                                        height: 22,
                                        padding: const EdgeInsets.only(
                                          top: 1.87,
                                          left: 5.61,
                                          right: 11.22,
                                          bottom: 1.87,
                                        ),
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFFAF9FF),
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                                width: 0.47,
                                                color: Color(0x195A57FF)),
                                            borderRadius:
                                                BorderRadius.circular(3.74),
                                          ),
                                        ),
                                        child: Text(
                                          _selectedTime.format(context),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Color(0xFF353535),
                                            fontSize: 14.96,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Container(
                                      width: 67.30,
                                      height: 22,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFFAF9FF),
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.47,
                                              color: Color(0x195A57FF)),
                                          borderRadius:
                                              BorderRadius.circular(3.74),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 29.91,
                                            height: 18.33,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFF5A57FF),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(1.87),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'AM',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11.22,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 29.91,
                                            height: 18.33,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFFFAF9FF),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(1.87),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'PM',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFFACACAC),
                                                  fontSize: 11.22,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 20),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        _selectTimeMethod2(
                                            context,
                                            _selectedTime2,
                                            (time) => _selectedTime2 = time);
                                      },
                                      child: Container(
                                        width: 56.09,
                                        height: 22,
                                        padding: const EdgeInsets.only(
                                          top: 1.87,
                                          left: 5.61,
                                          right: 11.22,
                                          bottom: 1.87,
                                        ),
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFFAF9FF),
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                                width: 0.47,
                                                color: Color(0x195A57FF)),
                                            borderRadius:
                                                BorderRadius.circular(3.74),
                                          ),
                                        ),
                                        child: Text(
                                          _selectedTime2.format(context),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Color(0xFF353535),
                                            fontSize: 14.96,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Container(
                                      width: 67.30,
                                      height: 22,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFFAF9FF),
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.47,
                                              color: Color(0x195A57FF)),
                                          borderRadius:
                                              BorderRadius.circular(3.74),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 29.91,
                                            height: 18.33,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFF5A57FF),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(1.87),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'AM',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11.22,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 29.91,
                                            height: 18.33,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFFFAF9FF),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(1.87),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'PM',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFFACACAC),
                                                  fontSize: 11.22,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 129,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFCEFFF1),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Color(0x7F04BF8A)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Check In',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF04BF8A),
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Container(
                                  width: 129,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFFFE7E9),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Color(0x7FE23744)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Check Out',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFE23744),
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Shift Name',
                              style: TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Gap(20),
                            CommanTextField(
                              labelText: 'Shift Name',
                              controller: _shiftNameContoller,
                            ),
                            const Gap(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 128,
                                  height: 45,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFE23744),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Cancel',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                InkWell(
                                  onTap: () {
                                    hrController.addShiftDetailsRequestModel =
                                        hrController.addShiftDetailsRequestModel
                                            .copyWith(
                                      added_by: hrController.user.id,
                                      shift_name: _shiftNameContoller.text,
                                      shift_check_in: _selectedTime.toString(),
                                    );
                                    Logger().i(hrController
                                        .addShiftDetailsRequestModel
                                        .toJson());
                                    hrController.addShiftDetails();

                                    print(hrController
                                        .addShiftDetailsRequestModel);
                                  },
                                  child: Container(
                                    width: 128,
                                    height: 45,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF019F8A),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Save',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                actions: const <Widget>[],
              );
            },
          );
        });
      },
    );
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingActionButton(
        title: 'Create Shift',
        onTap: () => _showPopup(context),
      ),
      appBar: AppBar(
        title: const Text(
          'Create Shift',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GetBuilder<HRController>(builder: (hrController) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(20),
            CommomDropDown2(
              list: warehouseDataList,
              hintText: 'Select Warehouse',
              onChanged: (v) {
                setState(() {
                  selectedWarehouse = v;
                });
              },
              selectedValue: selectedWarehouse,
              labelText: "Select Warehouse",
            ),
            const Gap(20),
            const Text(
              'Shift Timing',
              style: TextStyle(
                color: Color(0xFFACACAC),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(20),
            Center(
              child: Container(
                width: 358,
                height: 138,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFAF9FF),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Shift Name',
                            style: TextStyle(
                              color: Color(0xFF5A57FF),
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              //height: 0,
                              letterSpacing: -0.48,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Shift Start',
                            style: TextStyle(
                              color: Color(0xFF5A57FF),
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              //height: 0,
                              letterSpacing: -0.48,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Shift End',
                            style: TextStyle(
                              color: Color(0xFF5A57FF),
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              //height: 0,
                              letterSpacing: -0.48,
                            ),
                          ),
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 12),
                    Expanded(
                        child: ListView.builder(
                            itemCount: hrController.employees.length,
                            itemBuilder: (context, i) {
                              return Container(
                                //height: 40,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFFAF9FF),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0x195A57FF)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: const Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          '',
                                          style: TextStyle(
                                            color: Color(0xFF353535),
                                            fontSize: 10,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          '',
                                          style: TextStyle(
                                            color: Color(0xFF353535),
                                            fontSize: 10,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                    // const Gap(4),
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          '',
                                          style: TextStyle(
                                            color: Color(0xFF353535),
                                            fontSize: 10,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                  ],
                                ),
                              ).paddingSymmetric(vertical: 4);
                            }))
                  ],
                ).paddingSymmetric(vertical: 16, horizontal: 12),
              ),
            ),
          ],
        );
      }),
    );
  }
}
