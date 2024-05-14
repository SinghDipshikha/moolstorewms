import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/Model/warehouse.dart';
import 'package:moolwmsstore/Owner/View/addChamber.dart';
import 'package:moolwmsstore/Owner/View/Chamber/chamberList.dart';
import 'package:moolwmsstore/utils/globals.dart';

////@RoutePage()
class ViewWarehouseDetails extends StatelessWidget {
  Warehouse? warehouse;
  ViewWarehouseDetails({super.key, this.warehouse});

  @override
  Widget build(BuildContext context) {
    Map data = {
      // "Warehouse Name": warehouse?.warehouse_name ?? "",
      "Warehouse Location": warehouse?.warehouses_location ?? "",
      "Manager Name": warehouse?.warehouse_manager_name ?? "",
      "Mobile Number": warehouse?.manager_phone_number ?? "",
      "Email ID": warehouse?.warehouse_manager_email_id ?? "",
      "No. of Chambers": warehouse?.no_of_chambers ?? "",
      "Total Capacity": warehouse?.total_capacity ?? "",
      "No. of Docks": warehouse?.no_of_docks ?? "",
      "No. of Gates": warehouse?.no_of_gates ?? "",
    };

    List cards = [
      {
        "title": "Chamber",
        "icon": "assets/icons/sccscscs.png",
        "onviewPressed": () {
          Get.to( ChamberList(  warehouse_id: warehouse!.id,), id: ownerNavigationKey);
        },
        "onAddpressed": () {
          Get.to(
              AddChamberView(
                warehouse_id: warehouse!.id,
              ),
              id: ownerNavigationKey);
        }
      },
      {
        "title": "Staff",
        "icon": "assets/icons/policeman-male 1.png",
        "onviewPressed": () {},
        "onAddpressed": () {}
      },
      {
        "title": "Assets",
        "icon": "assets/icons/Asset.png",
        "onviewPressed": () {},
        "onAddpressed": () {}
      }
    ];

    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          // shape: const RoundedRectangleBorder(
          //   borderRadius: BorderRadius.vertical(
          //     bottom: Radius.circular(34),
          //   ),
          // ),
          // backgroundColor: const Color(0xFF2D2D2D),\
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(1.00, 0.00),
                end: Alignment(-1, 0),
                colors: [Color(0xFF2D2D2D), Color(0xFF1F1F1F)],
              ),
            ),
          ),
          title: const Text(
            'Warehouse List',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
              //height: 0,
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 140,
              decoration: const ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(1.00, 0.00),
                  end: Alignment(-1, 0),
                  colors: [Color(0xFF2D2D2D), Color(0xFF1F1F1F)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset("assets/icons/machine 1.png")
                          .paddingOnly(right: 12)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Warehouse Name',
                        style: TextStyle(
                          color: Color(0xFF9F9F9F),
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          ////height: 0,
                        ),
                      ),
                      const Gap(4),
                      Text(
                        warehouse?.warehouse_name ?? "",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700,
                          //height: 0,
                        ),
                      )
                    ],
                  ).paddingOnly(left: 20, bottom: 20)
                ],
              ),
            ),
            Center(
              child: Wrap(
                runAlignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,

                /// alignment: WrapAlignment.center,
                runSpacing: 14,
                spacing: 14,
                children: List.generate(data.keys.length, (index) {
                  String key = data.keys.toList()[index];
                  String value = data[key].toString();

                  return Container(
                    width: 169,
                    // height: index < 2 ? 80 : 60,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFAF9FF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x195A57FF)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      //  mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          key,
                          style: const TextStyle(
                            color: Color(0xFF595959),
                            fontSize: 10,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w300,
                            //height: 0,
                          ),
                        ),
                        Text(
                          value,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ).paddingOnly(top: 8),
                      ],
                    ),
                  );
                }),
              ).paddingSymmetric(vertical: 16),
            ),
            const Gap(10),
            Center(
              child: Wrap(
                  runSpacing: 14,
                  spacing: 14,
                  children: List.generate(
                    cards.length,
                    (index) => Container(
                      width: 113,
                      height: 113,
                      decoration: ShapeDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(1.00, 0.00),
                          end: Alignment(-1, 0),
                          colors: [Color(0xFF2C2C2C), Color(0xFF1E1E1E)],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cards[index]["title"],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                              //height: 0,
                            ),
                          ).paddingOnly(top: 14, left: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                cards[index]["icon"],
                                height: 30,
                              ),
                            ],
                          ).paddingSymmetric(vertical: 4, horizontal: 8),
                          const Spacer(),
                          Row(
                            children: [
                              Expanded(
                                  child: InkWell(
                                onTap: cards[index]["onviewPressed"],
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(1.00, 0.00),
                                        end: Alignment(-1, 0),
                                        colors: [
                                          Color(0xFFFF5789),
                                          Color(0xFFFFD3E0)
                                        ],
                                      ),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20))),
                                  height: 32,
                                  child: IconButton(
                                      onPressed: cards[index]["onviewPressed"],
                                      icon: Image.asset(
                                        "assets/icons/Eye.png",
                                        color: Colors.white,
                                      )),
                                ),
                              )),
                              Expanded(
                                  child: InkWell(
                                onTap: cards[index]["onAddpressed"],
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(1.00, 0.00),
                                        end: Alignment(-1, 0),
                                        colors: [
                                          Color(0xFF5A57FF),
                                          Color(0xFFCAC9FF)
                                        ],
                                      ),
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20))),
                                  height: 32,
                                  child: IconButton(
                                      onPressed: cards[index]["onAddpressed"],
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 18,
                                      )),
                                ),
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
