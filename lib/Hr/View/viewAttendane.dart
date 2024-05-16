//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';

class ViewAttendanceList extends StatelessWidget {
  const ViewAttendanceList({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HRController>(initState: (state) {
      Get.find<HRController>().getAllEmployeesByWarehouse();
    }, builder: (hrController) {
      return Scaffold(
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // floatingActionButton: CustomButton(
        // onTap: () {
        //   Get.to(const HrDashboard(), id: hrNavigationKey);
        // },
        //   title: '',
        // ).paddingSymmetric(horizontal: 12),
        appBar: AppBar(
          title: const Text(
            'Attendance List',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
              ////height: 0,
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 169,
                  height: 39,
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 30,
                    right: 10,
                    bottom: 10,
                  ),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x195A57FF)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Sort By',
                        style: TextStyle(
                          color: Color(0xFFACACAC),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Icon(
                        Icons.sort,
                        color: Color(0xFFACACAC),
                        size: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 169,
                  height: 39,
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 30,
                    right: 10,
                    bottom: 10,
                  ),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x195A57FF)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Color(0xFFACACAC),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Color(0xFFACACAC),
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "Name",
                    style: TextStyle(
                      color: Color(0xFF5A57FF),
                      fontSize: 12,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      //height: 0,
                      letterSpacing: -0.48,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "Designation",
                    style: TextStyle(
                      color: Color(0xFF5A57FF),
                      fontSize: 12,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      //height: 0,
                      letterSpacing: -0.48,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "Entry Time",
                    style: TextStyle(
                      color: Color(0xFF5A57FF),
                      fontSize: 12,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      //height: 0,
                      letterSpacing: -0.48,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "Status",
                    style: TextStyle(
                      color: Color(0xFF5A57FF),
                      fontSize: 12,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      //height: 0,
                      letterSpacing: -0.48,
                    ),
                  ),
                ),
              ],
            ).paddingSymmetric(horizontal: 12, vertical: 10),
            Expanded(
                child: ListView.builder(
                    itemCount: hrController.employees.length,
                    itemBuilder: (context, i) {
                      return Container(
                        //height: 40,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFAF9FF),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0x195A57FF)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Text(
                                  hrController.employees[i].name ?? "",
                                  style: const TextStyle(
                                    color: Color(0xFF353535),
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),

                            // const Gap(4),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  hrController.employees[i].personType
                                          .toString()
                                          .replaceAll("[", "")
                                          .replaceAll("]", "") ??
                                      "",
                                  style: const TextStyle(
                                    color: Color(0xFF353535),
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),

                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 20,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0x195A57FF)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Text(
                                  '10 : 05 : 50 AM',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF353535),
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                            const Gap(10),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 20,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 4),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFD2FFF1),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0x1902A676)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    'On Time',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF02A676),
                                      fontSize: 10,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: Image.asset(
                                  "assets/icons/Eye.png",
                                  height: 20,
                                )),
                          ],
                        ),
                      ).paddingSymmetric(vertical: 4);
                    }))
          ],
        ).paddingSymmetric(vertical: 16, horizontal: 12),
      );
    });
  }
}
