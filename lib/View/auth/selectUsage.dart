import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/base/customButton.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';
import 'package:platform_detector/platform_detector.dart';

@RoutePage()
class SelectUsage extends StatefulWidget {
  const SelectUsage({Key? key}) : super(key: key);

  @override
  State<SelectUsage> createState() => _SelectUsageState();
}

class _SelectUsageState extends State<SelectUsage> {
  Map data = {
    0: {
      "title": "warehouse".tr,
      "subtitle": "add_warehouse_details".tr,
      "image": "assets/images/warehouse-clipart-md.png"
    },
    1: {
      "title": "Refer Vehicle",
      "subtitle": "Add vehicle details",
      "image": "assets/images/vehicle.png"
    },
    // 2: {
    //   "title": "Customer",
    //   "subtitle": "Authorize Detail",
    //   "image": "assets/images/warehouse.png"
    // },
  };
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Please select your usage",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Row(),
          const Gap(20),
          Wrap(
            children: List.generate(
                data.length,
                (index) => InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: isMobile() ? 130 : 200,
                          width: isMobile() ? double.infinity : 200,
                          decoration: BoxDecoration(
                              color: selectedIndex == index
                                  ? Theme.of(context).primaryColor
                                  : null,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 0.3,
                                  color: Theme.of(context).primaryColor),
                              boxShadow: selectedIndex == index
                                  ? [
                                      BoxShadow(
                                        color: Theme.of(context)
                                            .primaryColor
                                            .withOpacity(0.3),
                                        blurRadius: 10,
                                        offset: const Offset(0, 4),
                                        spreadRadius: 0,
                                      )
                                    ]
                                  : null),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                data[index]["image"],
                                height: 60,
                                fit: BoxFit.cover,
                                // color: selectedIndex == index
                                //     ? Colors.white
                                //     : null,
                              ),
                              const Gap(5),
                              Text(
                                data[index]["title"],
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color: selectedIndex == index
                                          ? Colors.white
                                          : null,
                                    ),
                              ),
                              Text(
                                data[index]["subtitle"],
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      color: selectedIndex == index
                                          ? Colors.white
                                          : null,
                                    ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
          ),
          const Gap(20),
          CustomButton(
            onTap: () {
              //   context.pushRoute(MobileWebBodyRoute());
              if (selectedIndex == 0) {
                context.pushRoute(const AddWarehouseRoute());
              } else {
                context.pushRoute(const RefervehicleRoute());
              }
            },
            width: isMobile() ? null : 400,
            title: "get_started".tr,
            glow: selectedIndex == null ? false : true,
          )
        ],
      ),
    ));
  }
}
