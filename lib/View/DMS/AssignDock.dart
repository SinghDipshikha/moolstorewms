import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/base/customButton.dart';
import 'package:moolwmsstore/appConstants.dart';
import 'package:platform_detector/platform_detector.dart';

@RoutePage()
class AssignDock extends StatelessWidget {
  AssignDock({Key? key}) : super(key: key);

  List uiData = [
    {"title": "token".tr, "Value": "34323"},
    {"title": "vehicle_number".tr, "Value": "GJ34323"},
    {"title": "customer_name".tr, "Value": "Mother Dairy"},
    {"title": "customer_name".tr, "Value": "Mother Dairy"},
    {"title": "driver_name".tr, "Value": "Paresh"},
    {"title": "driver_phone_no".tr, "Value": "234334343434"},
    {"title": "date_of_movement".tr, "Value": "12-3-2023"},
    {"title": "direction_of_movement".tr, "Value": "inward".tr},
    {"title": "direction_of_movement".tr, "Value": "inward".tr},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "assign_dock".tr,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Gap(20),
              // Divider(
              //   color: Theme.of(context).hintColor,
              // ),
              isMobile()
                  ? Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).cardColor,
                        boxShadow: ColorConstants.boxShadow(context),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                              uiData.length,
                              (index) => Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12),
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).cardColor,
                                        border: Border.symmetric(
                                            horizontal: BorderSide(
                                                width: 0.04,
                                                color: Theme.of(context)
                                                        .iconTheme
                                                        .color ??
                                                    Colors.white))),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              uiData[index]["title"],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      color: Theme.of(context)
                                                          .hintColor),
                                            ),
                                          ),
                                          const Gap(10),
                                          Expanded(
                                            child: Text(
                                              uiData[index]["Value"],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                        ),
                      ),
                    )
                  : Wrap(
                      children: List.generate(
                          uiData.length,
                          (index) => Padding(
                                padding: const EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 40)
                                    .copyWith(left: 0, right: 80),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      uiData[index]["title"],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              color:
                                                  Theme.of(context).hintColor),
                                    ),
                                    Text(
                                      uiData[index]["Value"],
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                              )),
                    ),
              const Gap(16),

              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Dock Selection",
                          style: Theme.of(context).textTheme.titleMedium),
                      const Gap(14),
                      Container(
                        alignment: Alignment.center,
                        height: 46,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 0.8,
                                color: Theme.of(context).hintColor)),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.arrow_drop_down,
                              size: 38,
                            ),
                            Gap(16),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Assigned to",
                          style: Theme.of(context).textTheme.titleMedium),
                      const Gap(14),
                      Container(
                        alignment: Alignment.center,
                        height: 46,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 0.8,
                                color: Theme.of(context).hintColor)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_drop_down,
                              size: 38,
                            ),
                            Gap(16),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Gap(16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Assigned by",
                          style: Theme.of(context).textTheme.titleMedium),
                      const Gap(14),
                      Container(
                        alignment: Alignment.center,
                        height: 46,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                width: 0.8,
                                color: Theme.of(context).hintColor)),
                      )
                    ],
                  )
                ],
              ),

              const Gap(20),
              // Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    radius: isMobile() ? null : 10,
                    width: isMobile() ? 140 : 160,
                    glow: false,
                    title: "Cancel",
                  ),
                  CustomButton(
                    radius: isMobile() ? null : 10,
                    width: isMobile() ? 140 : 160,
                    title: "Assign",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
