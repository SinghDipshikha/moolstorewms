import 'package:flutter/material.dart';

class InspectproductScreen extends StatefulWidget {
  const InspectproductScreen({super.key});

  @override
  State<InspectproductScreen> createState() => _InspectproductScreenState();
}

class _InspectproductScreenState extends State<InspectproductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inpect Product',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
