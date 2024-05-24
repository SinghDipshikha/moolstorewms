import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/Hr/View/widget/commonDropDown.dart';

class CreateShiftScreen extends StatefulWidget {
  const CreateShiftScreen({super.key});

  @override
  State<CreateShiftScreen> createState() => _CreateShiftScreenState();
}

class _CreateShiftScreenState extends State<CreateShiftScreen> {
  @override
  List<String> warehouseDataList = [
    'Warehouse1',
    'Warehouse2',
    'Warehouse3',
    'Warehouse4',
    'Warehouse5',
  ];
  String? selectedWarehouse = "Warehouse1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Shift',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Gap(20),
            Row(children: [
              Row(children: [],),Row(children: [
                
              ],)
            ],)
          ],
        ),
      ),
    );
  }
}
