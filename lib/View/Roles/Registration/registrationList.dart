import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/securityGuard.dart';
import 'package:moolwmsstore/Data/Model/SecurityGuard/employeeEntry.dart';
import 'package:moolwmsstore/View/Roles/Security%20Guard/widgets/commonAppBar.dart';


class RegistrationListScreen extends StatefulWidget {
  const RegistrationListScreen({super.key});

  @override
  State<RegistrationListScreen> createState() => _RegistrationListScreenState();
}

class _RegistrationListScreenState extends State<RegistrationListScreen> {
  @override
  final List tags = [
    {"title": "Name", "flex": 1},
    {"title": "Mobile", "flex": 2},
    {"title": "Date & Time", "flex": 2},
    {"title": "Status", "flex": 1},
  ];
  final List dataList = [
    {"title": "Johnson Charles", "flex": 1},
    {"title": "123456789", "flex": 2},
    {"title": "25-06-2024 10:35 AM", "flex": 2},
    {"title": "icon", "flex": 1},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Register List',
        actions: [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 140,
                  height: 42,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 3.12),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x0C000000),
                        blurRadius: 2,
                        offset: Offset(0, 1.50),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.sort,
                        color: Colors.black,
                        size: 40,
                      ),
                      Text(
                        'Sort By',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 140,
                  height: 42,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 3.12),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x0C000000),
                        blurRadius: 2,
                        offset: Offset(0, 1.50),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.qr_code,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text(
                        'Scan QR',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Gap(20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12 * 2),
              height: 60,
              color: Colors.black,
              child: Row(
                children: List.generate(tags.length, (index) {
                  if (tags[index]["title"] == "icon") {
                    return Expanded(
                      flex: tags[index]["flex"],
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          )),
                    );
                  }
                  return Expanded(
                      flex: tags[index]["flex"],
                      child: Text(
                        tags[index]["title"],
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ));
                }),
              ),
            ),
            Expanded(
              child: GetBuilder<SecurityGuardController>(initState: (state) {
                Get.find<SecurityGuardController>().getEmployeesList();
              }, builder: (securityGuardController) {
                return securityGuardController.empEntryList.isEmpty
                    ? const Center(
                        child: SpinKitChasingDots(
                          color: Colors.black,
                        ),
                      )
                    : ListView.builder(
                        // shrinkWrap: true,
                        itemCount: securityGuardController.empEntryList.length,
                        itemBuilder: (context, i) {
                          EmployeeEntry entry =
                              securityGuardController.empEntryList[i];
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10),
                            child: Container(
                              height: 100,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x11000000),
                                    blurRadius: 2,
                                    offset: Offset(0, 1.50),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12 * 2),
                                child: Row(
                                  children:
                                      List.generate(dataList.length, (index) {
                                    if (dataList[index]["title"] ==
                                        "Johnson Charles") {
                                      return Expanded(
                                          flex: dataList[index]["flex"],
                                          child: Text(entry.name ?? ""));
                                    }
                                    if (dataList[index]["title"] ==
                                        "123456789") {
                                      return Expanded(
                                          flex: dataList[index]["flex"],
                                          child: Text("${entry.mobile ?? ""}"));
                                    }
                                    if (dataList[index]["title"] ==
                                        "25-06-2024 10:35 AM") {
                                      return Expanded(
                                          flex: dataList[index]["flex"],
                                          child: Text(entry.date ??
                                              "${DateTime.now()}"));
                                    }
                                    if (dataList[index]["title"] == "icon" &&
                                        entry.status == "IN") {
                                      return Expanded(
                                        flex: dataList[index]["flex"],
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            image: const DecorationImage(
                                              image: NetworkImage(
                                                  "assets/icons/check_in.png"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      );
                                    } else {}
                                    if (dataList[index]["title"] == "icon" &&
                                        entry.status == "OUT") {
                                      return Expanded(
                                        flex: dataList[index]["flex"],
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            image: const DecorationImage(
                                              image: NetworkImage(
                                                  "assets/icons/check_out.png"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      );
                                    }

                                    return Expanded(
                                      flex: tags[index]["flex"],
                                      child: Text(
                                        tags[index]["title"],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ),
                          );
                        });
              }),
            )

            // Container(
            //   constraints: const BoxConstraints(maxWidth: double.infinity),
            //   height: 47,
            //   clipBehavior: Clip.antiAlias,
            //   decoration: const BoxDecoration(color: Colors.black),
            //   child: const Row(
            //     children: [
            //       Expanded(
            //         flex: 3,
            //         child: Text(
            //           'Status',
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 12,
            //             fontFamily: 'Nunito',
            //             fontWeight: FontWeight.w600,
            //             height: 0,
            //           ),
            //         ),
            //       ),
            //       Expanded(
            //         flex: 3,
            //         child: Text(
            //           'Date & Time',
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 12,
            //             fontFamily: 'Nunito',
            //             fontWeight: FontWeight.w600,
            //             height: 0,
            //           ),
            //         ),
            //       ),
            //       Expanded(
            //         flex: 3,
            //         child: Text(
            //           'Name',
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 12,
            //             fontFamily: 'Nunito',
            //             fontWeight: FontWeight.w600,
            //             height: 0,
            //           ),
            //         ),
            //       ),
            //       Expanded(
            //         flex: 3,
            //         child: Text(
            //           'Mobile',
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 12,
            //             fontFamily: 'Nunito',
            //             fontWeight: FontWeight.w600,
            //             height: 0,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}


