import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonButtons.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonDropDown.dart';

class GateIdSelectionScreen extends StatefulWidget {
  const GateIdSelectionScreen({super.key});

  @override
  State<GateIdSelectionScreen> createState() => _GateIdSelectionScreenState();
}

class _GateIdSelectionScreenState extends State<GateIdSelectionScreen> {
  List<String> gateDataList = [
    'G001',
    'G002',
    'G003',
    'G004',
    'G005',
  ];
  String? selectedGate = "G001";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/gateScreen.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 700.0),
                child: Column(
                  children: [
                    CommomDropDown(
                      labelText: "Select Gate",
                      list: gateDataList,
                      onChanged: (v) {
                        setState(() {
                          selectedGate = v;
                        });
                      },
                      selectedValue: selectedGate,
                      hintText: 'Select Gate',
                    ),
                    const Gap(20),
                    Center(
                      child: CommonButton(
                        title: 'Submit',
                        color: const Color(0xFF5A57FF),
                        textColor: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
