// import 'package:flutter/material.dart';
// import 'package:moolwmsstore/Dock%20Supervisor/widget/commonDropDown.dart';

// class SelectChamberScreen extends StatefulWidget {
//   const SelectChamberScreen({super.key});

//   @override
//   State<SelectChamberScreen> createState() => _SelectChamberScreenState();
// }

// class _SelectChamberScreenState extends State<SelectChamberScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Select Chamber',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//             fontFamily: 'SF Pro Display',
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: CustomFloatingActionButton(
//         title: 'Submit',
//         onTap: () {},
//       ),
//       body: const Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(const SelectChamberScreen());

class SelectChamberScreen extends StatefulWidget {
  const SelectChamberScreen({super.key});

  @override
  State<SelectChamberScreen> createState() => _SelectChamberScreenState();
}

class _SelectChamberScreenState extends State<SelectChamberScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('GridView Example')),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 8,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Container(
                width: 125.73,
                height: 44.74,
                decoration: ShapeDecoration(
                  color: const Color(0xFF04BF8A),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                ),
                child:  GridTile(
                    child: Center(
                        child: Text(
                  'Deep',
                  style: TextStyle(color: Colors.white),
                ))),
              ),
            );
          },
        ),
      ),
    );
  }
}
