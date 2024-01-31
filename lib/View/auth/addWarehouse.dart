import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/base/customButton.dart';
import 'package:moolwmsstore/View/base/myTextField.dart';
import 'package:moolwmsstore/appConstants.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';

@RoutePage()
class AddWarehouse extends StatefulWidget {
  const AddWarehouse({Key? key}) : super(key: key);

  @override
  State<AddWarehouse> createState() => _AddWarehouseState();
}

class _AddWarehouseState extends State<AddWarehouse> {
  int warehouseCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('add_warehouse'.tr),
      ),
      body: SingleChildScrollView(
        // controller: controller,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              children: [
                ...List.generate(
                    warehouseCount,
                    (index) => AddWarehouseWidget(
                          onDeletePressed: () {
                            if (warehouseCount > 1) {
                              setState(() {
                                warehouseCount -= 1;
                              });
                            }
                          },
                        )),
                const Gap(10),
                InkWell(
                  onTap: () {
                    setState(() {
                      warehouseCount += 1;
                    });
                  },
                  child: Text(
                    "+ Add Warehouse",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Theme.of(context).primaryColor),
                  ),
                ),
                const Gap(20),
                CustomButton(
                  title: "Submit",
                  onTap: () {
                    context.pushRoute(MobileWebBodyRoute());
                  },
                ),
                const Gap(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddWarehouseWidget extends StatelessWidget {
  void Function()? onDeletePressed;
  AddWarehouseWidget({Key? key, required this.onDeletePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        // width: isMobile()
        //     ? double.infinity
        //     : MediaQuery.sizeOf(context).width * 0.4,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            boxShadow: ColorConstants.boxShadow(context),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Warehouse",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                IconButton(
                    onPressed: onDeletePressed,
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ))
              ],
            ),
            const Gap(10),
            MyTextField(
              labelText: "Warehouse Name",
            ),
            MyTextField(labelText: "Manager Email Address"),
            MyTextField(labelText: "Warehouse Manager"),
            MyTextField(labelText: "Mobile Number"),
            MyTextField(
              labelText: "Warehouse Location",
              suffixIcon: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.location_pin)),
            ),
            Row(
              children: [
                Expanded(child: MyTextField(labelText: "No of Chambers")),
                const Gap(15),
                Expanded(child: MyTextField(labelText: "Total Capacity")),
              ],
            ),
            Row(
              children: [
                Expanded(child: MyTextField(labelText: "No of Docks")),
                const Gap(15),
                Expanded(child: MyTextField(labelText: "No of States")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
