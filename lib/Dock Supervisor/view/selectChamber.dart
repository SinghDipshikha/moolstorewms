import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/utils/dimensions.dart';

class SelectChamberScreen extends StatefulWidget {
  const SelectChamberScreen({super.key});

  @override
  State<SelectChamberScreen> createState() => _SelectChamberScreenState();
}

class _SelectChamberScreenState extends State<SelectChamberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Select Chamber',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            body: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                        itemCount: 20,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 3,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                crossAxisCount: 2),
                        itemBuilder: (context, i) {
                          return ChamberContainer(
                            chamberNumber: 'Ch. No. 2',
                            capacityPercent: 'Capacity 80%',
                            minTemp: '-15',
                            maxTemp: '20',
                            isVacant: true,
                          );
                        }),
                  ),
                ),
                const Gap(10),
                Container(
                  width: 358,
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  decoration: ShapeDecoration(
                    color: Colors.black,
                    shadows: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 50.0,
                      ),
                    ],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Assign',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const Gap(20)
              ],
            ))
        .paddingSymmetric(
            horizontal: Dimensions.horizontalBodyPad,
            vertical: Dimensions.vericalBodyPad);
  }
}

class ChamberContainer extends StatefulWidget {
  String chamberNumber;
  String minTemp;
  String maxTemp;
  String capacityPercent;
  bool isVacant = false;
  ChamberContainer({
    super.key,
    required this.chamberNumber,
    required this.minTemp,
    required this.capacityPercent,
    required this.maxTemp,
    required isVacant,
  });

  @override
  State<ChamberContainer> createState() => _ChamberContainerState();
}

class _ChamberContainerState extends State<ChamberContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: widget.isVacant ? Colors.amber : const Color(0xFF04BF8A),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      child: Column(
        children: [
          const Gap(2),
          Text(
            widget.chamberNumber,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset("assets/images/temp.png")),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: widget.minTemp,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: '°',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: 'c',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: '- ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: widget.maxTemp,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: '°',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.bold,
                            height: 0,
                          ),
                        ),
                        const TextSpan(
                          text: 'c',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                widget.capacityPercent,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.bold,
                  height: 0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
