import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/base/customButton.dart';
import 'package:moolwmsstore/View/base/myTextField.dart';
import 'package:moolwmsstore/appConstants.dart';

@RoutePage()
class Refervehicle extends StatefulWidget {
  const Refervehicle({Key? key}) : super(key: key);

  @override
  State<Refervehicle> createState() => _RefervehicleState();
}

class _RefervehicleState extends State<Refervehicle> {
  int warehouseCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Refer vehicle'),
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
                    (index) => ReferVehicleWidget(
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
                    'add_vehicle'.tr,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Theme.of(context).primaryColor),
                  ),
                ),
                const Gap(20),
                CustomButton(title: "Submit"),
                const Gap(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReferVehicleWidget extends StatelessWidget {
  void Function()? onDeletePressed;
  ReferVehicleWidget({Key? key, required this.onDeletePressed})
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
                  "Vehicle",
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
              labelText: "Vehicle Number",
            ),
            MyTextField(labelText: "Owner Name"),
            MyTextField(labelText: "Owner Type"),
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
