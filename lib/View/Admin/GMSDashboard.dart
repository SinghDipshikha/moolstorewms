import 'package:accordion/accordion.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:moolwmsstore/View/common/mobileAppBar.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';
import 'package:platform_detector/platform_detector.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

@RoutePage()
class GMSDashboard extends StatelessWidget {
  const GMSDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class GMSDashboardBody extends StatefulWidget {
  const GMSDashboardBody({Key? key}) : super(key: key);

  @override
  State<GMSDashboardBody> createState() => _GMSDashboardBodyState();
}

class _GMSDashboardBodyState extends State<GMSDashboardBody> {
  CarouselController? controller = CarouselController();
  CarouselController? controller1 = CarouselController();

  bool summary = true;
  final bool mobile = isMobile();
  final List<Widget> sliders = isMobile()
      ? [
          const GMSsummmary(),

          const GMSmaterial(),
          //  const GMSsummmary(),
          const GMSperson(),
          const GMSvehicle(),
          const GMSqueue(),
        ]
      : [
          const GMSmaterial(),
          const GMSperson(),
          const GMSvehicle(),
          const GMSqueue(),
        ];
  final List<Widget> bodies = isMobile()
      ? [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14).copyWith(bottom: 20),
            child: GMSsummmaryBody(),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14).copyWith(bottom: 20),
            child: const GMSmaterailBody(),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14).copyWith(bottom: 20),
            child: const GMSPersonBody(),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14).copyWith(bottom: 20),
            child: const GMSvehicleBody(),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14).copyWith(bottom: 20),
            child: const GMSqueueBody(),
          ),
        ]
      : [
          const GMSPersonBody(),
          const GMSvehicleBody(),
          const GMSmaterailBody(),
          const GMSqueueBody(),
        ];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    return Scaffold(

      body: ListView(
        children: [
          const Gap(10),
          mobile
              ? SizedBox(
                  width: width,
                  height: 220,
                  child: FlutterCarousel(
                    options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          controller1!.animateToPage(index);
                          if (index == 0) {
                            setState(() {
                              summary = true;
                            });
                          } else {
                            setState(() {
                              summary = false;
                            });
                          }
                        },
                        controller: controller,
                        showIndicator: false,
                        //enableInfiniteScroll: true,
                        // pauseAutoPlayInFiniteScroll: true,
                        autoPlay: false,
                        autoPlayInterval: const Duration(seconds: 10),
                        viewportFraction: isMobile() ? 0.84 : 0.3,
                        enlargeCenterPage: true,
                        slideIndicator: CircularWaveSlideIndicator(),
                        floatingIndicator: false,
                        indicatorMargin: 0),
                    items: sliders,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                      sliders.length,
                      (index) => SizedBox(
                          // padding: const EdgeInsets.symmetric(horizontal: 16),
                          height: 260,
                          width: (width - 230) / sliders.length,
                          child: sliders[index])),
                ),
          mobile
              ? SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: FlutterCarousel(
                    
                    options: CarouselOptions(
                      
                        height: summary ? height * 10 : (height - 320),
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
              : Wrap(
                  children: List.generate(
                      sliders.length,
                      (index) => Padding(
                            //  padding: EdgeInsets.zero,
                            padding: const EdgeInsets.all(10.0)
                                .copyWith(top: 0, right: 0, bottom: 10),
                            child: SizedBox(
                              height: 440,
                              width: (width - 260) / 2,
                              child: bodies[index],
                            ),
                          )),
                )
        ],
      ),
    );
  }
}

