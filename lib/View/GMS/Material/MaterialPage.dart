import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/View/GMS/Material/MaterialInward.dart';
import 'package:moolwmsstore/View/base/mobileWebBody.dart';
import 'package:moolwmsstore/appConstants.dart';
import 'package:moolwmsstore/helper/route_helper.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage() 
class MaterialPageInOut extends StatelessWidget {
  const MaterialPageInOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MobileWebBody(
      body: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Navigator(
            // You MUST pass an unique key to the Navigator
            key: Get.nestedKey(1),
            // Initial route (see destination.dart above)
            initialRoute: RouteHelper.material,
            // Generate a route based on Destination (see destination.dart above)
            onGenerateRoute: (settings) {
              Logger().i(settings.name);
              late Widget page;
              switch (settings.name) {
                case "/":
                  page = const MaterialPageBody();
                case RouteHelper.material:
                  page = const MaterialPageBody();
                case RouteHelper.materialInward:
                  page = const MaterialInward();
              }

              return MaterialPageRoute(builder: (context) {
                return page;
              });
            },
          ),
        )
      ],
    );
  }
}

@RoutePage() 
class MaterialPageBody extends StatefulWidget {
  const MaterialPageBody({Key? key}) : super(key: key);

  @override
  _MaterialPageBodyState createState() => _MaterialPageBodyState();
}

class _MaterialPageBodyState extends State<MaterialPageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 240,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: ColorConstants.colouredboxShadow(
                    color: ColorConstants.INWARD_LIGHT.withOpacity(0.5)),
                color: ColorConstants.INWARD_EXTRA_LIGHT,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: ColorConstants.INWARD_LIGHT,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/images/material.png",
                                  width: 66, height: 66),
                            ),
                          ),
                          const Gap(5),
                          Text(
                            "inward".tr,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: ColorConstants.INWARD_LIGHT,
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(12))),
                    height: 46,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: SvgPicture.asset("assets/images/menu.svg",
                                color: Colors.white),
                            onPressed: () {
                              Get.nestedKey(1)!
                                  .currentState!
                                  .pushNamed(RouteHelper.materialInward);
                            })
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Gap(30),
            Container(
              height: 240,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: ColorConstants.colouredboxShadow(
                    color: ColorConstants.OUTWARD_LIGHT.withOpacity(0.5)),
                color: ColorConstants.OUTWARD_EXTRA_LIGHT,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: ColorConstants.OUTWARD_LIGHT,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/images/material.png",
                                  width: 66, height: 66),
                            ),
                          ),
                          const Gap(5),
                          Text(
                            "outward".tr,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: ColorConstants.OUTWARD_LIGHT,
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(12))),
                    height: 46,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: SvgPicture.asset("assets/images/menu.svg",
                                color: Colors.white),
                            onPressed: () {
                              Get.offNamed(RouteHelper.material);
                            })
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        const Gap(40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(2, (index) {
            Widget listviewBody =
                Expanded(child: ListView.builder(itemBuilder: (context, i) {
              return Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 0.05,
                            color: Theme.of(context).hintColor ?? Colors.white))
                    // border: Border.symmetric(
                    //     horizontal: BorderSide(
                    //         width: 0.05,
                    //         color: Theme.of(context).iconTheme.color ?? Colors.white))

                    ),
                // color: Theme.of(context).shadowColor,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: HexColor('#31D925'),
                            ),
                            const Gap(5),
                            Text("Ravi",
                                style:
                                    Theme.of(context).textTheme.titleMedium!),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(("HR01AU5447"),
                            style: Theme.of(context).textTheme.titleMedium!),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(("Mother Dairy"),
                            style: Theme.of(context).textTheme.titleMedium!),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(("66"),
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium!),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(("-"),
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium!),
                      ),
                      //  const Gap(10),
                      Expanded(
                        flex: 3,
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: "7 SEP 2023",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "\n12:00 PM",
                              style: Theme.of(context).textTheme.titleSmall!)
                        ])),
                      ),
                    ],
                  ),
                ),
              );
            }));

            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
              height: MediaQuery.sizeOf(context).height - 360,
              width: (MediaQuery.sizeOf(context).width - 40) / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).cardColor,
                  boxShadow: ColorConstants.boxShadow(context)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/material.png",
                          width: 38, height: 38),
                      const Gap(20),
                      Text((index == 0 ? "inward".tr : "outward".tr),
                          style: Theme.of(context).textTheme.titleLarge),
                      Expanded(child: Container()),
                      Container(
                        //padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                width: 0.4,
                                color: Theme.of(context).iconTheme.color ??
                                    Colors.white)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.filter_alt),
                        ),
                      ),
                      const Gap(10),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                width: 0.4,
                                color: Theme.of(context).iconTheme.color ??
                                    Colors.white)),
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.search)),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Container(
                    color: Theme.of(context).shadowColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(("status".tr),
                                style:
                                    Theme.of(context).textTheme.titleMedium!),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(("vehicle_no".tr),
                                style:
                                    Theme.of(context).textTheme.titleMedium!),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(("customer".tr),
                                style:
                                    Theme.of(context).textTheme.titleMedium!),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(("token".tr),
                                textAlign: TextAlign.center,
                                style:
                                    Theme.of(context).textTheme.titleMedium!),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(("dock".tr),
                                textAlign: TextAlign.center,
                                style:
                                    Theme.of(context).textTheme.titleMedium!),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(("datetime".tr),
                                style:
                                    Theme.of(context).textTheme.titleMedium!),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: listviewBody)
                ],
              ),
            );
          }),
        )
      ],
    );
  }
}
