import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/Dock%20Supervisor/widget/commonDropDown.dart';

class AssignChamberScreen extends StatefulWidget {
  const AssignChamberScreen({super.key});

  @override
  State<AssignChamberScreen> createState() => _AssignChamberScreenState();
}

class _AssignChamberScreenState extends State<AssignChamberScreen> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(10),
          Center(
            child: Container(
              width: 358,
              height: 39,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: ShapeDecoration(
                color: const Color(0xFFFAF9FF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Center(
                child: Text(
                  'Indent ID : #1234',
                  style: TextStyle(
                    color: Color(0xFF595959),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 172,
                height: 34,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFAF9FF),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Center(
                  child: Text(
                    '12 : 45: 50 PM',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Container(
                width: 172,
                height: 34,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFAF9FF),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'April 24, 2024',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            ],
          ),
          const Gap(20),
          const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
              'Product List',
              style: TextStyle(
                color: Color(0xFFACACAC),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Gap(10),
          Center(
            child: Container(
              width: 358,
              height: 201,
              decoration: ShapeDecoration(
                color: const Color(0xFFFAF9FF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Column(
                children: [
                  const Gap(10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Product Name',
                        style: TextStyle(
                          color: Color(0xFF5A57FF),
                          fontSize: 12,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Quantity',
                        style: TextStyle(
                          color: Color(0xFF5A57FF),
                          fontSize: 12,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Gap(10),
                  ProductListEntry(
                    productName: 'Kanon Scanner',
                    productQuantity: '1200',
                  ),
                  const Gap(10),
                  ProductListEntry(
                    productName: 'Kanon Scanner',
                    productQuantity: '1200',
                  ),
                  const Gap(10),
                  ProductListEntry(
                    productName: 'Kanon Scanner',
                    productQuantity: '1200',
                  ),
                ],
              ),
            ),
          ),
          const Gap(20),
          const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
              'Chamber Selection',
              style: TextStyle(
                color: Color(0xFFACACAC),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Gap(10),
          Center(
            child: Container(
                width: 358,
                height: 155,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFAF9FF),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x195E57FC)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Column(children: [
                  const Gap(10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Product Name',
                        style: TextStyle(
                          color: Color(0xFF5A57FF),
                          fontSize: 12,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Quantity',
                        style: TextStyle(
                          color: Color(0xFF5A57FF),
                          fontSize: 12,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Gap(10),
                  ChamberSeledtionEntry(
                    productName: '',
                    productQuantity: '',
                  ),
                  const Gap(20),
                  Container(
                    width: 158,
                    height: 40,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF5A57FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Assign Chamber ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ])),
          ),
        ],
      ),
    );
  }
}

class ProductListEntry extends StatefulWidget {
  String productName;
  String productQuantity;
  ProductListEntry(
      {super.key, required this.productName, required this.productQuantity});

  @override
  State<ProductListEntry> createState() => _ProductListEntryState();
}

class _ProductListEntryState extends State<ProductListEntry> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 40,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0x195E57FC)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const Text(
          'Hepson Printer',
          style: TextStyle(
            color: Color(0xFF353535),
            fontSize: 16,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
        const Gap(20),
        Row(
          children: [
            Container(
              width: 55,
              height: 19,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: ShapeDecoration(
                color: const Color(0xFFFAF9FF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.50, color: Color(0x195E57FC)),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              child: const Center(
                child: Text(
                  '1200',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF353535),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const Gap(5),
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                border: Border.all(
                  color: const Color(0xFF5A57FF),
                ),
              ),
              child: const Icon(
                Icons.remove,
                color: Color(0xFF5A57FF),
                size: 10,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

class ChamberSeledtionEntry extends StatefulWidget {
  String productName;
  String productQuantity;
  ChamberSeledtionEntry(
      {super.key, required this.productName, required this.productQuantity});

  @override
  State<ChamberSeledtionEntry> createState() => _ChamberSeledtionEntryState();
}

class _ChamberSeledtionEntryState extends State<ChamberSeledtionEntry> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      const Text(
        'Kanon Scanner',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF353535),
          fontSize: 14,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
      ),
      Container(
        width: 67,
        height: 27,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0.50, color: Color(0x195E57FC)),
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        child: const Center(
          child: Text(
            '1200',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF353535),
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    ]);
  }
}