class GMSmaterial extends StatelessWidget {
  const GMSmaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0).copyWith(top: 0, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // color: const Color(0xFF721CFF),
          color: ColorConstants.MATERIAL_DARK,
          boxShadow: [
            BoxShadow(
              color: ColorConstants.MATERIAL_LIGHT.withOpacity(0.5),
              blurRadius: 20,
              offset: const Offset(0, 5),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/material.png",
                      width: 72, height: 72),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(("material".tr).toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: IconButton(
                        icon: SvgPicture.asset("assets/images/in.svg",
                            width: 20, height: 20, color: Colors.white),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/admin/gms/person/in');
                        })),
                Expanded(
                    child: IconButton(
                        icon: SvgPicture.asset("assets/images/out.svg",
                            width: 20, height: 20, color: Colors.white),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/admin/gms/person/out');
                        })),
                Expanded(
                    child: IconButton(
                        icon: SvgPicture.asset("assets/images/menu.svg",
                            color: Colors.white),
                        onPressed: () {
                          AutoRouter.of(context)
                              .navigate(const MaterialPageBodyRoute());
                          //context.p(const MaterialPageBodyRoute());
                        })),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GMSmaterailBody extends StatelessWidget {
  const GMSmaterailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Text(("in".tr),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: HexColor('#31D925'))),
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
              isMobile()
                  ? Container()
                  : Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 16),
                        child: Container(
                          decoration: BoxDecoration(
                              color: HexColor('#31D925'),
                              borderRadius: BorderRadius.circular(4)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              //  size: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      );
    }));
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(14)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset("assets/images/material.png", width: 38, height: 38),
              const Gap(20),
              Text(("material".tr),
                  style: Theme.of(context).textTheme.titleLarge),
              Expanded(child: Container()),
              Container(
                //padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        width: 0.4,
                        color:
                            Theme.of(context).iconTheme.color ?? Colors.white)),
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
                        color:
                            Theme.of(context).iconTheme.color ?? Colors.white)),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search)),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            color: Theme.of(context).shadowColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(("status".tr),
                        style: Theme.of(context).textTheme.titleMedium!),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(("vehicle_no".tr),
                        style: Theme.of(context).textTheme.titleMedium!),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(("customer".tr),
                        style: Theme.of(context).textTheme.titleMedium!),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(("datetime".tr),
                        style: Theme.of(context).textTheme.titleMedium!),
                  ),
                  isMobile()
                      ? Container()
                      : Expanded(
                          flex: 1,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.filter_alt,
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
          listviewBody
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final int year;
  final double sales;
}

