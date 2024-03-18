import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
@RoutePage()  
class ChamberView extends StatefulWidget {
  const ChamberView({super.key});

  @override
  State<ChamberView> createState() => _ChamberViewState();
}

class _ChamberViewState extends State<ChamberView> {
  @override
  Widget build(BuildContext context) {
    List<String> alphabets = [
      "",
      "A",
      "B",
      "C",
      "D",
      "E",
      "F",
      "G",
      "H",
      "I",
      "J",
      "K",
      "L",
      "M",
      "N",
      "O",
      "P",
      "Q",
      "R",
      "S",
      "T",
      "U",
      "V",
      "W",
      "X",
      "Y",
      "Z"
    ];
    // int totalPalletsonFloor = 15;
    // int palletinOneRow = 12;
    int totalrows = 8;
    int totalColums = 12;
    List aisle = ["A1", "A2", "A3", "A4", "B4"];
    List aisleLongterm = ["H1", "H2", "H3", "H4", "F4"];
    List storage = ["E1", "E2", "E3", "G4", "D4"];
    List air = ["C1", "D2", "F3", "J4", "I4"];
    List x = ["K1", "K2", "K3", "K4", "J4"];
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          //  centerTitle: false,
          // shape: const RoundedRectangleBorder(
          //   borderRadius: BorderRadius.vertical(
          //     bottom: Radius.circular(34),
          //   ),
          // ),
          backgroundColor: Colors.black,
          title: Text(
            'chamber_view'.tr,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
                child: Column(children: [
              //  const Gap(12),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Select Floor',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      width: 178,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.82),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x0C000000),
                            blurRadius: 2,
                            offset: Offset(0, 1.50),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          const Gap(10),
                          const Expanded(
                            child: Text(
                              'Select',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/icons/Direction Btn.png",
                                height: 12,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: List.generate(totalColums, (c) {
                  return Row(
                    children: List.generate(totalrows, (r) {
                      if (c == 0 && r == 0) {
                        return _GridItem("");
                      }
                      if (c == 0 && r != 0) {
                        return _GridItem("$r");
                      }
                      if (c != 0 && r == 0) {
                        return _GridItem(alphabets[c]);
                      }
                      if (storage.contains("${alphabets[c]}$r")) {
                        return _GridItem(
                          "${alphabets[c]}$r",
                          status: "S",
                        );
                      }
                      if (aisle.contains("${alphabets[c]}$r")) {
                        return _GridItem(
                          "${alphabets[c]}$r",
                          status: "A",
                        );
                      }
                      if (aisleLongterm.contains("${alphabets[c]}$r")) {
                        return _GridItem(
                          "${alphabets[c]}$r",
                          status: "AS",
                        );
                      }
                      if (x.contains("${alphabets[c]}$r")) {
                        return _GridItem(
                          "${alphabets[c]}$r",
                          status: "X",
                        );
                      }
                      if (air.contains("${alphabets[c]}$r")) {
                        return _GridItem(
                          "${alphabets[c]}$r",
                          status: "XS",
                        );
                      }

                      return _GridItem(
                        "${alphabets[c]}$r",
                        //status: "S",
                      );
                    }),
                  );
                }),
              ),
            ]))));
  }
}

class _GridItem extends StatelessWidget {
  final String index;
  String? status;

  _GridItem(this.index, {super.key, this.status});

  @override
  Widget build(BuildContext context) {
    Color? color = Colors.grey[200];
    if (status == "S") {
      color = const Color(0xff02a676);
    }
    if (status == "AS") {
      color = const Color(0xfff26803);
    }
    if (status == "A") {
      color = const Color(0xffffce00);
    }
    if (status == "X") {
      color = const Color(0xff2d72ff);
    }
    if (status == "XS") {
      color = const Color(0xff902cfc);
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 33, width: 33,
        color: color, // Set a background color for visibility
        child: Center(
          child: Text(
            // Display the index for demonstration purposes
            status ?? index,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: status != null ? Colors.white : null),
          ),
        ),
      ),
    );
  }
}
