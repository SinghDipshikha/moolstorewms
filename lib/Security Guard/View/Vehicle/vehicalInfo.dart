import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonTextField.dart';

class VehicleInfoScreen extends StatefulWidget {
  const VehicleInfoScreen({super.key});

  @override
  State<VehicleInfoScreen> createState() => _VehicleInfoScreenState();
}

class _VehicleInfoScreenState extends State<VehicleInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Vehicle Info',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Gap(20),
            Container(
              width: 358,
              height: 90,
              decoration: ShapeDecoration(
                color: const Color(0xCC5A57FF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 2,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const SizedBox(
                width: 119,
                height: 27.50,
                child: Center(
                  child: Text(
                    'Vehicle In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            const Gap(10),
            Container(
              width: 358,
              decoration: ShapeDecoration(
                color: const Color(0xFFFAF9FF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  const Gap(10),
                  CommanTextFieldUpdated2(
                    labelText: 'Vehicle Number',
                    hintText: 'MH 05 - 4321',
                  ),
                  const Gap(10),
                  CommanTextFieldUpdated2(
                    labelText: 'Vehicle Type',
                    hintText: 'Truck',
                  ),
                  const Gap(10),
                  CommanTextFieldUpdated2(
                    labelText: 'Driver Mobile No',
                    hintText: '555-123-6789',
                  ),
                  const Gap(10),
                  CommanTextFieldUpdated2(
                    labelText: 'Owner Name',
                    hintText: 'Mark Harris',
                  ),
                  const Gap(10),
                  CommanTextFieldUpdated2(
                    labelText: 'Date & Time',
                    hintText: '16/12/2023',
                  ),
                  const Gap(10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
