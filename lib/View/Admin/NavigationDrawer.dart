import 'package:accordion/accordion.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/common/VisibilityExtended.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';
import 'package:moolwmsstore/utils/AppIcons.dart';
import 'package:platform_detector/platform_detector.dart';

class MyNavigationDrawer extends StatefulWidget {
  const MyNavigationDrawer({super.key});

  @override
  _MyNavigationDrawerState createState() => _MyNavigationDrawerState();
}

class _MyNavigationDrawerState extends State<MyNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    Widget navigationDrawerIcon(String assets) {
      return SvgPicture.asset(
        assets,
        height: 25,
        width: 25,
        color: Theme.of(context).primaryColor,
        fit: BoxFit.contain,
      );
    }

    var itemHeadingStyle = Theme.of(context)
        .textTheme
        .titleMedium!
        .copyWith(fontWeight: FontWeight.w600, color: Colors.black);
    var itemSubHeadingStyle = Theme.of(context)
        .textTheme
        .bodyLarge!
        .copyWith(fontWeight: FontWeight.w600, color: Colors.black);

    return Container(
        width: isMobile() ? MediaQuery.of(context).size.width * 0.7 : 220,
        height: double.infinity,
        decoration: isMobile()
            ? BoxDecoration(
                color: isDarkMode
                    ? const Color(0xFF1B1B25)
                    : Theme.of(context).primaryColor)
            : BoxDecoration(color: Theme.of(context).cardColor),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ).copyWith(top: 0, left: 4),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isMobile() ? const SizedBox(height: kToolbarHeight) : const Gap(20),

            Align(
              alignment: Alignment.center,
              child: Text("moolcode".tr,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: isMobile()
                          ? Colors.white
                          : Theme.of(context).textTheme.bodyLarge!.color)),
            ),
            Expanded(
              child: Accordion(
                maxOpenSections: 13,
                children: [
                  AccordionSection(
                    rightIcon: Icon(
                      Icons.arrow_drop_down,
                      color: Theme.of(context).primaryColor,
                    ),
                    isOpen: false,
                    leftIcon:
                        navigationDrawerIcon(NavigationDrawerIcons.dashboard),
                    headerBackgroundColor: Theme.of(context).cardColor,
                    headerBackgroundColorOpened: Theme.of(context).cardColor,
                    headerBorderWidth: 1,
                    contentBackgroundColor: Colors.white,
                    headerPadding: const EdgeInsets.all(10),
                    contentBorderWidth: 0,
                    contentVerticalPadding: 10,
                    header: Text('dashboard'.tr,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Theme.of(context).primaryColor)),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        VisibilityExtended(
                          visible: true,
                          // visible: GlobalData().isViewAccessPresent(
                          //     ModuleConstants.GMS_DASHBOARD),
                          child: InkWell(
                            onTap: () {
                              context.pushRoute(const OwnerDashboradRoute());

                              if (isMobile()) Navigator.pop(context);
                              // if (ModalRoute.of(context)!.settings.name !=
                              //     "/admin/gms/dashboard") {
                              //   Navigator.of(context).pushNamedAndRemoveUntil(
                              //       '/admin/gms/dashboard', (route) => false);
                              // }
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 8),
                              child: Row(
                                children: [
                                  Text(("Owner Dashboard"),
                                      style: itemSubHeadingStyle),
                                ],
                              ),
                            ),
                          ),
                        ),
                        VisibilityExtended(
                          visible: true,
                          // visible: GlobalData().isViewAccessPresent(
                          //     ModuleConstants.GMS_DASHBOARD),
                          child: InkWell(
                            onTap: () {
                              context.pushRoute(const GMSDashboardRoute());

                              if (isMobile()) Navigator.pop(context);
                              // if (ModalRoute.of(context)!.settings.name !=
                              //     "/admin/gms/dashboard") {
                              //   Navigator.of(context).pushNamedAndRemoveUntil(
                              //       '/admin/gms/dashboard', (route) => false);
                              // }
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 8),
                              child: Row(
                                children: [
                                  Text(("gms_dashboard".tr),
                                      style: itemSubHeadingStyle),
                                ],
                              ),
                            ),
                          ),
                        ),
                        VisibilityExtended(
                          visible: true,
                          // visible: GlobalData().isViewAccessPresent(
                          //     ModuleConstants.DMS_DASHBOARD),
                          child: InkWell(
                            onTap: () {
                              context.pushRoute(const DmsDashboardRoute());

                              if (isMobile()) Navigator.pop(context);
                              // if (ModalRoute.of(context)!.settings.name !=
                              //     "/admin/dms/dashboard") {
                              //   Navigator.of(context).pushNamedAndRemoveUntil(
                              //       '/admin/dms/dashboard', (route) => false);
                              // }
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 8),
                              child: Row(
                                children: [
                                  Text(("dms_dashboard".tr),
                                      style: itemSubHeadingStyle),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // AccordionSection(
                  //   rightIcon: Icon(
                  //     Icons.arrow_drop_down,
                  //     color: Theme.of(context).primaryColor,
                  //   ),
                  //   isOpen: false,
                  //   leftIcon:
                  //       navigationDrawerIcon(NavigationDrawerIcons.gate),
                  //   headerBackgroundColor: Theme.of(context).cardColor,
                  //   headerBackgroundColorOpened: Theme.of(context).cardColor,
                  //   headerBorderWidth: 1,
                  //   contentBackgroundColor: Colors.white,
                  //   headerPadding: const EdgeInsets.all(10),
                  //   contentBorderWidth: 0,
                  //   contentVerticalPadding: 10,
                  //   header: Text('gms'.tr,
                  //       style: Theme.of(context)
                  //           .textTheme
                  //           .bodyLarge!
                  //           .copyWith(color: Theme.of(context).primaryColor)),
                  //   content: Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       VisibilityExtended(
                  //         visible: true,
                  //         // visible: GlobalData().isViewAccessPresent(
                  //         //     ModuleConstants.GMS_PERSON),
                  //         child: InkWell(
                  //           onTap: () {
                  //             Navigator.of(context)
                  //                 .pushNamed('/admin/gms/person/in');
                  //           },
                  //           child: Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 8.0, vertical: 8),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text(("person_in".tr),
                  //                     style: Theme.of(context)
                  //                         .textTheme
                  //                         .bodyLarge!
                  //                         .copyWith(
                  //                             fontWeight: FontWeight.w600,
                  //                             color: Colors.black)),
                  //                 const Icon(Icons.arrow_forward_ios,
                  //                     color: Colors.black, size: 18),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       VisibilityExtended(
                  //         visible: true,
                  //         // visible: GlobalData().isViewAccessPresent(
                  //         //     ModuleConstants.GMS_PERSON),
                  //         child: InkWell(
                  //           onTap: () {
                  //             Navigator.of(context)
                  //                 .pushNamed('/admin/gms/vehicle/in');
                  //           },
                  //           child: Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 8.0, vertical: 8),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text(("vehicle_in".tr),
                  //                     style: Theme.of(context)
                  //                         .textTheme
                  //                         .bodyLarge!
                  //                         .copyWith(
                  //                             fontWeight: FontWeight.w600,
                  //                             color: Colors.black)),
                  //                 const Icon(Icons.arrow_forward_ios,
                  //                     color: Colors.black, size: 18),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       VisibilityExtended(
                  //         visible: true,
                  //         // visible: GlobalData().isViewAccessPresent(
                  //         //     ModuleConstants.GMS_PERSON),
                  //         child: InkWell(
                  //           onTap: () {
                  //             Navigator.of(context)
                  //                 .pushNamed('/admin/gms/material/in');
                  //           },
                  //           child: Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 8.0, vertical: 8),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text(("material_in".tr),
                  //                     style: Theme.of(context)
                  //                         .textTheme
                  //                         .bodyLarge!
                  //                         .copyWith(
                  //                             fontWeight: FontWeight.w600,
                  //                             color: Colors.black)),
                  //                 const Icon(Icons.arrow_forward_ios,
                  //                     color: Colors.black, size: 18),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       VisibilityExtended(
                  //         visible: true,
                  //         // visible: GlobalData().isViewAccessPresent(
                  //         //     ModuleConstants.GMS_PERSON),
                  //         child: InkWell(
                  //           onTap: () {
                  //             Navigator.of(context)
                  //                 .pushNamed('/admin/gms/person/out');
                  //           },
                  //           child: Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 8.0, vertical: 8),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text(("person_out".tr),
                  //                     style: Theme.of(context)
                  //                         .textTheme
                  //                         .bodyLarge!
                  //                         .copyWith(
                  //                             fontWeight: FontWeight.w600,
                  //                             color: Colors.black)),
                  //                 const Icon(Icons.arrow_forward_ios,
                  //                     color: Colors.black, size: 18),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  // AccordionSection(
                  //   rightIcon: Icon(
                  //     Icons.arrow_drop_down,
                  //     color: Theme.of(context).primaryColor,
                  //   ),
                  //   isOpen: false,
                  //   leftIcon:
                  //       navigationDrawerIcon(NavigationDrawerIcons.register),
                  //   headerBackgroundColor: Theme.of(context).cardColor,
                  //   headerBackgroundColorOpened: Theme.of(context).cardColor,
                  //   headerBorderWidth: 1,
                  //   contentBackgroundColor: Colors.white,
                  //   headerPadding: const EdgeInsets.all(10),
                  //   contentBorderWidth: 0,
                  //   contentVerticalPadding: 10,
                  //   header: Text('registers'.tr,
                  //       style: Theme.of(context)
                  //           .textTheme
                  //           .bodyLarge!
                  //           .copyWith(color: Theme.of(context).primaryColor)),
                  //   content: Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.of(context)
                  //               .pushNamed('/admin/gms/person/register');
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("person_in_out".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.of(context).pushNamed(
                  //               '/admin/gms/person/register',
                  //               arguments: {
                  //                 "personType": 1,
                  //                 "title": ("employee_in_out".tr)
                  //               });
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("employee_in_out".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.of(context).pushNamed(
                  //               '/admin/gms/person/register',
                  //               arguments: {
                  //                 "personType": 2,
                  //                 "title": ("labour_in_out".tr)
                  //               });
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("labour_in_out".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.of(context).pushNamed(
                  //               '/admin/gms/person/register',
                  //               arguments: {
                  //                 "personType": 8,
                  //                 "title": ("intern_in_out".tr)
                  //               });
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("intern_in_out".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.of(context).pushNamed(
                  //               '/admin/gms/person/register',
                  //               arguments: {
                  //                 "personType": 5,
                  //                 "title": ("visitor_in_out".tr)
                  //               });
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("visitor_in_out".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.of(context)
                  //               .pushNamed('/admin/gms/vehicle/inoutlist');
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("vehicle_in_out".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.of(context)
                  //               .pushNamed('/admin/gms/material/register');
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("material_in_out".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.of(context).pushNamed(
                  //               '/admin/gms/material/register',
                  //               arguments: {
                  //                 "direction": 1,
                  //                 "title": ("material_inward".tr)
                  //               });
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("material_inward".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.of(context).pushNamed(
                  //               '/admin/gms/material/register',
                  //               arguments: {
                  //                 "direction": 2,
                  //                 "title": ("material_outward".tr)
                  //               });
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("material_outward".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.of(context).pushNamed(
                  //               '/admin/gms/material/register',
                  //               arguments: {
                  //                 "materialType": 3,
                  //                 "title": ("documents_movement".tr)
                  //               });
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("documents_movement".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  // AccordionSection(
                  //     rightIcon: Icon(
                  //       Icons.arrow_drop_down,
                  //       color: Theme.of(context).primaryColor,
                  //     ),
                  //     isOpen: false,
                  //     leftIcon: navigationDrawerIcon(
                  //         NavigationDrawerIcons.register),
                  //     headerBackgroundColor: Theme.of(context).cardColor,
                  //     headerBackgroundColorOpened:
                  //         Theme.of(context).cardColor,
                  //     headerBorderWidth: 1,
                  //     contentBackgroundColor: Colors.white,
                  //     headerPadding: const EdgeInsets.all(10),
                  //     contentBorderWidth: 0,
                  //     contentVerticalPadding: 10,
                  //     header: Text('inventory'.tr,
                  //         style: Theme.of(context)
                  //             .textTheme
                  //             .bodyLarge!
                  //             .copyWith(
                  //                 color: Theme.of(context).primaryColor)),
                  //     content: Column(
                  //         mainAxisSize: MainAxisSize.min,
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           VisibilityExtended(
                  //             visible: true,
                  //             child: InkWell(
                  //               onTap: () {
                  //                 Navigator.of(context)
                  //                     .pushNamed("/inventory");
                  //               },
                  //               child: Padding(
                  //                 padding: const EdgeInsets.symmetric(
                  //                     horizontal: 4.0, vertical: 8),
                  //                 child: Row(
                  //                   children: [
                  //                     navigationDrawerIcon(
                  //                         NavigationDrawerIcons.inventory),
                  //                     const Gap(10),
                  //                     Text("map_view".tr,
                  //                         style: Theme.of(context)
                  //                             .textTheme
                  //                             .bodyLarge!
                  //                             .copyWith(
                  //                                 fontWeight: FontWeight.w600,
                  //                                 color: Colors.black)),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ])),

                  // AccordionSection(
                  //     rightIcon: Icon(
                  //       Icons.arrow_drop_down,
                  //       color: Theme.of(context).primaryColor,
                  //     ),
                  //     isOpen: false,
                  //     leftIcon: navigationDrawerIcon(
                  //         NavigationDrawerIcons.register),
                  //     headerBackgroundColor: Theme.of(context).cardColor,
                  //     headerBackgroundColorOpened:
                  //         Theme.of(context).cardColor,
                  //     headerBorderWidth: 1,
                  //     contentBackgroundColor: Colors.white,
                  //     headerPadding: const EdgeInsets.all(10),
                  //     contentBorderWidth: 0,
                  //     contentVerticalPadding: 10,
                  //     header: Text('reports'.tr,
                  //         style: Theme.of(context)
                  //             .textTheme
                  //             .bodyLarge!
                  //             .copyWith(
                  //                 color: Theme.of(context).primaryColor)),
                  //     content: Column(
                  //         mainAxisSize: MainAxisSize.min,
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           VisibilityExtended(
                  //             visible: true,
                  //             child: InkWell(
                  //               onTap: () {
                  //                 Navigator.of(context).pushNamed("/reports");
                  //               },
                  //               child: Padding(
                  //                 padding: const EdgeInsets.symmetric(
                  //                     horizontal: 8.0, vertical: 8),
                  //                 child: Row(
                  //                   children: [
                  //                     navigationDrawerIcon(
                  //                         NavigationDrawerIcons.reports),
                  //                     const Gap(10),
                  //                     Text("reports".tr,
                  //                         style: Theme.of(context)
                  //                             .textTheme
                  //                             .bodyLarge!
                  //                             .copyWith(
                  //                                 fontWeight: FontWeight.w600,
                  //                                 color: Colors.black)),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ])),

                  // AccordionSection(
                  //   rightIcon: Icon(
                  //     Icons.arrow_drop_down,
                  //     color: Theme.of(context).primaryColor,
                  //   ),
                  //   isOpen: false,
                  //   leftIcon:
                  //       navigationDrawerIcon(NavigationDrawerIcons.sensors),
                  //   headerBackgroundColor: Theme.of(context).cardColor,
                  //   headerBackgroundColorOpened: Theme.of(context).cardColor,
                  //   headerBorderWidth: 1,
                  //   contentBackgroundColor: Colors.white,
                  //   headerPadding: const EdgeInsets.all(10),
                  //   contentBorderWidth: 0,
                  //   contentVerticalPadding: 10,
                  //   header: Text('sensors'.tr,
                  //       style: Theme.of(context)
                  //           .textTheme
                  //           .bodyLarge!
                  //           .copyWith(color: Theme.of(context).primaryColor)),
                  //   content: Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       VisibilityExtended(
                  //         visible: true,
                  //         child: InkWell(
                  //           onTap: () {
                  //             // Navigator.of(context).pushNamed(
                  //             //     "/iotsensors/temperature/sensorReportPage"); //change this
                  //             // Navigator.push(
                  //             //     context,
                  //             //     MaterialPageRoute(
                  //             //         builder: (context) =>
                  //             //             const SelectSensorLocation()));
                  //           },
                  //           child: Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 8.0, vertical: 8),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text("sensor_report".tr,
                  //                     style: Theme.of(context)
                  //                         .textTheme
                  //                         .bodyLarge!
                  //                         .copyWith(
                  //                             fontWeight: FontWeight.w600,
                  //                             color: Colors.black)),
                  //                 const Icon(Icons.arrow_forward_ios,
                  //                     color: Colors.black, size: 18),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       // VisibilityExtended(
                  //       //   visible: GlobalData().isViewAccessPresent(
                  //       //       ModuleConstants.SENSOR_EXCEPTION_REPORT),
                  //       //   child: InkWell(
                  //       //     onTap: () {
                  //       //       Navigator.of(context).pushNamed(
                  //       //           "/iotsensors/temperature/sensorExceptionReportPage"); //change this
                  //       //     },
                  //       //     child: Padding(
                  //       //       padding: const EdgeInsets.symmetric(
                  //       //           horizontal: 8.0, vertical: 8),
                  //       //       child: Row(
                  //       //         children: [
                  //       //           Icon(Icons.arrow_forward,
                  //       //               color: Colors.white, size: 22),
                  //       //           SizedBox(width: 8),
                  //       //           Text(
                  //       //               AppLocalizations.of(context)        (
                  //       //                   "sensor_exception_report"),
                  //       //               style: Theme.of(context)
                  //       //                   .textTheme
                  //       //                   .bodyText1
                  //       //                   .copyWith(
                  //       //                       fontWeight: FontWeight.w600,
                  //       //                       color: Colors.white)),
                  //       //         ],
                  //       //       ),
                  //       //     ),
                  //       //   ),
                  //       // ),
                  //       // VisibilityExtended(
                  //       //   visible: GlobalData().isViewAccessPresent(
                  //       //       ModuleConstants.SENSOR_DATA_VIEW_REPORT),
                  //       //   child: InkWell(
                  //       //     onTap: () {
                  //       //       Navigator.of(context).pushNamed(
                  //       //           "/iotsensors/temperature/sensordataviewlist"); //change this
                  //       //     },
                  //       //     child: Padding(
                  //       //       padding: const EdgeInsets.symmetric(
                  //       //           horizontal: 8.0, vertical: 8),
                  //       //       child: Row(
                  //       //         children: [
                  //       //           Icon(Icons.arrow_forward,
                  //       //               color: Colors.white, size: 22),
                  //       //           SizedBox(width: 8),
                  //       //           Text(
                  //       //               AppLocalizations.of(context)
                  //       //                         ("sensor_data_view"),
                  //       //               style: Theme.of(context)
                  //       //                   .textTheme
                  //       //                   .bodyText1
                  //       //                   .copyWith(
                  //       //                       fontWeight: FontWeight.w600,
                  //       //                       color: Colors.white)),
                  //       //         ],
                  //       //       ),
                  //       //     ),
                  //       //   ),
                  //       // ),
                  //       // VisibilityExtended(
                  //       //   visible: GlobalData().isViewAccessPresent(
                  //       //       ModuleConstants.SENSOR_VIEW),
                  //       //   child: InkWell(
                  //       //     onTap: () {
                  //       //       Navigator.of(context).pushNamed(
                  //       //           "/iotsensors/temperature/sensorViewPage"); //change this
                  //       //     },
                  //       //     child: Padding(
                  //       //       padding: const EdgeInsets.symmetric(
                  //       //           horizontal: 8.0, vertical: 8),
                  //       //       child: Row(
                  //       //         children: [
                  //       //           Icon(Icons.arrow_forward,
                  //       //               color: Colors.white, size: 22),
                  //       //           SizedBox(width: 8),
                  //       //           Text(
                  //       //               AppLocalizations.of(context)
                  //       //                         ("sensor_view"),
                  //       //               style: Theme.of(context)
                  //       //                   .textTheme
                  //       //                   .bodyText1
                  //       //                   .copyWith(
                  //       //                       fontWeight: FontWeight.w600,
                  //       //                       color: Colors.white)),
                  //       //         ],
                  //       //       ),
                  //       //     ),
                  //       //   ),
                  //       // ),
                  //       // VisibilityExtended(
                  //       //   visible: GlobalData().isViewAccessPresent(
                  //       //       ModuleConstants.SENSOR_ALERT),
                  //       //   child: InkWell(
                  //       //     onTap: () {
                  //       //       Navigator.of(context).pushNamed(
                  //       //           "/iotsensors/temperature/sensoralertlistpage"); //change this
                  //       //     },
                  //       //     child: Padding(
                  //       //       padding: const EdgeInsets.symmetric(
                  //       //           horizontal: 8.0, vertical: 8),
                  //       //       child: Row(
                  //       //         children: [
                  //       //           Icon(Icons.arrow_forward,
                  //       //               color: Colors.white, size: 22),
                  //       //           SizedBox(width: 8),
                  //       //           Text(
                  //       //               AppLocalizations.of(context)
                  //       //                         ("sensor_alert"),
                  //       //               style: Theme.of(context)
                  //       //                   .textTheme
                  //       //                   .bodyText1
                  //       //                   .copyWith(
                  //       //                       fontWeight: FontWeight.w600,
                  //       //                       color: Colors.white)),
                  //       //         ],
                  //       //       ),
                  //       //     ),
                  //       //   ),
                  //       // ),
                  //       // VisibilityExtended(
                  //       //   visible: GlobalData().isViewAccessPresent(
                  //       //       ModuleConstants.SENSOR_ALERT_SUBSCRIPTION),
                  //       //   child: InkWell(
                  //       //     onTap: () {
                  //       //       Navigator.of(context).pushNamed(
                  //       //           "/iotsensors/temperature/sensoralertsubscriptionpage"); //change this
                  //       //     },
                  //       //     child: Padding(
                  //       //       padding: const EdgeInsets.symmetric(
                  //       //           horizontal: 8.0, vertical: 8),
                  //       //       child: Row(
                  //       //         children: [
                  //       //           Icon(Icons.arrow_forward,
                  //       //               color: Colors.white, size: 22),
                  //       //           SizedBox(width: 8),
                  //       //           Text(
                  //       //               AppLocalizations.of(context)        (
                  //       //                   "sensor_alert_subscription"),
                  //       //               style: Theme.of(context)
                  //       //                   .textTheme
                  //       //                   .bodyText1
                  //       //                   .copyWith(
                  //       //                       fontWeight: FontWeight.w600,
                  //       //                       color: Colors.white)),
                  //       //         ],
                  //       //       ),
                  //       //     ),
                  //       //   ),
                  //       // ),
                  //     ],
                  //   ),
                  // ),

                  // AccordionSection(
                  //   rightIcon: Icon(
                  //     Icons.arrow_drop_down,
                  //     color: Theme.of(context).primaryColor,
                  //   ),
                  //   isOpen: false,
                  //   leftIcon: navigationDrawerIcon(NavigationDrawerIcons.hr),
                  //   headerBackgroundColor: Theme.of(context).cardColor,
                  //   headerBackgroundColorOpened: Theme.of(context).cardColor,
                  //   headerBorderWidth: 1,
                  //   contentBackgroundColor: Colors.white,
                  //   headerPadding: const EdgeInsets.all(10),
                  //   contentBorderWidth: 0,
                  //   contentVerticalPadding: 10,
                  //   header: Text('hr'.tr,
                  //       style: Theme.of(context)
                  //           .textTheme
                  //           .bodyLarge!
                  //           .copyWith(color: Theme.of(context).primaryColor)),
                  //   content: Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       VisibilityExtended(
                  //         visible: true,
                  //         // visible: GlobalData().isViewAccessPresent(
                  //         //     ModuleConstants.HR_PERSON),
                  //         child: InkWell(
                  //           onTap: () {
                  //             Navigator.of(context)
                  //                 .pushNamed('/admin/gms/person/list');
                  //           },
                  //           child: Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 8.0, vertical: 8),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text(("person".tr),
                  //                     style: Theme.of(context)
                  //                         .textTheme
                  //                         .bodyLarge!
                  //                         .copyWith(
                  //                             fontWeight: FontWeight.w600,
                  //                             color: Colors.black)),
                  //                 const Icon(Icons.arrow_forward_ios,
                  //                     color: Colors.black, size: 18),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.of(context).pushNamed(
                  //               //TODO: change this
                  //               '/admin/gms/person/taskmanagement',
                  //               arguments: {
                  //                 "personType": 1,
                  //                 "title": ("task_management".tr)
                  //               });
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("task_management".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  // AccordionSection(
                  //   rightIcon: Icon(
                  //     Icons.arrow_drop_down,
                  //     color: Theme.of(context).primaryColor,
                  //   ),
                  //   isOpen: false,
                  //   leftIcon:
                  //       navigationDrawerIcon(NavigationDrawerIcons.sales),
                  //   headerBackgroundColor: Theme.of(context).cardColor,
                  //   headerBackgroundColorOpened: Theme.of(context).cardColor,
                  //   headerBorderWidth: 1,
                  //   contentBackgroundColor: Colors.white,
                  //   headerPadding: const EdgeInsets.all(10),
                  //   contentBorderWidth: 0,
                  //   contentVerticalPadding: 10,
                  //   header: Text('sales'.tr,
                  //       style: Theme.of(context)
                  //           .textTheme
                  //           .bodyLarge!
                  //           .copyWith(color: Theme.of(context).primaryColor)),
                  //   content: Container(
                  //       child: InkWell(
                  //     onTap: () {
                  //       Navigator.of(context)
                  //           .pushNamed('/admin/customer/list');
                  //     },
                  //     child: Padding(
                  //       padding: const EdgeInsets.symmetric(
                  //           horizontal: 8.0, vertical: 8),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text(("customer".tr),
                  //               style: Theme.of(context)
                  //                   .textTheme
                  //                   .bodyLarge!
                  //                   .copyWith(
                  //                       fontWeight: FontWeight.w600,
                  //                       color: Colors.black)),
                  //           const Icon(Icons.arrow_forward_ios,
                  //               color: Colors.black, size: 18),
                  //         ],
                  //       ),
                  //     ),
                  //   )),
                  // ),

                  // AccordionSection(
                  //   rightIcon: Icon(
                  //     Icons.arrow_drop_down,
                  //     color: Theme.of(context).primaryColor,
                  //   ),
                  //   isOpen: false,
                  //   leftIcon: Icon(
                  //     Icons.assignment,
                  //     color: Theme.of(context).primaryColor,
                  //   ),
                  //   headerBackgroundColor: Theme.of(context).cardColor,
                  //   headerBackgroundColorOpened: Theme.of(context).cardColor,
                  //   headerBorderWidth: 1,
                  //   contentBackgroundColor: Colors.white,
                  //   headerPadding: const EdgeInsets.all(10),
                  //   contentBorderWidth: 0,
                  //   contentVerticalPadding: 10,
                  //   header: Text('Report'.tr,
                  //       style: Theme.of(context)
                  //           .textTheme
                  //           .bodyLarge!
                  //           .copyWith(color: Theme.of(context).primaryColor)),
                  //   content: Column(
                  //     children: [
                  //       InkWell(
                  //         onTap: () {
                  //           // Navigator.of(context)
                  //           //     .push(MaterialPageRoute(builder: (context) {
                  //           //   return const BatchStockFilterPage();
                  //           // }));
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("Batch Stock Report".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           // Navigator.of(context)
                  //           //     .push(MaterialPageRoute(builder: (context) {
                  //           //   return const ChamberFilterPage();
                  //           // }));
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("Chamber Stock Report"),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           // Navigator.of(context)
                  //           //     .push(MaterialPageRoute(builder: (context) {
                  //           //   return const CustomerFilterPage();
                  //           // }));
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("Customer Stock Report"),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           // Navigator.of(context)
                  //           //     .push(MaterialPageRoute(builder: (context) {
                  //           //   return const ExpiryStockFilterPage();
                  //           // }));
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("Expire Stock Report"),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           // Navigator.of(context)
                  //           //     .push(MaterialPageRoute(builder: (context) {
                  //           //   return const ItemStockFilterPage();
                  //           // }));
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("Item Stock Report"),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           // Navigator.of(context)
                  //           //     .push(MaterialPageRoute(builder: (context) {
                  //           //   return const StockFilterPage();
                  //           // }));
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               // const Icon(Icons.arrow_forward,
                  //               //     color: Colors.white, size: 22),
                  //               //
                  //               Text(("Stock View Report".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  // AccordionSection(
                  //   rightIcon: Icon(
                  //     Icons.arrow_drop_down,
                  //     color: Theme.of(context).primaryColor,
                  //   ),
                  //   isOpen: false,
                  //   leftIcon:
                  //       navigationDrawerIcon(NavigationDrawerIcons.assets),
                  //   headerBackgroundColor: Theme.of(context).cardColor,
                  //   headerBackgroundColorOpened: Theme.of(context).cardColor,
                  //   headerBorderWidth: 1,
                  //   contentBackgroundColor: Colors.white,
                  //   headerPadding: const EdgeInsets.all(10),
                  //   contentBorderWidth: 0,
                  //   contentVerticalPadding: 10,
                  //   header: Text('Assets'.tr,
                  //       style: Theme.of(context)
                  //           .textTheme
                  //           .bodyLarge!
                  //           .copyWith(color: Theme.of(context).primaryColor)),
                  //   content: Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       VisibilityExtended(
                  //         visible: true,
                  //         // visible: GlobalData().isViewAccessPresent(
                  //         //     ModuleConstants.ASSET_DASHBOARD),
                  //         child: InkWell(
                  //           onTap: () {
                  //             Navigator.of(context)
                  //                 .pushNamed('/warehouse/assets/dashboard');
                  //           },
                  //           child: Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 8.0, vertical: 8),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text(("asset_dashboard".tr),
                  //                     style: Theme.of(context)
                  //                         .textTheme
                  //                         .bodyLarge!
                  //                         .copyWith(
                  //                             fontWeight: FontWeight.w600,
                  //                             color: Colors.black)),
                  //                 const Icon(Icons.arrow_forward_ios,
                  //                     color: Colors.black, size: 18),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       VisibilityExtended(
                  //         visible: true,
                  //         // visible: GlobalData().isViewAccessPresent(
                  //         //     ModuleConstants.ASSET_ENTRY),
                  //         child: InkWell(
                  //           onTap: () {
                  //             Navigator.of(context)
                  //                 .pushNamed("/warehouse/assets/list");
                  //           },
                  //           child: Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 8.0, vertical: 8),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text(("asset_entry".tr),
                  //                     style: Theme.of(context)
                  //                         .textTheme
                  //                         .bodyLarge!
                  //                         .copyWith(
                  //                             fontWeight: FontWeight.w600,
                  //                             color: Colors.black)),
                  //                 const Icon(Icons.arrow_forward_ios,
                  //                     color: Colors.black, size: 18),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       VisibilityExtended(
                  //         visible: true,
                  //         // visible: GlobalData().isViewAccessPresent(
                  //         //     ModuleConstants.ASSET_LABELLING),
                  //         child: InkWell(
                  //           onTap: () {
                  //             Navigator.of(context)
                  //                 .pushNamed('/warehouse/assets/labelling');
                  //           },
                  //           child: Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 8.0, vertical: 8),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text(("asset_labelling".tr),
                  //                     style: Theme.of(context)
                  //                         .textTheme
                  //                         .bodyLarge!
                  //                         .copyWith(
                  //                             fontWeight: FontWeight.w600,
                  //                             color: Colors.black)),
                  //                 const Icon(Icons.arrow_forward_ios,
                  //                     color: Colors.black, size: 18),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       VisibilityExtended(
                  //         visible: true,
                  //         // visible: GlobalData().isViewAccessPresent(
                  //         //     ModuleConstants.ASSET_AUDIT),
                  //         child: InkWell(
                  //           onTap: () {
                  //             Navigator.of(context)
                  //                 .pushNamed('/warehouse/assets/audit');
                  //           },
                  //           child: Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 8.0, vertical: 8),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text(("asset_audit".tr),
                  //                     style: Theme.of(context)
                  //                         .textTheme
                  //                         .bodyLarge!
                  //                         .copyWith(
                  //                             fontWeight: FontWeight.w600,
                  //                             color: Colors.black)),
                  //                 const Icon(Icons.arrow_forward_ios,
                  //                     color: Colors.black, size: 18),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       VisibilityExtended(
                  //         visible: true,
                  //         // visible: GlobalData().isViewAccessPresent(
                  //         //     ModuleConstants.ASSET_MAINTENANCE),
                  //         child: InkWell(
                  //           onTap: () {
                  //             Navigator.of(context).pushNamed(
                  //                 '/warehouse/assets/maintenanceListPage');
                  //           },
                  //           child: Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 8.0, vertical: 8),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text(
                  //                   ("asset_maintenance".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black),
                  //                 ),
                  //                 const Icon(Icons.arrow_forward_ios,
                  //                     color: Colors.black, size: 18),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       VisibilityExtended(
                  //         visible: true,
                  //         // visible: GlobalData().isViewAccessPresent(
                  //         //     ModuleConstants.ASSET_ASSIGNMENT),
                  //         child: InkWell(
                  //           onTap: () {
                  //             Navigator.of(context).pushNamed(
                  //                 '/warehouse/assets/assetAssignmentListPage');
                  //           },
                  //           child: Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 8.0, vertical: 8),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text(
                  //                   ("asset_assignments".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black),
                  //                 ),
                  //                 const Icon(Icons.arrow_forward_ios,
                  //                     color: Colors.black, size: 18),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       VisibilityExtended(
                  //         visible: true,
                  //         // visible: GlobalData().isViewAccessPresent(
                  //         //     ModuleConstants.ASSET_ASSIGNMENT_LOG),
                  //         child: InkWell(
                  //           onTap: () {
                  //             Navigator.of(context).pushNamed(
                  //                 '/warehouse/assets/assetAssignment/log');
                  //           },
                  //           child: Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 8.0, vertical: 8),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text(
                  //                   ("asset_assignment_log".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black),
                  //                 ),
                  //                 const Icon(Icons.arrow_forward_ios,
                  //                     color: Colors.black, size: 18),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  // AccordionSection(
                  //   rightIcon: Icon(
                  //     Icons.arrow_drop_down,
                  //     color: Theme.of(context).primaryColor,
                  //   ),
                  //   isOpen: false,
                  //   leftIcon: navigationDrawerIcon(
                  //       NavigationDrawerIcons.preferences),
                  //   headerBackgroundColor: Theme.of(context).cardColor,
                  //   headerBackgroundColorOpened: Theme.of(context).cardColor,
                  //   headerBorderWidth: 1,
                  //   contentBackgroundColor: Colors.white,
                  //   headerPadding: const EdgeInsets.all(10),
                  //   contentBorderWidth: 0,
                  //   contentVerticalPadding: 10,
                  //   header: Text('preferences'.tr,
                  //       style: Theme.of(context)
                  //           .textTheme
                  //           .bodyLarge!
                  //           .copyWith(color: Theme.of(context).primaryColor)),
                  //   content: Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       VisibilityExtended(
                  //         visible: true,
                  //         // visible: GlobalData()
                  //         //     .isViewAccessPresent(ModuleConstants.WAREHOUSE),
                  //         child: InkWell(
                  //           onTap: () {
                  //             Navigator.of(context)
                  //                 .pushNamed("/warehouse/list");
                  //           },
                  //           child: Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 8.0, vertical: 8),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text(("warehouse".tr),
                  //                     style: Theme.of(context)
                  //                         .textTheme
                  //                         .bodyLarge!
                  //                         .copyWith(
                  //                             fontWeight: FontWeight.w600,
                  //                             color: Colors.black)),
                  //                 const Icon(Icons.arrow_forward_ios,
                  //                     color: Colors.black, size: 18),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.of(context)
                  //               .pushNamed('/changelanguage');
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 8.0, vertical: 8),
                  //           child: Row(
                  //             mainAxisAlignment:
                  //                 MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(("change_language".tr),
                  //                   style: Theme.of(context)
                  //                       .textTheme
                  //                       .bodyLarge!
                  //                       .copyWith(
                  //                           fontWeight: FontWeight.w600,
                  //                           color: Colors.black)),
                  //               const Icon(Icons.arrow_forward_ios,
                  //                   color: Colors.black, size: 18),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  // AccordionSection(
                  //   rightIcon: Icon(
                  //     Icons.arrow_drop_down,
                  //     color: Theme.of(context).primaryColor,
                  //   ),
                  //   isOpen: false,
                  //   leftIcon: navigationDrawerIcon(
                  //       NavigationDrawerIcons.preferences),
                  //   headerBackgroundColor: Theme.of(context).cardColor,
                  //   headerBackgroundColorOpened: Theme.of(context).cardColor,
                  //   headerBorderWidth: 1,
                  //   contentBackgroundColor: Colors.white,
                  //   headerPadding: const EdgeInsets.all(10),
                  //   contentBorderWidth: 0,
                  //   contentVerticalPadding: 10,
                  //   header: Text("Indent".tr,
                  //       style: Theme.of(context)
                  //           .textTheme
                  //           .bodyLarge!
                  //           .copyWith(color: Theme.of(context).primaryColor)),
                  //   content: Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       VisibilityExtended(
                  //         visible: true,
                  //         // visible: GlobalData()
                  //         //     .isViewAccessPresent(ModuleConstants.WAREHOUSE),
                  //         child: InkWell(
                  //           onTap: () {
                  //             Navigator.of(context).pushNamed("/indent");
                  //           },
                  //           child: Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 8.0, vertical: 8),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text("Indent",
                  //                     style: Theme.of(context)
                  //                         .textTheme
                  //                         .bodyLarge!
                  //                         .copyWith(
                  //                             fontWeight: FontWeight.w600,
                  //                             color: Colors.black)),
                  //                 const Icon(Icons.arrow_forward_ios,
                  //                     color: Colors.black, size: 18),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  AccordionSection(
                    rightIcon: Icon(
                      Icons.arrow_drop_down,
                      color: Theme.of(context).primaryColor,
                    ),
                    isOpen: false,
                    leftIcon:
                        navigationDrawerIcon(NavigationDrawerIcons.preferences),
                    headerBackgroundColor: Theme.of(context).cardColor,
                    headerBackgroundColorOpened: Theme.of(context).cardColor,
                    headerBorderWidth: 1,
                    contentBackgroundColor: Colors.white,
                    headerPadding: const EdgeInsets.all(10),
                    contentBorderWidth: 0,
                    contentVerticalPadding: 10,
                    header: Text("Onboarding",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Theme.of(context).primaryColor)),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        VisibilityExtended(
                          visible: true,
                          // visible: GlobalData()
                          //     .isViewAccessPresent(ModuleConstants.WAREHOUSE),
                          child: InkWell(
                            onTap: () {
                              context.pushRoute(const AddEmployeeRoute());
                              if (isMobile()) Navigator.pop(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Add Employee",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)),
                                  const Icon(Icons.arrow_forward_ios,
                                      color: Colors.black, size: 18),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //  CustomButton(title: 'logout'.tr)
          ],
        )
        // Material(
        //   color: Colors.transparent,
        //   child: SingleChildScrollView(
        //     child: Column(
        //       children: [
        //         SizedBox(height: MediaQuery.of(context).size.height * 0.07),
        //         Align(
        //           alignment: Alignment.centerLeft,
        //           child: Text( ("moolcode")!,
        //               style: Theme.of(context).textTheme.headline4!.copyWith(
        //                   fontWeight: FontWeight.bold, color: Colors.white)),
        //         ),
        //         const SizedBox(height: 30),

        //         ///-----------------dashboard--------------------
        //         VisibilityExtended(
        //                          visible : true,
        //           // visible: GlobalData().isViewAccessPresent(ModuleConstants.GMS_DASHBOARD) || GlobalData().isViewAccessPresent(ModuleConstants.DMS_DASHBOARD),
        //           child: ExpandablePanel(
        //             header: Row(
        //               children: [
        //                 _MyNavigationDrawerIcon(MyNavigationDrawerIcons.dashboard),
        //                 const SizedBox(width: 12),
        //                 Text( ("dashboard")!,
        //                     style: _itemHeadingStyle),
        //               ],
        //             ),
        //             iconColor: Colors.white,
        //             expanded: Column(
        //               mainAxisSize: MainAxisSize.min,
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 VisibilityExtended(
        //                                  visible : true,
        //                   // visible: GlobalData().isViewAccessPresent(
        //                   //     ModuleConstants.GMS_DASHBOARD),
        //                   child: InkWell(
        //                     onTap: () {
        //                       if (ModalRoute.of(context)!.settings.name !=
        //                           "/admin/gms/dashboard") {
        //                         Navigator.of(context).pushNamedAndRemoveUntil(
        //                             '/admin/gms/dashboard', (route) => false);
        //                       }
        //                     },
        //                     child: Padding(
        //                       padding: const EdgeInsets.symmetric(
        //                           horizontal: 8.0, vertical: 8),
        //                       child: Row(
        //                         children: [
        //                           const Icon(Icons.arrow_forward,
        //                               color: Colors.white, size: 22),
        //
        //                           Text(

        //                                  ("gms_dashboard")!,
        //                               style: _itemSubHeadingStyle),
        //                         ],
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //                 VisibilityExtended(
        //                 visible : true,
        //                   // visible: GlobalData().isViewAccessPresent(
        //                   //     ModuleConstants.DMS_DASHBOARD),
        //                   child: InkWell(
        //                     onTap: () {
        //                       if (ModalRoute.of(context)!.settings.name !=
        //                           "/admin/dms/dashboard") {
        //                         Navigator.of(context).pushNamedAndRemoveUntil(
        //                             '/admin/dms/dashboard', (route) => false);
        //                       }
        //                     },
        //                     child: Padding(
        //                       padding: const EdgeInsets.symmetric(
        //                           horizontal: 8.0, vertical: 8),
        //                       child: Row(
        //                         children: [
        //                           const Icon(Icons.arrow_forward,
        //                               color: Colors.white, size: 22),
        //
        //                           Text(

        //                                  ("dms_dashboard")!,
        //                               style: _itemSubHeadingStyle),
        //                         ],
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //                 // VisibilityExtended(
        //                 //   // visible: globals.authStore.appUser //TODO:Change to this
        //                 //   //         .checkUserRole([UserRole.Customer]) &&
        //                 //   //     SharedPrefs.getPref(PrefConstants.CUSTOMER_ID) !=
        //                 //   //         null,

        //                 //   visible: globals.authStore.appUser.checkUserRole([
        //                 //     //Todo:from this
        //                 //     UserRole.Admin,
        //                 //     UserRole.DockSupervisor,
        //                 //     UserRole.PlantManager,
        //                 //     UserRole.ThreePLCustomer
        //                 //   ]),
        //                 //   child: InkWell(
        //                 //     onTap: () {
        //                 //       if (ModalRoute.of(context).settings.name !=
        //                 //           "/admin/customer/dashboard") {
        //                 //         Navigator.of(context).pushNamedAndRemoveUntil(
        //                 //             '/admin/customer/dashboard',
        //                 //             (route) => false);
        //                 //       }
        //                 //     },
        //                 //     child: Padding(
        //                 //       padding: const EdgeInsets.symmetric(
        //                 //           horizontal: 8.0, vertical: 8),
        //                 //       child: Row(
        //                 //         children: [
        //                 //           Icon(Icons.arrow_forward,
        //                 //               color: Colors.white, size: 22),
        //                 //           SizedBox(width: 8),
        //                 //           Text(
        //                 //               AppLocalizations.of(context)
        //                 //                  ("customer_dashboard"),
        //                 //               style: Theme.of(context)
        //                 //                   .textTheme
        //                 //                   .bodyText1
        //                 //                   .copyWith(
        //                 //                       fontWeight: FontWeight.w600,
        //                 //                       color: Colors.white)),
        //                 //         ],
        //                 //       ),
        //                 //     ),
        //                 //   ),
        //                 // ),
        //               ],
        //             ),
        //           ),
        //         ),

        //         ///-----------------gate--------------------

        //         VisibilityExtended(
        //           visible: GlobalData()
        //               .isViewAccessPresent(ModuleConstants.GMS_PERSON),
        //           child: Column(
        //             mainAxisSize: MainAxisSize.min,
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               ExpandablePanel(
        //                 header: Row(
        //                   children: [
        //                     _MyNavigationDrawerIcon(MyNavigationDrawerIcons.gate),
        //                     const SizedBox(width: 12),
        //                     Text( ("gms")!,
        //                         style: Theme.of(context)
        //                             .textTheme
        //                             .subtitle1!
        //                             .copyWith(
        //                                 fontWeight: FontWeight.w600,
        //                                 color: Colors.white)),
        //                   ],
        //                 ),
        //                 iconColor: Colors.white,
        //                 expanded: Container(
        //                   child: Column(
        //                     mainAxisSize: MainAxisSize.min,
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       VisibilityExtended(
        //                         visible: GlobalData().isViewAccessPresent(
        //                             ModuleConstants.GMS_PERSON),
        //                         child: InkWell(
        //                           onTap: () {
        //                             Navigator.of(context)
        //                                 .pushNamed('/admin/gms/person/in');
        //                           },
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: 8.0, vertical: 8),
        //                             child: Row(
        //                               children: [
        //                                 const Icon(Icons.arrow_forward,
        //                                     color: Colors.white, size: 22),
        //
        //                                 Text(

        //                                        ("person_in")!,
        //                                     style: Theme.of(context)
        //                                         .textTheme
        //                                         .bodyText1!
        //                                         .copyWith(
        //                                             fontWeight: FontWeight.w600,
        //                                             color: Colors.white)),
        //                               ],
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                       VisibilityExtended(
        //                         visible: GlobalData().isViewAccessPresent(
        //                             ModuleConstants.GMS_PERSON),
        //                         child: InkWell(
        //                           onTap: () {
        //                             Navigator.of(context)
        //                                 .pushNamed('/admin/gms/vehicle/in');
        //                           },
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: 8.0, vertical: 8),
        //                             child: Row(
        //                               children: [
        //                                 const Icon(Icons.arrow_forward,
        //                                     color: Colors.white, size: 22),
        //
        //                                 Text(

        //                                        ("vehicle_in")!,
        //                                     style: Theme.of(context)
        //                                         .textTheme
        //                                         .bodyText1!
        //                                         .copyWith(
        //                                             fontWeight: FontWeight.w600,
        //                                             color: Colors.white)),
        //                               ],
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                       VisibilityExtended(
        //                         visible: GlobalData().isViewAccessPresent(
        //                             ModuleConstants.GMS_PERSON),
        //                         child: InkWell(
        //                           onTap: () {
        //                             Navigator.of(context)
        //                                 .pushNamed('/admin/gms/material/in');
        //                           },
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: 8.0, vertical: 8),
        //                             child: Row(
        //                               children: [
        //                                 const Icon(Icons.arrow_forward,
        //                                     color: Colors.white, size: 22),
        //
        //                                 Text(

        //                                        ("material_in")!,
        //                                     style: Theme.of(context)
        //                                         .textTheme
        //                                         .bodyText1!
        //                                         .copyWith(
        //                                             fontWeight: FontWeight.w600,
        //                                             color: Colors.white)),
        //                               ],
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                       VisibilityExtended(
        //                         visible: GlobalData().isViewAccessPresent(
        //                             ModuleConstants.GMS_PERSON),
        //                         child: InkWell(
        //                           onTap: () {
        //                             Navigator.of(context)
        //                                 .pushNamed('/admin/gms/person/out');
        //                           },
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: 8.0, vertical: 8),
        //                             child: Row(
        //                               children: [
        //                                 const Icon(Icons.arrow_forward,
        //                                     color: Colors.white, size: 22),
        //
        //                                 Text(

        //                                        ("person_out")!,
        //                                     style: Theme.of(context)
        //                                         .textTheme
        //                                         .bodyText1!
        //                                         .copyWith(
        //                                             fontWeight: FontWeight.w600,
        //                                             color: Colors.white)),
        //                               ],
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //         // SizedBox(height: 8),

        //         ///-----------------registers--------------------
        //         ExpandablePanel(
        //           header: Row(
        //             children: [
        //               _MyNavigationDrawerIcon(MyNavigationDrawerIcons.register),
        //               const SizedBox(width: 12),
        //               Text( ("registers")!,
        //                   style: Theme.of(context).textTheme.subtitle1!.copyWith(
        //                       fontWeight: FontWeight.w600, color: Colors.white)),
        //             ],
        //           ),
        //           iconColor: Colors.white,
        //           expanded: Container(
        //             child: Column(
        //               mainAxisSize: MainAxisSize.min,
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 InkWell(
        //                   onTap: () {
        //                     Navigator.of(context)
        //                         .pushNamed('/admin/gms/person/register');
        //                   },
        //                   child: Padding(
        //                     padding: const EdgeInsets.symmetric(
        //                         horizontal: 8.0, vertical: 8),
        //                     child: Row(
        //                       children: [
        //                         const Icon(Icons.arrow_forward,
        //                             color: Colors.white, size: 22),
        //
        //                         Text(

        //                                ("person_in_out")!,
        //                             style: Theme.of(context)
        //                                 .textTheme
        //                                 .bodyText1!
        //                                 .copyWith(
        //                                     fontWeight: FontWeight.w600,
        //                                     color: Colors.white)),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //                 InkWell(
        //                   onTap: () {
        //                     Navigator.of(context).pushNamed(
        //                         '/admin/gms/person/register',
        //                         arguments: {
        //                           "personType": 1,
        //                           "title":
        //                              ("employee_in_out")
        //                         });
        //                   },
        //                   child: Padding(
        //                     padding: const EdgeInsets.symmetric(
        //                         horizontal: 8.0, vertical: 8),
        //                     child: Row(
        //                       children: [
        //                         const Icon(Icons.arrow_forward,
        //                             color: Colors.white, size: 22),
        //
        //                         Text(

        //                                ("employee_in_out")!,
        //                             style: Theme.of(context)
        //                                 .textTheme
        //                                 .bodyText1!
        //                                 .copyWith(
        //                                     fontWeight: FontWeight.w600,
        //                                     color: Colors.white)),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //                 InkWell(
        //                   onTap: () {
        //                     Navigator.of(context).pushNamed(
        //                         '/admin/gms/person/register',
        //                         arguments: {
        //                           "personType": 2,
        //                           "title":
        //                              ("labour_in_out")
        //                         });
        //                   },
        //                   child: Padding(
        //                     padding: const EdgeInsets.symmetric(
        //                         horizontal: 8.0, vertical: 8),
        //                     child: Row(
        //                       children: [
        //                         const Icon(Icons.arrow_forward,
        //                             color: Colors.white, size: 22),
        //
        //                         Text(

        //                                ("labour_in_out")!,
        //                             style: Theme.of(context)
        //                                 .textTheme
        //                                 .bodyText1!
        //                                 .copyWith(
        //                                     fontWeight: FontWeight.w600,
        //                                     color: Colors.white)),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //                 InkWell(
        //                   onTap: () {
        //                     Navigator.of(context).pushNamed(
        //                         '/admin/gms/person/register',
        //                         arguments: {
        //                           "personType": 8,
        //                           "title":
        //                              ("intern_in_out")
        //                         });
        //                   },
        //                   child: Padding(
        //                     padding: const EdgeInsets.symmetric(
        //                         horizontal: 8.0, vertical: 8),
        //                     child: Row(
        //                       children: [
        //                         const Icon(Icons.arrow_forward,
        //                             color: Colors.white, size: 22),
        //
        //                         Text(

        //                                ("intern_in_out")!,
        //                             style: Theme.of(context)
        //                                 .textTheme
        //                                 .bodyText1!
        //                                 .copyWith(
        //                                     fontWeight: FontWeight.w600,
        //                                     color: Colors.white)),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //                 InkWell(
        //                   onTap: () {
        //                     Navigator.of(context).pushNamed(
        //                         '/admin/gms/person/register',
        //                         arguments: {
        //                           "personType": 5,
        //                           "title":
        //                              ("visitor_in_out")
        //                         });
        //                   },
        //                   child: Padding(
        //                     padding: const EdgeInsets.symmetric(
        //                         horizontal: 8.0, vertical: 8),
        //                     child: Row(
        //                       children: [
        //                         const Icon(Icons.arrow_forward,
        //                             color: Colors.white, size: 22),
        //
        //                         Text(

        //                                ("visitor_in_out")!,
        //                             style: Theme.of(context)
        //                                 .textTheme
        //                                 .bodyText1!
        //                                 .copyWith(
        //                                     fontWeight: FontWeight.w600,
        //                                     color: Colors.white)),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //                 InkWell(
        //                   onTap: () {
        //                     Navigator.of(context)
        //                         .pushNamed('/admin/gms/vehicle/inoutlist');
        //                   },
        //                   child: Padding(
        //                     padding: const EdgeInsets.symmetric(
        //                         horizontal: 8.0, vertical: 8),
        //                     child: Row(
        //                       children: [
        //                         const Icon(Icons.arrow_forward,
        //                             color: Colors.white, size: 22),
        //
        //                         Text(

        //                                ("vehicle_in_out")!,
        //                             style: Theme.of(context)
        //                                 .textTheme
        //                                 .bodyText1!
        //                                 .copyWith(
        //                                     fontWeight: FontWeight.w600,
        //                                     color: Colors.white)),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //                 InkWell(
        //                   onTap: () {
        //                     Navigator.of(context)
        //                         .pushNamed('/admin/gms/material/register');
        //                   },
        //                   child: Padding(
        //                     padding: const EdgeInsets.symmetric(
        //                         horizontal: 8.0, vertical: 8),
        //                     child: Row(
        //                       children: [
        //                         const Icon(Icons.arrow_forward,
        //                             color: Colors.white, size: 22),
        //
        //                         Text(

        //                                ("material_in_out")!,
        //                             style: Theme.of(context)
        //                                 .textTheme
        //                                 .bodyText1!
        //                                 .copyWith(
        //                                     fontWeight: FontWeight.w600,
        //                                     color: Colors.white)),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //                 InkWell(
        //                   onTap: () {
        //                     Navigator.of(context).pushNamed(
        //                         '/admin/gms/material/register',
        //                         arguments: {
        //                           "direction": 1,
        //                           "title":
        //                              ("material_inward")
        //                         });
        //                   },
        //                   child: Padding(
        //                     padding: const EdgeInsets.symmetric(
        //                         horizontal: 8.0, vertical: 8),
        //                     child: Row(
        //                       children: [
        //                         const Icon(Icons.arrow_forward,
        //                             color: Colors.white, size: 22),
        //
        //                         Text(

        //                                ("material_inward")!,
        //                             style: Theme.of(context)
        //                                 .textTheme
        //                                 .bodyText1!
        //                                 .copyWith(
        //                                     fontWeight: FontWeight.w600,
        //                                     color: Colors.white)),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //                 InkWell(
        //                   onTap: () {
        //                     Navigator.of(context).pushNamed(
        //                         '/admin/gms/material/register',
        //                         arguments: {
        //                           "direction": 2,
        //                           "title":
        //                              ("material_outward")
        //                         });
        //                   },
        //                   child: Padding(
        //                     padding: const EdgeInsets.symmetric(
        //                         horizontal: 8.0, vertical: 8),
        //                     child: Row(
        //                       children: [
        //                         const Icon(Icons.arrow_forward,
        //                             color: Colors.white, size: 22),
        //
        //                         Text(

        //                                ("material_outward")!,
        //                             style: Theme.of(context)
        //                                 .textTheme
        //                                 .bodyText1!
        //                                 .copyWith(
        //                                     fontWeight: FontWeight.w600,
        //                                     color: Colors.white)),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //                 InkWell(
        //                   onTap: () {
        //                     Navigator.of(context).pushNamed(
        //                         '/admin/gms/material/register',
        //                         arguments: {
        //                           "materialType": 3,
        //                           "title":
        //                              ("documents_movement")
        //                         });
        //                   },
        //                   child: Padding(
        //                     padding: const EdgeInsets.symmetric(
        //                         horizontal: 8.0, vertical: 8),
        //                     child: Row(
        //                       children: [
        //                         const Icon(Icons.arrow_forward,
        //                             color: Colors.white, size: 22),
        //
        //                         Text(

        //                                ("documents_movement")!,
        //                             style: Theme.of(context)
        //                                 .textTheme
        //                                 .bodyText1!
        //                                 .copyWith(
        //                                     fontWeight: FontWeight.w600,
        //                                     color: Colors.white)),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),

        //         ///-------------------------------- inventory ----------------------------------------------------------------
        //         VisibilityExtended(
        //           visible:
        //               GlobalData().isViewAccessPresent(ModuleConstants.INVENTORY),
        //           child: ExpandablePanel(
        //               header: Row(
        //                 children: [
        //                   _MyNavigationDrawerIcon(MyNavigationDrawerIcons.register),
        //                   const SizedBox(width: 12),
        //                   Text(
        //                        ("inventory")!,
        //                       style: Theme.of(context)
        //                           .textTheme
        //                           .subtitle1!
        //                           .copyWith(
        //                               fontWeight: FontWeight.w600,
        //                               color: Colors.white)),
        //                 ],
        //               ),
        //               iconColor: Colors.white,
        //               expanded: Container(
        //                   child: Column(
        //                       mainAxisSize: MainAxisSize.min,
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: [
        //                     VisibilityExtended(
        //                       visible: true,
        //                       child: InkWell(
        //                         onTap: () {
        //                           Navigator.of(context).pushNamed("/inventory");
        //                         },
        //                         child: Padding(
        //                           padding: const EdgeInsets.symmetric(
        //                               horizontal: 4.0, vertical: 8),
        //                           child: Row(
        //                             children: [
        //                               _MyNavigationDrawerIcon(
        //                                   MyNavigationDrawerIcons.inventory),
        //
        //                               Text(

        //                                      ("map_view")!,
        //                                   style: Theme.of(context)
        //                                       .textTheme
        //                                       .bodyText1!
        //                                       .copyWith(
        //                                           fontWeight: FontWeight.w600,
        //                                           color: Colors.white)),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                   ]))),
        //         ),

        //         ///-------------------------------- report ----------------------------------------------------------------
        //         VisibilityExtended(
        //           visible:
        //               GlobalData().isViewAccessPresent(ModuleConstants.REPORT),
        //           child: ExpandablePanel(
        //               header: Row(
        //                 children: [
        //                   _MyNavigationDrawerIcon(MyNavigationDrawerIcons.register),
        //                   const SizedBox(width: 12),
        //                   Text( ("reports")!,
        //                       style: Theme.of(context)
        //                           .textTheme
        //                           .subtitle1!
        //                           .copyWith(
        //                               fontWeight: FontWeight.w600,
        //                               color: Colors.white)),
        //                 ],
        //               ),
        //               iconColor: Colors.white,
        //               expanded: Container(
        //                   child: Column(
        //                       mainAxisSize: MainAxisSize.min,
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: [
        //                     VisibilityExtended(
        //                       visible: true,
        //                       child: InkWell(
        //                         onTap: () {
        //                           Navigator.of(context).pushNamed("/reports");
        //                         },
        //                         child: Padding(
        //                           padding: const EdgeInsets.symmetric(
        //                               horizontal: 8.0, vertical: 8),
        //                           child: Row(
        //                             children: [
        //                               _MyNavigationDrawerIcon(
        //                                   MyNavigationDrawerIcons.reports),
        //
        //                               Text(

        //                                      ("reports")!,
        //                                   style: Theme.of(context)
        //                                       .textTheme
        //                                       .bodyText1!
        //                                       .copyWith(
        //                                           fontWeight: FontWeight.w600,
        //                                           color: Colors.white)),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                   ]))),
        //         ),

        //         ///-------------------------------- sensors ----------------------------------------------------------------

        //         VisibilityExtended(
        //           visible: GlobalData().isViewAccessPresent(ModuleConstants.SENSOR_VIEW),
        //           child: Column(
        //             children: [
        //               ExpandablePanel(
        //                 header: Row(
        //                   children: [
        //                     _MyNavigationDrawerIcon(MyNavigationDrawerIcons.sensors),
        //                     const SizedBox(width: 12),
        //                     Text(
        //                          ("sensors")!,
        //                         style: Theme.of(context)
        //                             .textTheme
        //                             .subtitle1!
        //                             .copyWith(
        //                                 fontWeight: FontWeight.w600,
        //                                 color: Colors.white)),
        //                   ],
        //                 ),
        //                 iconColor: Colors.white,
        //                 expanded: Column(
        //                   mainAxisSize: MainAxisSize.min,
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     VisibilityExtended(
        //                       visible: true,
        //                       child: InkWell(
        //                         onTap: () {
        //                           // Navigator.of(context).pushNamed(
        //                           //     "/iotsensors/temperature/sensorReportPage"); //change this
        //                           Navigator.push(
        //                               context,
        //                               MaterialPageRoute(
        //                                   builder: (context) =>
        //                                       const SelectSensorLocation()));
        //                         },
        //                         child: Padding(
        //                           padding: const EdgeInsets.symmetric(
        //                               horizontal: 8.0, vertical: 8),
        //                           child: Row(
        //                             children: [
        //                               const Icon(Icons.arrow_forward,
        //                                   color: Colors.white, size: 22),
        //
        //                               Text(

        //                                      ("sensor_report")!,
        //                                   style: Theme.of(context)
        //                                       .textTheme
        //                                       .bodyText1!
        //                                       .copyWith(
        //                                           fontWeight: FontWeight.w600,
        //                                           color: Colors.white)),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                     // VisibilityExtended(
        //                     //   visible: GlobalData().isViewAccessPresent(
        //                     //       ModuleConstants.SENSOR_EXCEPTION_REPORT),
        //                     //   child: InkWell(
        //                     //     onTap: () {
        //                     //       Navigator.of(context).pushNamed(
        //                     //           "/iotsensors/temperature/sensorExceptionReportPage"); //change this
        //                     //     },
        //                     //     child: Padding(
        //                     //       padding: const EdgeInsets.symmetric(
        //                     //           horizontal: 8.0, vertical: 8),
        //                     //       child: Row(
        //                     //         children: [
        //                     //           Icon(Icons.arrow_forward,
        //                     //               color: Colors.white, size: 22),
        //                     //           SizedBox(width: 8),
        //                     //           Text(
        //                     //               AppLocalizations.of(context) (
        //                     //                   "sensor_exception_report"),
        //                     //               style: Theme.of(context)
        //                     //                   .textTheme
        //                     //                   .bodyText1
        //                     //                   .copyWith(
        //                     //                       fontWeight: FontWeight.w600,
        //                     //                       color: Colors.white)),
        //                     //         ],
        //                     //       ),
        //                     //     ),
        //                     //   ),
        //                     // ),
        //                     // VisibilityExtended(
        //                     //   visible: GlobalData().isViewAccessPresent(
        //                     //       ModuleConstants.SENSOR_DATA_VIEW_REPORT),
        //                     //   child: InkWell(
        //                     //     onTap: () {
        //                     //       Navigator.of(context).pushNamed(
        //                     //           "/iotsensors/temperature/sensordataviewlist"); //change this
        //                     //     },
        //                     //     child: Padding(
        //                     //       padding: const EdgeInsets.symmetric(
        //                     //           horizontal: 8.0, vertical: 8),
        //                     //       child: Row(
        //                     //         children: [
        //                     //           Icon(Icons.arrow_forward,
        //                     //               color: Colors.white, size: 22),
        //                     //           SizedBox(width: 8),
        //                     //           Text(
        //                     //               AppLocalizations.of(context)
        //                     //                  ("sensor_data_view"),
        //                     //               style: Theme.of(context)
        //                     //                   .textTheme
        //                     //                   .bodyText1
        //                     //                   .copyWith(
        //                     //                       fontWeight: FontWeight.w600,
        //                     //                       color: Colors.white)),
        //                     //         ],
        //                     //       ),
        //                     //     ),
        //                     //   ),
        //                     // ),
        //                     // VisibilityExtended(
        //                     //   visible: GlobalData().isViewAccessPresent(
        //                     //       ModuleConstants.SENSOR_VIEW),
        //                     //   child: InkWell(
        //                     //     onTap: () {
        //                     //       Navigator.of(context).pushNamed(
        //                     //           "/iotsensors/temperature/sensorViewPage"); //change this
        //                     //     },
        //                     //     child: Padding(
        //                     //       padding: const EdgeInsets.symmetric(
        //                     //           horizontal: 8.0, vertical: 8),
        //                     //       child: Row(
        //                     //         children: [
        //                     //           Icon(Icons.arrow_forward,
        //                     //               color: Colors.white, size: 22),
        //                     //           SizedBox(width: 8),
        //                     //           Text(
        //                     //               AppLocalizations.of(context)
        //                     //                  ("sensor_view"),
        //                     //               style: Theme.of(context)
        //                     //                   .textTheme
        //                     //                   .bodyText1
        //                     //                   .copyWith(
        //                     //                       fontWeight: FontWeight.w600,
        //                     //                       color: Colors.white)),
        //                     //         ],
        //                     //       ),
        //                     //     ),
        //                     //   ),
        //                     // ),
        //                     // VisibilityExtended(
        //                     //   visible: GlobalData().isViewAccessPresent(
        //                     //       ModuleConstants.SENSOR_ALERT),
        //                     //   child: InkWell(
        //                     //     onTap: () {
        //                     //       Navigator.of(context).pushNamed(
        //                     //           "/iotsensors/temperature/sensoralertlistpage"); //change this
        //                     //     },
        //                     //     child: Padding(
        //                     //       padding: const EdgeInsets.symmetric(
        //                     //           horizontal: 8.0, vertical: 8),
        //                     //       child: Row(
        //                     //         children: [
        //                     //           Icon(Icons.arrow_forward,
        //                     //               color: Colors.white, size: 22),
        //                     //           SizedBox(width: 8),
        //                     //           Text(
        //                     //               AppLocalizations.of(context)
        //                     //                  ("sensor_alert"),
        //                     //               style: Theme.of(context)
        //                     //                   .textTheme
        //                     //                   .bodyText1
        //                     //                   .copyWith(
        //                     //                       fontWeight: FontWeight.w600,
        //                     //                       color: Colors.white)),
        //                     //         ],
        //                     //       ),
        //                     //     ),
        //                     //   ),
        //                     // ),
        //                     // VisibilityExtended(
        //                     //   visible: GlobalData().isViewAccessPresent(
        //                     //       ModuleConstants.SENSOR_ALERT_SUBSCRIPTION),
        //                     //   child: InkWell(
        //                     //     onTap: () {
        //                     //       Navigator.of(context).pushNamed(
        //                     //           "/iotsensors/temperature/sensoralertsubscriptionpage"); //change this
        //                     //     },
        //                     //     child: Padding(
        //                     //       padding: const EdgeInsets.symmetric(
        //                     //           horizontal: 8.0, vertical: 8),
        //                     //       child: Row(
        //                     //         children: [
        //                     //           Icon(Icons.arrow_forward,
        //                     //               color: Colors.white, size: 22),
        //                     //           SizedBox(width: 8),
        //                     //           Text(
        //                     //               AppLocalizations.of(context) (
        //                     //                   "sensor_alert_subscription"),
        //                     //               style: Theme.of(context)
        //                     //                   .textTheme
        //                     //                   .bodyText1
        //                     //                   .copyWith(
        //                     //                       fontWeight: FontWeight.w600,
        //                     //                       color: Colors.white)),
        //                     //         ],
        //                     //       ),
        //                     //     ),
        //                     //   ),
        //                     // ),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),

        //         ///-----------------HR--------------------
        //         VisibilityExtended(
        //           visible:
        //               GlobalData().isViewAccessPresent(ModuleConstants.HR_PERSON),
        //           child: Column(
        //             children: [
        //               ExpandablePanel(
        //                 header: Row(
        //                   children: [
        //                     Column(
        //                       children: [
        //                         //SizedBox(height: 8),
        //                         Row(
        //                           children: [
        //                             _MyNavigationDrawerIcon(
        //                                 MyNavigationDrawerIcons.hr),
        //                             const SizedBox(width: 12),
        //                             Text(

        //                                  ("hr")!,
        //                               style: Theme.of(context)
        //                                   .textTheme
        //                                   .subtitle1!
        //                                   .copyWith(
        //                                       fontWeight: FontWeight.w600,
        //                                       color: Colors.white),
        //                             ),
        //                           ],
        //                         ),
        //                       ],
        //                     ),
        //                   ],
        //                 ),
        //                 iconColor: Colors.white,
        //                 expanded: Container(
        //                   child: Column(
        //                     mainAxisSize: MainAxisSize.min,
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       VisibilityExtended(
        //                         visible: GlobalData().isViewAccessPresent(
        //                             ModuleConstants.HR_PERSON),
        //                         child: InkWell(
        //                           onTap: () {
        //                             Navigator.of(context)
        //                                 .pushNamed('/admin/gms/person/list');
        //                           },
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: 8.0, vertical: 8),
        //                             child: Row(
        //                               children: [
        //                                 const Icon(Icons.arrow_forward,
        //                                     color: Colors.white, size: 22),
        //
        //                                 Text(

        //                                        ("person")!,
        //                                     style: Theme.of(context)
        //                                         .textTheme
        //                                         .bodyText1!
        //                                         .copyWith(
        //                                             fontWeight: FontWeight.w600,
        //                                             color: Colors.white)),
        //                               ],
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                       InkWell(
        //                         onTap: () {
        //                           Navigator.of(context).pushNamed(
        //                               //TODO: change this
        //                               '/admin/gms/person/taskmanagement',
        //                               arguments: {
        //                                 "personType": 1,
        //                                 "title":
        //                                    ("task_management")
        //                               });
        //                         },
        //                         child: Padding(
        //                           padding: const EdgeInsets.symmetric(
        //                               horizontal: 8.0, vertical: 8),
        //                           child: Row(
        //                             children: [
        //                               const Icon(Icons.arrow_forward,
        //                                   color: Colors.white, size: 22),
        //
        //                               Text(

        //                                      ("task_management")!,
        //                                   style: Theme.of(context)
        //                                       .textTheme
        //                                       .bodyText1!
        //                                       .copyWith(
        //                                           fontWeight: FontWeight.w600,
        //                                           color: Colors.white)),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),

        //         ///-----------------sales--------------------

        //         VisibilityExtended(
        //           visible:
        //               GlobalData().isViewAccessPresent(ModuleConstants.HR_PERSON),
        //           child: Column(
        //             children: [
        //               ExpandablePanel(
        //                 header: Row(
        //                   children: [
        //                     VisibilityExtended(
        //                       visible: true,
        //                       // globals.authStore.appUser.checkUserRole([
        //                       //   UserRole.SuperAdmin,
        //                       //   UserRole.Admin,
        //                       //   UserRole.Hr,
        //                       //   UserRole.ThreePLCustomer
        //                       // ]),
        //                       child: Column(
        //                         children: [
        //                           //SizedBox(height: 8),
        //                           Row(
        //                             children: [
        //                               _MyNavigationDrawerIcon(
        //                                   MyNavigationDrawerIcons.sales),
        //                               const SizedBox(width: 12),
        //                               Text(

        //                                    ("sales")!,
        //                                 style: Theme.of(context)
        //                                     .textTheme
        //                                     .subtitle1!
        //                                     .copyWith(
        //                                         fontWeight: FontWeight.w600,
        //                                         color: Colors.white),
        //                               ),
        //                             ],
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //                 iconColor: Colors.white,
        //                 expanded: Container(
        //                     child: InkWell(
        //                   onTap: () {
        //                     Navigator.of(context)
        //                         .pushNamed('/admin/customer/list');
        //                   },
        //                   child: Padding(
        //                     padding: const EdgeInsets.symmetric(
        //                         horizontal: 8.0, vertical: 8),
        //                     child: Row(
        //                       children: [
        //                         const Icon(Icons.arrow_forward,
        //                             color: Colors.white, size: 22),
        //
        //                         Text(

        //                                ("customer")!,
        //                             style: Theme.of(context)
        //                                 .textTheme
        //                                 .bodyText1!
        //                                 .copyWith(
        //                                     fontWeight: FontWeight.w600,
        //                                     color: Colors.white)),
        //                       ],
        //                     ),
        //                   ),
        //                 )),
        //               ),
        //             ],
        //           ),
        //         ),

        //         ///-----------------sales end--------------------

        //         ///-----------------stock report--------------------

        //         VisibilityExtended(
        //           visible:
        //               GlobalData().isViewAccessPresent(ModuleConstants.HR_PERSON),
        //           // GlobalData()
        //           //     .isViewAccessPresent(ModuleConstants.HR_PERSON),
        //           // !isNotAllowedToSeeStocks,
        //           child: Column(
        //             children: [
        //               ExpandablePanel(
        //                 header: Row(
        //                   children: [
        //                     VisibilityExtended(
        //                       visible: true,
        //                       // globals.authStore.appUser.checkUserRole([
        //                       //   UserRole.SuperAdmin,
        //                       //   UserRole.Admin,
        //                       //   UserRole.Hr,
        //                       //   UserRole.ThreePLCustomer
        //                       // ]),
        //                       child: Column(
        //                         children: [
        //                           //SizedBox(height: 8),
        //                           Row(
        //                             children: [
        //                               const Icon(Icons.assignment,
        //                                   color: Colors.white),
        //                               const SizedBox(width: 12),
        //                               Text(

        //                                    ("Report")!,
        //                                 style: Theme.of(context)
        //                                     .textTheme
        //                                     .subtitle1!
        //                                     .copyWith(
        //                                         fontWeight: FontWeight.w600,
        //                                         color: Colors.white),
        //                               ),
        //                             ],
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //                 iconColor: Colors.white,
        //                 expanded: Container(
        //                     child: Column(
        //                   children: [
        //                     InkWell(
        //                       onTap: () {
        //                         Navigator.of(context)
        //                             .push(MaterialPageRoute(builder: (context) {
        //                           return const BatchStockFilterPage();
        //                         }));
        //                       },
        //                       child: Padding(
        //                         padding: const EdgeInsets.symmetric(
        //                             horizontal: 8.0, vertical: 8),
        //                         child: Row(
        //                           children: [
        //                             const Icon(Icons.arrow_forward,
        //                                 color: Colors.white, size: 22),
        //
        //                             Text(

        //                                    ("Batch Stock Report")!,
        //                                 style: Theme.of(context)
        //                                     .textTheme
        //                                     .bodyText1!
        //                                     .copyWith(
        //                                         fontWeight: FontWeight.w600,
        //                                         color: Colors.white)),
        //                           ],
        //                         ),
        //                       ),
        //                     ),
        //                     InkWell(
        //                       onTap: () {
        //                         Navigator.of(context)
        //                             .push(MaterialPageRoute(builder: (context) {
        //                           return const ChamberFilterPage();
        //                         }));
        //                       },
        //                       child: Padding(
        //                         padding: const EdgeInsets.symmetric(
        //                             horizontal: 8.0, vertical: 8),
        //                         child: Row(
        //                           children: [
        //                             const Icon(Icons.arrow_forward,
        //                                 color: Colors.white, size: 22),
        //
        //                             Text(

        //                                    ("Chamber Stock Report")!,
        //                                 style: Theme.of(context)
        //                                     .textTheme
        //                                     .bodyText1!
        //                                     .copyWith(
        //                                         fontWeight: FontWeight.w600,
        //                                         color: Colors.white)),
        //                           ],
        //                         ),
        //                       ),
        //                     ),
        //                     InkWell(
        //                       onTap: () {
        //                         Navigator.of(context)
        //                             .push(MaterialPageRoute(builder: (context) {
        //                           return const CustomerFilterPage();
        //                         }));
        //                       },
        //                       child: Padding(
        //                         padding: const EdgeInsets.symmetric(
        //                             horizontal: 8.0, vertical: 8),
        //                         child: Row(
        //                           children: [
        //                             const Icon(Icons.arrow_forward,
        //                                 color: Colors.white, size: 22),
        //
        //                             Text(

        //                                    ("Customer Stock Report")!,
        //                                 style: Theme.of(context)
        //                                     .textTheme
        //                                     .bodyText1!
        //                                     .copyWith(
        //                                         fontWeight: FontWeight.w600,
        //                                         color: Colors.white)),
        //                           ],
        //                         ),
        //                       ),
        //                     ),
        //                     InkWell(
        //                       onTap: () {
        //                         Navigator.of(context)
        //                             .push(MaterialPageRoute(builder: (context) {
        //                           return const ExpiryStockFilterPage();
        //                         }));
        //                       },
        //                       child: Padding(
        //                         padding: const EdgeInsets.symmetric(
        //                             horizontal: 8.0, vertical: 8),
        //                         child: Row(
        //                           children: [
        //                             const Icon(Icons.arrow_forward,
        //                                 color: Colors.white, size: 22),
        //
        //                             Text(

        //                                    ("Expire Stock Report")!,
        //                                 style: Theme.of(context)
        //                                     .textTheme
        //                                     .bodyText1!
        //                                     .copyWith(
        //                                         fontWeight: FontWeight.w600,
        //                                         color: Colors.white)),
        //                           ],
        //                         ),
        //                       ),
        //                     ),
        //                     InkWell(
        //                       onTap: () {
        //                         Navigator.of(context)
        //                             .push(MaterialPageRoute(builder: (context) {
        //                           return const ItemStockFilterPage();
        //                         }));
        //                       },
        //                       child: Padding(
        //                         padding: const EdgeInsets.symmetric(
        //                             horizontal: 8.0, vertical: 8),
        //                         child: Row(
        //                           children: [
        //                             const Icon(Icons.arrow_forward,
        //                                 color: Colors.white, size: 22),
        //
        //                             Text(

        //                                    ("Item Stock Report")!,
        //                                 style: Theme.of(context)
        //                                     .textTheme
        //                                     .bodyText1!
        //                                     .copyWith(
        //                                         fontWeight: FontWeight.w600,
        //                                         color: Colors.white)),
        //                           ],
        //                         ),
        //                       ),
        //                     ),
        //                     InkWell(
        //                       onTap: () {
        //                         Navigator.of(context)
        //                             .push(MaterialPageRoute(builder: (context) {
        //                           return const StockFilterPage();
        //                         }));
        //                       },
        //                       child: Padding(
        //                         padding: const EdgeInsets.symmetric(
        //                             horizontal: 8.0, vertical: 8),
        //                         child: Row(
        //                           children: [
        //                             const Icon(Icons.arrow_forward,
        //                                 color: Colors.white, size: 22),
        //
        //                             Text(

        //                                    ("Stock View Report")!,
        //                                 style: Theme.of(context)
        //                                     .textTheme
        //                                     .bodyText1!
        //                                     .copyWith(
        //                                         fontWeight: FontWeight.w600,
        //                                         color: Colors.white)),
        //                           ],
        //                         ),
        //                       ),
        //                     ),
        //                   ],
        //                 )),
        //               ),
        //             ],
        //           ),
        //         ),

        //         ///-----------------stock report end--------------------

        //         // SizedBox(height: 8,),
        //         // visible: GlobalData()
        //         //     .isModuleAccessPresent(ModuleConstants.ASSETS_MODULE),
        //         ///-----------------assets--------------------
        //         VisibilityExtended(
        //           visible: GlobalData()
        //               .isViewAccessPresent(ModuleConstants.ASSETS_MODULE),
        //           child: Column(
        //             children: [
        //               //SizedBox(height: 8),
        //               ExpandablePanel(
        //                 header: Row(
        //                   children: [
        //                     _MyNavigationDrawerIcon(MyNavigationDrawerIcons.assets),
        //                     const SizedBox(width: 12),
        //                     Text( ("Assets")!,
        //                         style: Theme.of(context)
        //                             .textTheme
        //                             .subtitle1!
        //                             .copyWith(
        //                                 fontWeight: FontWeight.w600,
        //                                 color: Colors.white)),
        //                   ],
        //                 ),
        //                 iconColor: Colors.white,
        //                 expanded: Container(
        //                   child: Column(
        //                     mainAxisSize: MainAxisSize.min,
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       VisibilityExtended(
        //                         visible: GlobalData().isViewAccessPresent(
        //                             ModuleConstants.ASSET_DASHBOARD),
        //                         child: InkWell(
        //                           onTap: () {
        //                             Navigator.of(context)
        //                                 .pushNamed('/warehouse/assets/dashboard');
        //                           },
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: 8.0, vertical: 8),
        //                             child: Row(
        //                               children: [
        //                                 const Icon(Icons.arrow_forward,
        //                                     color: Colors.white, size: 22),
        //
        //                                 Text(

        //                                        ("asset_dashboard")!,
        //                                     style: Theme.of(context)
        //                                         .textTheme
        //                                         .bodyText1!
        //                                         .copyWith(
        //                                             fontWeight: FontWeight.w600,
        //                                             color: Colors.white)),
        //                               ],
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                       VisibilityExtended(
        //                         visible: GlobalData().isViewAccessPresent(
        //                             ModuleConstants.ASSET_ENTRY),
        //                         child: InkWell(
        //                           onTap: () {
        //                             Navigator.of(context)
        //                                 .pushNamed("/warehouse/assets/list");
        //                           },
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: 8.0, vertical: 8),
        //                             child: Row(
        //                               children: [
        //                                 const Icon(Icons.arrow_forward,
        //                                     color: Colors.white, size: 22),
        //
        //                                 Text(

        //                                        ("asset_entry")!,
        //                                     style: Theme.of(context)
        //                                         .textTheme
        //                                         .bodyText1!
        //                                         .copyWith(
        //                                             fontWeight: FontWeight.w600,
        //                                             color: Colors.white)),
        //                               ],
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                       VisibilityExtended(
        //                         visible: GlobalData().isViewAccessPresent(
        //                             ModuleConstants.ASSET_LABELLING),
        //                         child: InkWell(
        //                           onTap: () {
        //                             Navigator.of(context)
        //                                 .pushNamed('/warehouse/assets/labelling');
        //                           },
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: 8.0, vertical: 8),
        //                             child: Row(
        //                               children: [
        //                                 const Icon(Icons.arrow_forward,
        //                                     color: Colors.white, size: 22),
        //
        //                                 Text(

        //                                        ("asset_labelling")!,
        //                                     style: Theme.of(context)
        //                                         .textTheme
        //                                         .bodyText1!
        //                                         .copyWith(
        //                                             fontWeight: FontWeight.w600,
        //                                             color: Colors.white)),
        //                               ],
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                       VisibilityExtended(
        //                         visible: GlobalData().isViewAccessPresent(
        //                             ModuleConstants.ASSET_AUDIT),
        //                         child: InkWell(
        //                           onTap: () {
        //                             Navigator.of(context)
        //                                 .pushNamed('/warehouse/assets/audit');
        //                           },
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: 8.0, vertical: 8),
        //                             child: Row(
        //                               children: [
        //                                 const Icon(Icons.arrow_forward,
        //                                     color: Colors.white, size: 22),
        //
        //                                 Text(

        //                                        ("asset_audit")!,
        //                                     style: Theme.of(context)
        //                                         .textTheme
        //                                         .bodyText1!
        //                                         .copyWith(
        //                                             fontWeight: FontWeight.w600,
        //                                             color: Colors.white)),
        //                               ],
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                       VisibilityExtended(
        //                         visible: GlobalData().isViewAccessPresent(
        //                             ModuleConstants.ASSET_MAINTENANCE),
        //                         child: InkWell(
        //                           onTap: () {
        //                             Navigator.of(context).pushNamed(
        //                                 '/warehouse/assets/maintenanceListPage');
        //                           },
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: 8.0, vertical: 8),
        //                             child: Row(
        //                               children: [
        //                                 const Icon(Icons.arrow_forward,
        //                                     color: Colors.white, size: 22),
        //
        //                                 Text(

        //                                      ("asset_maintenance")!,
        //                                   style: Theme.of(context)
        //                                       .textTheme
        //                                       .bodyText1!
        //                                       .copyWith(
        //                                           fontWeight: FontWeight.w600,
        //                                           color: Colors.white),
        //                                 ),
        //                               ],
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                       VisibilityExtended(
        //                         visible: GlobalData().isViewAccessPresent(
        //                             ModuleConstants.ASSET_ASSIGNMENT),
        //                         child: InkWell(
        //                           onTap: () {
        //                             Navigator.of(context).pushNamed(
        //                                 '/warehouse/assets/assetAssignmentListPage');
        //                           },
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: 8.0, vertical: 8),
        //                             child: Row(
        //                               children: [
        //                                 const Icon(Icons.arrow_forward,
        //                                     color: Colors.white, size: 22),
        //
        //                                 Text(

        //                                      ("asset_assignments")!,
        //                                   style: Theme.of(context)
        //                                       .textTheme
        //                                       .bodyText1!
        //                                       .copyWith(
        //                                           fontWeight: FontWeight.w600,
        //                                           color: Colors.white),
        //                                 ),
        //                               ],
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                       VisibilityExtended(
        //                         visible: GlobalData().isViewAccessPresent(
        //                             ModuleConstants.ASSET_ASSIGNMENT_LOG),
        //                         child: InkWell(
        //                           onTap: () {
        //                             Navigator.of(context).pushNamed(
        //                                 '/warehouse/assets/assetAssignment/log');
        //                           },
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: 8.0, vertical: 8),
        //                             child: Row(
        //                               children: [
        //                                 const Icon(Icons.arrow_forward,
        //                                     color: Colors.white, size: 22),
        //
        //                                 Text(

        //                                      ("asset_assignment_log")!,
        //                                   style: Theme.of(context)
        //                                       .textTheme
        //                                       .bodyText1!
        //                                       .copyWith(
        //                                           fontWeight: FontWeight.w600,
        //                                           color: Colors.white),
        //                                 ),
        //                               ],
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //         Column(
        //           children: [
        //             // SizedBox(height: 8),

        //             ///-----------------prefrences--------------------
        //             ExpandablePanel(
        //               header: Row(
        //                 children: [
        //                   _MyNavigationDrawerIcon(
        //                       MyNavigationDrawerIcons.preferences),
        //                   const SizedBox(width: 12),
        //                   Text(

        //                          ("preferences")!,
        //                       style: Theme.of(context)
        //                           .textTheme
        //                           .subtitle1!
        //                           .copyWith(
        //                               fontWeight: FontWeight.w600,
        //                               color: Colors.white)),
        //                 ],
        //               ),
        //               iconColor: Colors.white,
        //               expanded: Container(
        //                 child: Column(
        //                   mainAxisSize: MainAxisSize.min,
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     VisibilityExtended(
        //                       visible: GlobalData()
        //                           .isViewAccessPresent(ModuleConstants.WAREHOUSE),
        //                       child: InkWell(
        //                         onTap: () {
        //                           Navigator.of(context)
        //                               .pushNamed("/warehouse/list");
        //                         },
        //                         child: Padding(
        //                           padding: const EdgeInsets.symmetric(
        //                               horizontal: 8.0, vertical: 8),
        //                           child: Row(
        //                             children: [
        //                               const Icon(Icons.arrow_forward,
        //                                   color: Colors.white, size: 22),
        //
        //                               Text(

        //                                      ("warehouse")!,
        //                                   style: Theme.of(context)
        //                                       .textTheme
        //                                       .bodyText1!
        //                                       .copyWith(
        //                                           fontWeight: FontWeight.w600,
        //                                           color: Colors.white)),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                     // InkWell(
        //                     //   onTap: () {
        //                     //     Navigator.of(context)
        //                     //         .pushNamed("/warehouse/assets");
        //                     //   },
        //                     //   child: Padding(
        //                     //     padding: const EdgeInsets.symmetric(
        //                     //         horizontal: 8.0, vertical: 8),
        //                     //     child: Row(
        //                     //       children: [
        //                     //         Icon(Icons.arrow_forward,
        //                     //             color: Colors.white, size: 22),
        //                     //         SizedBox(width: 8),
        //                     //         Text(
        //                     //             AppLocalizations.of(context)
        //                     //                ("add_assets"),
        //                     //             style: Theme.of(context)
        //                     //                 .textTheme
        //                     //                 .bodyText1
        //                     //                 .copyWith(
        //                     //                     fontWeight: FontWeight.w600,
        //                     //                     color: Colors.white)),
        //                     //       ],
        //                     //     ),
        //                     //   ),
        //                     // ),
        //                     InkWell(
        //                       onTap: () {
        //                         Navigator.of(context)
        //                             .pushNamed('/changelanguage');
        //                       },
        //                       child: Padding(
        //                         padding: const EdgeInsets.symmetric(
        //                             horizontal: 8.0, vertical: 8),
        //                         child: Row(
        //                           children: [
        //                             const Icon(Icons.arrow_forward,
        //                                 color: Colors.white, size: 22),
        //
        //                             Text(

        //                                    ("change_language")!,
        //                                 style: Theme.of(context)
        //                                     .textTheme
        //                                     .bodyText1!
        //                                     .copyWith(
        //                                         fontWeight: FontWeight.w600,
        //                                         color: Colors.white)),
        //                           ],
        //                         ),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //         VisibilityExtended(
        //           //todo: INDENT : made visible to everyone
        //           visible:
        //               // true,
        //               GlobalData().isViewAccessPresent(ModuleConstants.INDENT),
        //           child: Column(
        //             children: [
        //               // SizedBox(height: 8),

        //               ///-----------------preferences--------------------
        //               ExpandablePanel(
        //                 header: Row(
        //                   children: [
        //                     _MyNavigationDrawerIcon(
        //                         MyNavigationDrawerIcons.preferences),
        //                     const SizedBox(width: 12),
        //                     Text("Indent",
        //                         style: Theme.of(context)
        //                             .textTheme
        //                             .subtitle1!
        //                             .copyWith(
        //                                 fontWeight: FontWeight.w600,
        //                                 color: Colors.white)),
        //                   ],
        //                 ),
        //                 iconColor: Colors.white,
        //                 expanded: Container(
        //                   child: Column(
        //                     mainAxisSize: MainAxisSize.min,
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       VisibilityExtended(
        //                         visible: true,
        //                         // visible: GlobalData()
        //                         //     .isViewAccessPresent(ModuleConstants.WAREHOUSE),
        //                         child: InkWell(
        //                           onTap: () {
        //                             Navigator.of(context).pushNamed("/indent");
        //                           },
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: 8.0, vertical: 8),
        //                             child: Row(
        //                               children: [
        //                                 const Icon(Icons.arrow_forward,
        //                                     color: Colors.white, size: 22),
        //
        //                                 Text("Indent",
        //                                     style: Theme.of(context)
        //                                         .textTheme
        //                                         .bodyText1!
        //                                         .copyWith(
        //                                             fontWeight: FontWeight.w600,
        //                                             color: Colors.white)),
        //                               ],
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),

        //         ///-----------------NEW  MENU------------------------

        //         //-----------------logout--------------------
        //         InkWell(
        //           onTap: () async {
        //             globals.token = null;
        //             SharedPrefs.clearPrefs();
        //             SharedPrefs.setPref(PrefConstants.LANGUAGE_CODE,
        //                 globals.languageStore?.language?.languageCode);
        //             SharedPrefs.setPref(PrefConstants.IS_LOGGED_IN, false);
        //             await SharedPrefs.setValue(PrefConstants.JWT_TOKEN, null);
        //             Navigator.of(context)
        //                 .pushNamedAndRemoveUntil('/', (route) => false);
        //           },
        //           child: Padding(
        //             padding: const EdgeInsets.symmetric(vertical: 8.0),
        //             child: Row(
        //               children: [
        //                 _MyNavigationDrawerIcon(MyNavigationDrawerIcons.logout),
        //                 const SizedBox(width: 12),
        //                 Text( ("logout")!,
        //                     style: Theme.of(context).textTheme.subtitle1!.copyWith(
        //                         fontWeight: FontWeight.w600,
        //                         color: Colors.white)),
        //               ],
        //             ),
        //           ),
        //         ),
        //         SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        //       ],
        //     ),
        //   ),
        // ),

        );
  }
}
