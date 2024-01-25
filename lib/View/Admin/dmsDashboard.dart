import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:moolwmsstore/View/base/mobileAppBar.dart';
import 'package:moolwmsstore/appConstants.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';
import 'package:platform_detector/platform_detector.dart';

@RoutePage()
class DmsDashboard extends StatefulWidget {
  const DmsDashboard({Key? key}) : super(key: key);

  @override
  _DmsDashboardState createState() => _DmsDashboardState();
}

class _DmsDashboardState extends State<DmsDashboard> {
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class DmsDashboardBody extends StatefulWidget {
  const DmsDashboardBody({Key? key}) : super(key: key);

  @override
  State<DmsDashboardBody> createState() => _DmsDashboardBodyState();
}

class _DmsDashboardBodyState extends State<DmsDashboardBody> {
  final bool mobile = isMobile();
  CarouselController? controller = CarouselController();
  CarouselController? controller1 = CarouselController();
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    Widget outward = Padding(
      padding: isMobile()
          ? const EdgeInsets.all(10).copyWith(bottom: 20, top: 20)
          : EdgeInsets.zero,
      child: Container(
        height: isMobile() ? null : 240,
        width: isMobile() ? null : 300,
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
                      onPressed: () {})
                ],
              ),
            )
          ],
        ),
      ),
    );

    Widget inward = Padding(
      padding: isMobile()
          ? const EdgeInsets.all(10).copyWith(bottom: 20, top: 20)
          : EdgeInsets.zero,
      child: Container(
        height: isMobile() ? null : 240,
        width: isMobile() ? null : 300,
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
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return const MaterialInward();
                        // }));
                        context.navigateTo(const MaterialInwardRoute());
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );

    List<Widget> bodies = List.generate(2, (index) {
      Widget listviewBody =
          Expanded(child: ListView.builder(itemBuilder: (context, i) {
        return InkWell(
          onTap: () {
            context.pushRoute(const MaterialInwardRoute());
          },
          child: Container(
            padding: isMobile()
                ? const EdgeInsets.symmetric(vertical: 12, horizontal: 20)
                : const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 0.5,
                        color: Theme.of(context).hintColor ?? Colors.white))
                // border: Border.symmetric(
                //     horizontal: BorderSide(
                //         width: 0.05,
                //         color: Theme.of(context).iconTheme.color ?? Colors.white))

                ),
            // color: Theme.of(context).shadowColor,
            child: mobile
                ? Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(("66d323"),
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge!),
                          const Gap(10),
                          Text(("Customer"),
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color: Theme.of(context).hintColor)),
                          const Gap(2),
                          Text(("Mother Diary"),
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyMedium!),
                          const Gap(10),
                          Text(("Token"),
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color: Theme.of(context).hintColor)),
                          const Gap(2),
                          Text(("32"),
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyMedium!),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: HexColor('#31D925'),
                              ),
                              const Gap(5),
                              Text(("Assigned"),
                                  textAlign: TextAlign.center,
                                  style:
                                      Theme.of(context).textTheme.bodyLarge!),
                              Expanded(child: Container()),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              )
                            ],
                          ),
                          const Gap(10),
                          Text(("Dock"),
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color: Theme.of(context).hintColor)),
                          const Gap(2),
                          Text(("-"),
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyMedium!),
                          //Token
                          const Gap(10),
                          Text(("Date & Time"),
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color: Theme.of(context).hintColor)),
                          const Gap(2),
                          Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "7 Sep 2023   12:00 PM",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontWeight: FontWeight.bold)),
                            // TextSpan(
                            //     text: "  12:00 PM",
                            //     style: Theme.of(context).textTheme.titleSmall!)
                          ])),
                          //Token
                        ],
                      ))
                    ],
                  )
                : Row(
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

      return Padding(
        padding: !mobile
            ? EdgeInsets.zero
            : const EdgeInsets.symmetric(horizontal: 10, vertical: 0)
                .copyWith(top: 10),
        child: Container(
          padding: mobile
              ? EdgeInsets.zero
              : const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          height: mobile ? null : MediaQuery.sizeOf(context).height - 330,
          width: mobile ? width : (MediaQuery.sizeOf(context).width - 260) / 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).cardColor,
              boxShadow: ColorConstants.boxShadow(context)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Column(
              children: [
                mobile
                    ? Container(
                        alignment: Alignment.center,
                        height: 60,
                        color: index == 0
                            ? ColorConstants.INWARD_LIGHT
                            : ColorConstants.OUTWARD_LIGHT,
                        child: Row(
                          children: [
                            const Gap(20),
                            Text((index == 0 ? "inward".tr : "outward".tr),
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(color: Colors.white)),
                          ],
                        ),
                      )
                    : Row(
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
                                onPressed: () {},
                                icon: const Icon(Icons.search)),
                          ),
                        ],
                      ),
                if (!mobile) const Gap(12),
                if (!mobile)
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
          ),
        ),
      );
    });

    return Scaffold(
      appBar: isMobile() ? appBarMobile(context) : null,
      body: Container(
        padding: isMobile()
            ? EdgeInsets.zero
            : const EdgeInsets.all(10).copyWith(bottom: 0),
        child: Column(
          children: [
            mobile
                // ? Container()
                ? SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    height: 260,
                    child: FlutterCarousel(
                      options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            controller1!.animateToPage(index);
                          },
                          controller: controller,
                          showIndicator: false,

                          //enableInfiniteScroll: true,
                          // pauseAutoPlayInFiniteScroll: true,
                          autoPlay: false,
                          autoPlayInterval: const Duration(seconds: 10),
                          viewportFraction: isMobile() ? 0.94 : 0.3,
                          enlargeCenterPage: true,
                          slideIndicator: CircularWaveSlideIndicator(),
                          floatingIndicator: false,
                          indicatorMargin: 0),
                      items: [inward, outward],
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [inward, const Gap(30), outward],
                  ),
            Gap(mobile ? 0 : 10),
            mobile
                ? SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: FlutterCarousel(
                      options: CarouselOptions(
                          height: height - 380,
                          onPageChanged: (index, reason) {
                            controller!.animateToPage(index);
                          },
                          controller: controller1,
                          autoPlay: false,
                          viewportFraction: 1,
                          enlargeCenterPage: false,
                          showIndicator: false,
                          indicatorMargin: 0),
                      items: bodies,
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: bodies)
          ],
        ),
      ),
    );
  }
}