class GMSsummmary extends StatelessWidget {
  const GMSsummmary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0).copyWith(top: 0, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // color: const Color(0xFF721CFF),
          color: ColorConstants.SUMMARY_LIGHT,
          boxShadow: [
            BoxShadow(
              color: ColorConstants.SUMMARY_LIGHT.withOpacity(0.5),
              blurRadius: 20,
              offset: const Offset(0, 5),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/images/summary.svg",
                      width: 72, height: 72),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(("summary".tr).toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: IconButton(
                        icon: SvgPicture.asset("assets/images/in.svg",
                            width: 20, height: 20, color: Colors.white),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/admin/gms/person/in');
                        })),
                Expanded(
                    child: IconButton(
                        icon: SvgPicture.asset("assets/images/out.svg",
                            width: 20, height: 20, color: Colors.white),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/admin/gms/person/out');
                        })),
                Expanded(
                    child: IconButton(
                        icon: SvgPicture.asset("assets/images/menu.svg",
                            color: Colors.white),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/admin/gms/person/register');
                        })),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GMSsummmaryBody extends StatelessWidget {
  GMSsummmaryBody({Key? key}) : super(key: key);
  final List<SalesData> chartData = [
    SalesData(2010, 35),
    SalesData(2011, 28),
    SalesData(2012, 34),
    SalesData(2013, 32),
    SalesData(2014, 40)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: 800,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(("summary".tr),
                  style: Theme.of(context).textTheme.headlineSmall),
              Expanded(child: Container()),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.filter_alt),
              ),
              // const Gap(10),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            ],
          ),
          Container(
            //color: Colors.white,
            color: HexColor('#0000001A'),
            child: TextField(
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
              },
              decoration: InputDecoration(
                  hintText: "Search Person",
                  //focusColor: ColorConstants.VEHICLE_DARK,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: HexColor('#0000001A'), width: 0.3),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(26)))),
            ),
          ),
          const Gap(30),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 22),
            alignment: Alignment.center,
            height: 114,
            decoration: BoxDecoration(
                boxShadow: ColorConstants.boxShadow(context),
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Person (23)",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: HexColor('#3D9ADE'),
                          ),
                    ),
                  ],
                ),
                const Gap(6),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Employees",
                                style: Theme.of(context).textTheme.titleMedium),
                            Text("10",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontSize: 18)),
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Labours",
                                style: Theme.of(context).textTheme.titleMedium),
                            Text("10",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontSize: 18)),
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Visitors",
                                style: Theme.of(context).textTheme.titleMedium),
                            Text("10",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontSize: 18)),
                          ],
                        )),
                  ],
                )
              ],
            ),
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 22),
            alignment: Alignment.center,
            height: 118,
            decoration: BoxDecoration(
                boxShadow: ColorConstants.boxShadow(context),
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Vehicle (13)",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: HexColor('#3D9ADE'),
                          ),
                    ),
                  ],
                ),
                const Gap(6),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Two-wheels",
                                style: Theme.of(context).textTheme.titleMedium),
                            Text("10",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontSize: 18)),
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Four-wheels",
                                style: Theme.of(context).textTheme.titleMedium),
                            Text("10",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontSize: 18)),
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Truck",
                                style: Theme.of(context).textTheme.titleMedium),
                            Text("10",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontSize: 18)),
                          ],
                        )),
                  ],
                )
              ],
            ),
          ),
          const Gap(30),
          Text(
            "Temperature Sensor ( IN Chamber)",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
            decoration: BoxDecoration(
                boxShadow: ColorConstants.boxShadow(context),
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text.rich(TextSpan(children: [
                        const TextSpan(text: "Total: ", style: TextStyle()),
                        TextSpan(
                            text: "10",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontSize: 15))
                      ])),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                            text: "Proper Temp. : ",
                            style: TextStyle(color: HexColor('#1CA517'))),
                        TextSpan(
                            text: "10",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    fontSize: 15, color: HexColor('#1CA517')))
                      ])),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: "Risk Zone: ",
                              style: TextStyle(color: HexColor('#FF0000'))),
                          TextSpan(
                              text: "10",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontSize: 15, color: HexColor('#FF0000')))
                        ]),
                      ),
                    ),
                  ],
                ),
                Accordion(children: [
                  AccordionSection(
                    contentHorizontalPadding: 0,
                    headerPadding: EdgeInsets.zero,
                    rightIcon: Icon(
                      Icons.arrow_drop_down,
                      color: Theme.of(context).primaryColor,
                    ),
                    isOpen: true,
                    headerBackgroundColor: Theme.of(context).cardColor,
                    headerBackgroundColorOpened: Theme.of(context).cardColor,

                    contentBackgroundColor: Theme.of(context).cardColor,
                    // headerPadding: const EdgeInsets.all(10),
                    contentBorderWidth: 0,
                    contentVerticalPadding: 0,
                    header: Text('Graph'.tr,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Theme.of(context).primaryColor)),
                    content: SfCartesianChart(
                        primaryXAxis: const NumericAxis(
                          majorGridLines: MajorGridLines(width: 0),
                          axisLine: AxisLine(width: 0),
                        ),
                        primaryYAxis: const NumericAxis(
                            majorGridLines: MajorGridLines(width: 0),
                            axisLine: AxisLine(width: 0)),
                        title: ChartTitle(
                            text: "Temperature",
                            textStyle: Theme.of(context).textTheme.labelSmall),

                        // primaryXAxis: const In(),
                        series: <CartesianSeries>[
                          // Renders line chart
                          SplineAreaSeries<SalesData, int>(
                              markerSettings: MarkerSettings(
                                  isVisible: true,
                                  color: Theme.of(context).primaryColor),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.6),
                                    Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.4),
                                    Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.2),
                                  ]),
                              splineType: SplineType.clamped,
                              dataSource: chartData,
                              xValueMapper: (SalesData sales, _) => sales.year,
                              yValueMapper: (SalesData sales, _) => sales.sales)
                        ]),
                  ),
                ])
              ],
            ),
          ),
          const Gap(30),
          Text(
            "assigned_task".tr,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Gap(10),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 0.2,
                        color: Theme.of(context).textTheme.bodyLarge!.color ??
                            Colors.black),
                    borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                  child: Text(
                    "Moolcode",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
              const Gap(10),
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    border: Border.all(
                        width: 0.2,
                        color: Theme.of(context).textTheme.bodyLarge!.color ??
                            Colors.black),
                    borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Text(
                    "Indicold",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          const Gap(10),
          Column(
            children: List.generate(
                10,
                (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 20),
                        decoration: BoxDecoration(
                            boxShadow: ColorConstants.boxShadow(context),
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Text('Task Name',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .primaryColor)),
                              ],
                            ),
                            const Gap(4),
                            Text("Description display here",
                                style: Theme.of(context).textTheme.titleSmall),
                            const Gap(8),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Text.rich(TextSpan(children: [
                                    TextSpan(
                                        text: "Priority\n",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge),
                                    TextSpan(
                                        text: "Medium",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(fontSize: 15))
                                  ])),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text.rich(TextSpan(children: [
                                    TextSpan(
                                        text: "Completed Task\n",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge),
                                    TextSpan(
                                        text: "10",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              fontSize: 15,
                                            ))
                                  ])),
                                ),
                              ],
                            ),
                            const Gap(8),
                            Text(
                              "Sub Task",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              "- Sub Tasks Display here",
                              style: Theme.of(context).textTheme.titleSmall,
                            )
                          ],
                        ),
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}

