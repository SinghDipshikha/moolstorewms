import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Indent/indent_chamber.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsController.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/utils/dimensions.dart';

class IndentList extends StatefulWidget {
  const IndentList({super.key});

  @override
  State<IndentList> createState() => _IndentListState();
}

class _IndentListState extends State<IndentList> {
  List<IndentChamber>? chambers;
  @override
  void initState() {
    super.initState();
    Get.find<DmsController>().dmsRepo.getAllIndentsInWarehouse().then((v) {
      if (v != null)
        setState(() {
          chambers = v;
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Indents List', style: TextStyles.appBarTextStyle),
      ),
      body: chambers == null
          ? const Center(
              child: SpinKitDoubleBounce(
                color: Color(0xFF5A57FF),
              ),
            )
          : ListView.builder(
              itemCount: chambers!.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.amber),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Chamber No. ${chambers![index].chamber_id}"),
                      if (chambers![index].pallets != null)
                        Column(
                          children: List.generate(
                              chambers![index].pallets!.length, (palletIndex) {
                            chambers![index]
                                .pallets![palletIndex]
                                .indentNumbers;
                            if (chambers![index]
                                    .pallets![palletIndex]
                                    .indentNumbers ==
                                null) {
                              return Container();
                            }

                            return Column(
                              children: List.generate(
                                  chambers![index]
                                      .pallets![palletIndex]
                                      .indentNumbers!
                                      .length, (indentIndex) {
                                return Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Pallet : ${chambers![index].pallets![palletIndex].pallet}",
                                          style: const TextStyle(
                                              color: Colors.red),
                                        ),
                                      ],
                                    ),
                                    ...List.generate(
                                        chambers![index]
                                            .pallets![palletIndex]
                                            .indentNumbers![indentIndex]
                                            .products
                                            .length, (productIndex) {
                                      return Text(chambers![index]
                                              .pallets![palletIndex]
                                              .indentNumbers![indentIndex]
                                              .products[productIndex]
                                              .toJson()
                                              .toString())
                                          .paddingSymmetric(
                                              vertical: 4, horizontal: 6);
                                    })
                                  ],
                                );
                              }),
                            );
                          }),
                        )
                    ],
                  ),
                ).paddingSymmetric(vertical: 12);
              },
            ).paddingSymmetric(
              vertical: Dimensions.vericalBodyPad,
              horizontal: Dimensions.horizontalBodyPad),
    );
  }
}
