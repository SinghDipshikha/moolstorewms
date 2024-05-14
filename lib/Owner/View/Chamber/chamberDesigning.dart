import 'package:flutter/material.dart';

class ChamberDesigning extends StatefulWidget {
  const ChamberDesigning({super.key});

  @override
  _ChamberDesigningState createState() => _ChamberDesigningState();
}

class _ChamberDesigningState extends State<ChamberDesigning> {
  int matrix = 12;
  int row = 12;
  int column = 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chamber View',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: List.generate(column, (c) {
          return Row(
            children: List.generate(
                row,
                (r) => Container(
                      color: Colors.blue,
                      child: Text("R${r}C$c"),
                    )),
          );
        }),
      ),
    );
  }
}