class GMSperson extends StatelessWidget {
  const GMSperson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0).copyWith(top: 0, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // color: const Color(0xFF721CFF),
          color: const Color(0xFF721CFF),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 138, 66, 255).withOpacity(0.5),
              blurRadius: 30,
              offset: const Offset(0, 5),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/person.png",
                      width: 72, height: 72),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(("person".tr).toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: IconButton(
                        icon: SvgPicture.asset("assets/images/in.svg",
                            width: 20, height: 20, color: Colors.white),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/admin/gms/person/in');
                        })),
                Expanded(
                    child: IconButton(
                        icon: SvgPicture.asset("assets/images/out.svg",
                            width: 20, height: 20, color: Colors.white),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/admin/gms/person/out');
                        })),
                Expanded(
                    child: IconButton(
                        icon: SvgPicture.asset("assets/images/menu.svg",
                            color: Colors.white),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/admin/gms/person/register');
                        })),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GMSPersonBody extends StatelessWidget {
  const GMSPersonBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget listviewBody =
        Expanded(child: ListView.builder(itemBuilder: (context, i) {
      return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            border: Border.symmetric(
                horizontal: BorderSide(
                    width: 0.1,
                    color: Theme.of(context).iconTheme.color ?? Colors.white))),
        // color: Theme.of(context).shadowColor,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 0, horizontal: isMobile() ? 0 : 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Gap(5),
              Expanded(
                flex: 1,
                child: Text(
                  ("in".tr),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: HexColor('#31D925')),
                  textAlign: isMobile() ? TextAlign.center : null,
                ),
              ),
              const Gap(5),
              Expanded(
                flex: 2,
                child: Text(("Jaspreet Singh"),
                    style: Theme.of(context).textTheme.titleMedium!),
              ),
              const Gap(5),
              Expanded(
                flex: 3,
                child: Text(("8708528933"),
                    style: Theme.of(context).textTheme.titleMedium!),
              ),
              Expanded(
                flex: 1,
                child: Text(("P"),
                    style: Theme.of(context).textTheme.titleMedium!),
              ),
              Expanded(
                flex: 2,
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
              isMobile()
                  ? Container()
                  : Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 16),
                        child: Container(
                          decoration: BoxDecoration(
                              color: HexColor('#31D925'),
                              borderRadius: BorderRadius.circular(4)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              //  size: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      );
    }));
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: isMobile() ? 10 : 26, vertical: 20),
      decoration: BoxDecoration(
        boxShadow: ColorConstants.boxShadow(context),
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(14)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const Gap(10),
              Image.asset("assets/images/person.png", width: 38, height: 38),
              const Gap(20),
              Text(("person".tr),
                  style: Theme.of(context).textTheme.titleLarge),
              Expanded(child: Container()),
              Container(
                //padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        width: 0.4,
                        color:
                            Theme.of(context).iconTheme.color ?? Colors.white)),
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
                        color:
                            Theme.of(context).iconTheme.color ?? Colors.white)),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search)),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            color: Theme.of(context).shadowColor,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 10, horizontal: isMobile() ? 0 : 10),
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Gap(5),
                  Expanded(
                    flex: 1,
                    child: Text(("status".tr),
                        style: Theme.of(context).textTheme.titleMedium!),
                  ),
                  const Gap(5),
                  Expanded(
                    flex: 2,
                    child: Text(("name".tr),
                        style: Theme.of(context).textTheme.titleMedium!),
                  ),
                  const Gap(5),
                  Expanded(
                    flex: 3,
                    child: Text(("mobile_number".tr),
                        style: Theme.of(context).textTheme.titleMedium!),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(("type".tr),
                        style: Theme.of(context).textTheme.titleMedium!),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(("datetime".tr),
                        style: Theme.of(context).textTheme.titleMedium!),
                  ),
                  isMobile()
                      ? Container()
                      : Expanded(
                          flex: 1,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.filter_alt,
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
          listviewBody
        ],
      ),
    );
  }
}

