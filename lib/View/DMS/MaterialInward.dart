import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/base/customButton.dart';
import 'package:moolwmsstore/appConstants.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';

@RoutePage()
class MaterialInward extends StatelessWidget {
  const MaterialInward({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List uiData = [
      {"title": "vehicle_number".tr, "Value": "GJ34323"},
      {"title": "customer_name".tr, "Value": "Mother Dairy"},
      {"title": "driver_name".tr, "Value": "Paresh"},
      {"title": "driver_phone_no".tr, "Value": "234334343434"},
      {"title": "date_of_movement".tr, "Value": "12-3-2023"},
      {"title": "direction_of_movement".tr, "Value": "inward".tr},
    ];
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'material_inward'.tr,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Gap(20),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 14),
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    boxShadow: ColorConstants.boxShadow(context),
                    borderRadius: BorderRadius.circular(12)),
                //  height: 600,
                width: MediaQuery.sizeOf(context).width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("material_details".tr,
                            style: Theme.of(context).textTheme.titleMedium),
                        Expanded(child: Container()),
                        InkWell(
                          onTap: () {
                            context.pushRoute(AssignDockRoute());
                            // showDialog(
                            //   context: context,
                            //   builder: (context) {
                            //     return Dialog(
                            //         elevation: 10,
                            //         shape: const RoundedRectangleBorder(
                            //             borderRadius: BorderRadius.all(
                            //                 Radius.circular(12))),
                            //         child: SizedBox(
                            //             height:
                            //                 MediaQuery.sizeOf(context).height *
                            //                     0.6,
                            //             width: MediaQuery.sizeOf(context).width,
                            //             child: const AssignDockDialog()));
                            //   },
                            //   barrierColor:
                            //       Theme.of(context).dialogTheme.backgroundColor,
                            // );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    width: 0.4,
                                    color: Theme.of(context).primaryColor)),
                            child: Text(
                              "Assign Dock",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                          ),
                        ),
                        const Gap(10),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  width: 0.4,
                                  color: Theme.of(context).primaryColor)),
                          child: Text(
                            "More Info",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ],
                    ),
                    const Gap(20),
                    Wrap(
                      children: List.generate(
                          uiData.length,
                          (index) => Padding(
                                padding: const EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 40)
                                    .copyWith(left: 0, right: 60),
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
                    const Gap(40),
                    Wrap(
                      alignment: WrapAlignment.start,
                      runSpacing: 30,
                      spacing: 30,
                      children: List.generate(
                          4,
                          (index) => Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 4),
                                // height: 100,
                                width: 380,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Theme.of(context).hintColor,
                                        width: 0.4),
                                    color: Theme.of(context).cardColor,
                                    // boxShadow: ColorConstants.colouredboxShadow(
                                    //     color: Theme.of(context).primaryColor),
                                    borderRadius: BorderRadius.circular(6)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "1.Disel (Qua-10)",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    color: Theme.of(context)
                                                        .primaryColor),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons
                                                  .arrow_drop_down_outlined))
                                        ],
                                      ),
                                      const Gap(10),
                                      Row(
                                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Vehicle Number",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium
                                                      ?.copyWith(
                                                          color:
                                                              Theme.of(context)
                                                                  .hintColor),
                                                ),
                                                Text(
                                                  "Vehicle Number",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Disel Bill Number",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium
                                                      ?.copyWith(
                                                          color:
                                                              Theme.of(context)
                                                                  .hintColor),
                                                ),
                                                Text(
                                                  "Vehicle Number",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Gap(10),
                                    ]),
                              )),
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomButton(
                          onTap: () {
                            context.pushRoute(const UnloadingRoute());
                          },
                          title: "Start Unloading",
                          width: 200,
                        )
                      ],
                    ),
                    //const Gap(10),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
