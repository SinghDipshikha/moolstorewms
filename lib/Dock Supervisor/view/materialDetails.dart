import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Dock%20Supervisor/widget/commonButton.dart';
import 'package:moolwmsstore/Dock%20Supervisor/widget/commonDropDown.dart';
import 'package:moolwmsstore/Dock%20Supervisor/widget/tagContainer.dart';

class MaterislDetailsScreen extends StatefulWidget {
  const MaterislDetailsScreen({super.key});

  @override
  State<MaterislDetailsScreen> createState() => _MaterislDetailsScreenState();
}

class _MaterislDetailsScreenState extends State<MaterislDetailsScreen> {
  @override
  List<String> movementList = [
    "Inward",
    "Outward",
  ];
  String? selectedMovementDirection = "Inward";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Assign Chamber',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(
        title: 'Submit',
        onTap: () {},
      ),
      body: Center(
        child: Column(
          children: [
            const Gap(10),
            CommomDropDown2(
              list: movementList,
              selectedValue: selectedMovementDirection,
              labelText: 'Movement of Direction',
              hintText: 'Inward',
              onChanged: (v) {
                setState(() {
                  selectedMovementDirection = v;
                });
              },
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TagContainer(
                  title: 'Material Information',
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: 310,
                              height: 236,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0x335A57FF)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            )

                            // CommonTextField(
                            //   textCapitalization: TextCapitalization.words,
                            //   validator: (value) {
                            //     if (value!.isEmpty) {
                            //       return 'Please enter Product name.';
                            //     }

                            //     return null;
                            //   },
                            //   labelText: 'Product Name',
                            //   hintText: 'Enter your product’s name',
                            // ),
                            // const Gap(16),
                            // CommonTextField(
                            //   textCapitalization: TextCapitalization.characters,
                            //   validator: (value) {
                            //     if (value!.isEmpty) {
                            //       return 'Please enter quantity';
                            //     }

                            //     // if (!GlobalValidator.isValidPAN(value)) {
                            //     //   return 'Please enter a valid quantity.';
                            //     // }

                            //     return null;
                            //   },
                            //   //  validator: ,
                            //   // inputFormatters: [
                            //   //   FilteringTextInputFormatter.allow(
                            //   //       RegExp(r"^[A-Z]{5}[0-9]{4}[A-Z]{1}$"))
                            //   // ],
                            //   labelText: "Quantity",
                            //   hintText: "Enter Quantity",
                            // ),
                            // const Gap(16),
                            // CommonTextField(
                            //   textCapitalization: TextCapitalization.characters,
                            //   validator: (value) {
                            //     if (value!.isEmpty) {
                            //       return 'Please enter units';
                            //     }

                            //     // if (!GlobalValidator.(value)) {
                            //     //   return 'Please enter a valid units.';
                            //     // }

                            //     return null;
                            //   },
                            //   //  validator: ,
                            //   // inputFormatters: [
                            //   //   FilteringTextInputFormatter.allow(
                            //   //       RegExp(r"^[A-Z]{5}[0-9]{4}[A-Z]{1}$"))
                            //   // ],
                            //   labelText: "Units",
                            //   hintText: "Enter Units",
                            // ),
                            // const Gap(16),
                          ],
                        ),
                      ),
                    ],
                  ).paddingSymmetric(vertical: 16, horizontal: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