class GMSvehicle extends StatelessWidget {
  const GMSvehicle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0).copyWith(top: 0, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // color: const Color(0xFF721CFF),
          color: ColorConstants.VEHICLE_DARK,
          boxShadow: [
            BoxShadow(
              color: ColorConstants.VEHICLE_DARK.withOpacity(0.5),
              blurRadius: 20,
              offset: const Offset(0, 5),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/vehicle.png",
                      width: 72, height: 72),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(("vehicle".tr).toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: IconButton(
                        icon: SvgPicture.asset("assets/images/in.svg",
                            width: 20, height: 20, color: Colors.white),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/admin/gms/person/in');
                        })),
                Expanded(
                    child: IconButton(
                        icon: SvgPicture.asset("assets/images/out.svg",
                            width: 20, height: 20, color: Colors.white),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/admin/gms/person/out');
                        })),
                Expanded(
                    child: IconButton(
                        icon: SvgPicture.asset("assets/images/menu.svg",
                            color: Colors.white),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/admin/gms/person/register');
                        })),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GMSvehicleBody extends StatelessWidget {
  const GMSvehicleBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget listviewBody =
        Expanded(child: ListView.builder(itemBuilder: (context, i) {
      return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            border: Border.symmetric(
                horizontal: BorderSide(
                    width: 0.06,
                    color: Theme.of(context).iconTheme.color ?? Colors.white))),
        // color: Theme.of(context).shadowColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Text(("out".tr),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: HexColor('#E31D1D'))),
              ),
              Expanded(
                flex: 3,
                child: Text(("HR01AU5447"),
                    style: Theme.of(context).textTheme.titleMedium!),
              ),
              Expanded(
                flex: 2,
                child: Text(("NA"),
                    style: Theme.of(context).textTheme.titleMedium!),
              ),
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
              // Expanded(
              //   flex: 3,
              //   child: Text("7 SEP 12:00 PM",
              //       style: Theme.of(context).textTheme.titleMedium!),
              // ),
              isMobile()
                  ? Container()
                  : Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 16),
                        child: Container(
                          decoration: BoxDecoration(
                              color: HexColor('#31D925'),
                              borderRadius: BorderRadius.circular(4)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              //  size: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      );
    }));
    return false
        ? Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(("${"vehicle_list".tr}  (2)"),
                      style: Theme.of(context).textTheme.titleLarge),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.filter_alt),
                  ),
                  // const Gap(10),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                ],
              ),
              Container(
                //color: Colors.white,
                color: HexColor('#0000001A'),
                child: TextField(
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  decoration: InputDecoration(
                      hintText: "Search Vehicle",
                      //focusColor: ColorConstants.VEHICLE_DARK,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: HexColor('#0000001A'), width: 0.3),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(26)))),
                ),
              ),
              const Gap(20),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: ColorConstants.boxShadow(context),
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: ColorConstants.VEHICLE_DARK,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(14),
                                topRight: Radius.circular(14)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Text(("status".tr),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(color: Colors.white)),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(("vehicle_no".tr),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(color: Colors.white)),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(("token".tr),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(color: Colors.white)),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(("datetime".tr),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(color: Colors.white)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        listviewBody
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        : Container(
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
            decoration: BoxDecoration(
              boxShadow: ColorConstants.boxShadow(context),
              color: Theme.of(context).cardColor,
              borderRadius: const BorderRadius.all(Radius.circular(14)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/vehicle.png",
                        width: 38, height: 38),
                    const Gap(20),
                    Text(("vehicle".tr),
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
                const SizedBox(height: 12),
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
                              style: Theme.of(context).textTheme.titleMedium!),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(("vehicle_no".tr),
                              style: Theme.of(context).textTheme.titleMedium!),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(("token".tr),
                              style: Theme.of(context).textTheme.titleMedium!),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(("datetime".tr),
                              style: Theme.of(context).textTheme.titleMedium!),
                        ),
                        isMobile()
                            ? Container()
                            : Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.filter_alt,
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
                listviewBody
              ],
            ),
          );
  }
}

