import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
          const Gap(10),
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
            ),
          ),
          const Gap(10),
        ],
      ),
    );
  }
}

class ProductEntry extends StatefulWidget {
  String productName;
  String productQuantity;
  ProductEntry(
      {super.key, required this.productName, required this.productQuantity});

  @override
  State<ProductEntry> createState() => _ProductEntryState();
}

class _ProductEntryState extends State<ProductEntry> {
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
      child: Row(children: [
        const Text(
          'Hepson Printer',
          style: TextStyle(
            color: Color(0xFF353535),
            fontSize: 16,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
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
      ]),
    );
  }
}
