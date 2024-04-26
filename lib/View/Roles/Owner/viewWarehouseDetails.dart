import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Data/Model/Warehouse/warehouse.dart';

////@RoutePage()
class ViewWarehouseDetails extends StatelessWidget {
  Warehouse? warehouse;
  ViewWarehouseDetails({super.key, this.warehouse});

  @override
  Widget build(BuildContext context) {
    Map data = {
      "Warehouse Name": warehouse?.warehouse_name ?? "",
      "Manager Name": warehouse?.warehouse_manager ?? "",
      "Mobile Number": warehouse?.phone ?? "",
      "Email ID": warehouse?.manage_email ?? "",
      "No. of Chambers": warehouse?.no_of_chambers ?? "",
      "Total Capacity": warehouse?.total_capacity ?? "",
      "No. of Docks": warehouse?.no_of_docks ?? "",
      "No. of Gates": warehouse?.no_of_gates ?? "",
      "Location": warehouse?.warehouse_location ?? "",
    };

    return Scaffold(
      appBar: AppBar(
        //  centerTitle: false,
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(
        //     bottom: Radius.circular(34),
        //   ),
        // ),
        backgroundColor: Colors.black,
        title: Text(
          'view_warehouse_details'.tr,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              runAlignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,

              /// alignment: WrapAlignment.center,
              runSpacing: 14,
              spacing: 30,
              children: List.generate(data.keys.length, (index) {
                String key = data.keys.toList()[index];
                String value = data[key].toString();

                return Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.80),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x0C000000),
                        blurRadius: 2,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        key,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        value,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ).paddingSymmetric(vertical: 16),
            const Gap(10),
            Wrap(
              runSpacing: 20,
              // spacing: 18,
              children: [
                InkWell(
                  onTap: () {
                    // context.pushRoute(const ChamberListRoute());
                  },
                  child: Chip(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      elevation: 10,
                      labelPadding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 12),
                      backgroundColor: Colors.white,
                      avatar: Image.asset(
                        "assets/icons/Add Red.png",
                        height: 30,
                      ),
                      label: const Row(
                        children: [
                          Text(
                            "add_chamber",
                          ),
                        ],
                      )),
                ),
                Chip(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    labelPadding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
                    backgroundColor: Colors.white,
                    avatar: Image.asset(
                      "assets/icons/Add Red.png",
                      height: 30,
                    ),
                    label: const Row(
                      children: [
                        Text(
                          'Add User/Staff',
                        ),
                      ],
                    )),
                Chip(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    labelPadding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
                    backgroundColor: Colors.white,
                    avatar: Image.asset(
                      "assets/icons/Eye.png",
                      height: 30,
                    ),
                    label: const Row(
                      children: [
                        Text(
                          'View Assets',
                        ),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