class GMSqueue extends StatelessWidget {
  const GMSqueue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0).copyWith(top: 0, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // color: const Color(0xFF721CFF),
          color: ColorConstants.REGISTER_LIGHT,
          boxShadow: [
            BoxShadow(
              color: ColorConstants.REGISTER_LIGHT.withOpacity(0.5),
              blurRadius: 30,
              offset: const Offset(0, 5),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/queue.png", width: 72, height: 72),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(("queue".tr).toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GMSqueueBody extends StatelessWidget {
  const GMSqueueBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget listviewBody =
        Expanded(child: ListView.builder(itemBuilder: (context, i) {
      return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            border: Border.symmetric(
                horizontal: BorderSide(
                    width: 0.1,
                    color: Theme.of(context).iconTheme.color ?? Colors.white))),
        // color: Theme.of(context).shadowColor,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 0, horizontal: isMobile() ? 0 : 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Gap(10),
              Expanded(
                flex: 2,
                child: Text(("P"),
                    style: Theme.of(context).textTheme.titleMedium!),
              ),
              Expanded(
                flex: 2,
                child: Text(("8708528933"),
                    style: Theme.of(context).textTheme.titleMedium!),
              ),
              Expanded(
                flex: 2,
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
              isMobile()
                  ? Container()
                  : Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 16),
                        child: Container(
                          decoration: BoxDecoration(
                              color: HexColor('#31D925'),
                              borderRadius: BorderRadius.circular(4)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              //  size: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      );
    }));
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
      decoration: BoxDecoration(
        boxShadow: ColorConstants.boxShadow(context),
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(14)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset("assets/images/queue.png", width: 38, height: 38),
              const Gap(20),
              Text(("queue".tr), style: Theme.of(context).textTheme.titleLarge),
              Expanded(child: Container()),
              Container(
                //padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        width: 0.4,
                        color:
                            Theme.of(context).iconTheme.color ?? Colors.white)),
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
                        color:
                            Theme.of(context).iconTheme.color ?? Colors.white)),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search)),
              ),
            ],
          ),
          const SizedBox(height: 12),
          // Container(
          //   color: Theme.of(context).shadowColor,
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Expanded(
          //           flex: 1,
          //           child: Text(("status".tr),
          //               style: Theme.of(context).textTheme.titleMedium!),
          //         ),
          //         Expanded(
          //           flex: 3,
          //           child: Text(("vehicle_no".tr),
          //               style: Theme.of(context).textTheme.titleMedium!),
          //         ),
          //         Expanded(
          //           flex: 2,
          //           child: Text(("token".tr),
          //               style: Theme.of(context).textTheme.titleMedium!),
          //         ),
          //         Expanded(
          //           flex: 3,
          //           child: Text(("datetime".tr),
          //               style: Theme.of(context).textTheme.titleMedium!),
          //         ),
          //         Expanded(
          //           flex: 1,
          //           child: IconButton(
          //             onPressed: () {},
          //             icon: const Icon(
          //               Icons.filter_alt,
          //               color: Colors.transparent,
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // Expanded(child: ListView.builder(itemBuilder: (context, i) {
          //   return Container(
          //     decoration: BoxDecoration(
          //         border: Border.symmetric(
          //             horizontal: BorderSide(
          //                 width: 0.1,
          //                 color: Theme.of(context).iconTheme.color ??
          //                     Colors.white))),
          //     // color: Theme.of(context).shadowColor,
          //     child: Padding(
          //       padding:
          //           const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Expanded(
          //             flex: 1,
          //             child: Text(("out".tr),
          //                 style: Theme.of(context)
          //                     .textTheme
          //                     .titleMedium!
          //                     .copyWith(color: HexColor('#E31D1D'))),
          //           ),
          //           Expanded(
          //             flex: 3,
          //             child: Text(("HR01AU5447"),
          //                 style: Theme.of(context).textTheme.titleMedium!),
          //           ),
          //           Expanded(
          //             flex: 2,
          //             child: Text(("NA"),
          //                 style: Theme.of(context).textTheme.titleMedium!),
          //           ),
          //           Expanded(
          //             flex: 3,
          //             child: Text(("7 SEP 12:00 PM"),
          //                 style: Theme.of(context).textTheme.titleMedium!),
          //           ),
          //           Expanded(
          //             flex: 1,
          //             child: Padding(
          //               padding: const EdgeInsets.symmetric(
          //                   vertical: 6, horizontal: 16),
          //               child: Container(
          //                 decoration: BoxDecoration(
          //                     color: HexColor('#31D925'),
          //                     borderRadius: BorderRadius.circular(4)),
          //                 child: const Padding(
          //                   padding: EdgeInsets.symmetric(vertical: 4),
          //                   child: Icon(
          //                     Icons.edit,
          //                     color: Colors.white,
          //                     //  size: 1,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   );
          // }))
        ],
      ),
    );
  }
}
