//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/View/hrDashboard.dart';
import 'package:moolwmsstore/Hr/View/shiftAssign.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonAppBar.dart';
import 'package:moolwmsstore/utils/globals.dart';

class ShiftInfo extends StatelessWidget {
  const ShiftInfo({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedShift;
    return GetBuilder<HRController>(initState: (state) {
      Get.find<HRController>().getAllStaffList();
    }, builder: (hrController) {
      return Scaffold(
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // floatingActionButton: CustomButton(
        //   title: 'Add New Staff',
        // ).paddingSymmetric(horizontal: 12),
        appBar: CommonAppBar(
          title: 'Staff',
          onTap: () {
            Get.to(const HrDashboard(), id: hrNavigationKey);
          },
        ),
        body: Column(
          children: [
            // CommomDropDownDynamic(
            //   list: shiftsDataList,
            //   selectedValue: selectedShift,
            //   onChanged: (v) {},
            //   labelText: '',
            //   hintText: '',
            // ),
            TextField(
              onChanged: (value) {},
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              onSubmitted: (value) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                  labelText: "Search",
                  labelStyle: const TextStyle(
                    color: Color(0xFFACACAC),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                  ),
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Image.asset(
                    "assets/icons/Search Icon.png",
                    height: 8,
                    color: const Color(0xFFACACAC),
                  ).paddingAll(12),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF5A57FF)),
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFACACAC)),
                      borderRadius: BorderRadius.all(Radius.circular(18)))),
            ),
            const Gap(10),
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text(
                    "Staff Name",
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
                const Expanded(
                  flex: 1,
                  child: Text(
                    "Shift Assigned",
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
                const Expanded(
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
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )),
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ))
              ],
            ).paddingSymmetric(horizontal: 12),
            Expanded(
                child: ListView.builder(
                    itemCount: hrController.employees.length,
                    itemBuilder: (context, i) {
                      return Container(
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
                            const Expanded(
                                flex: 1,
                                child: Text(
                                  // hrController.employees[i].name ?? "",
                                  "",
                                  style: TextStyle(
                                    color: Color(0xFF353535),
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  Get.to(const AssignShift(),
                                      id: hrNavigationKey);
                                },
                                child: Container(
                                  height: 24,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF5A57FF),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Color(0x192647C8)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Click to Assign',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Gap(20),
                            const Expanded(
                                flex: 1,
                                child: Text(
                                  // hrController.employees[i].personType
                                  //         .toString()
                                  //         .replaceAll("[", "")
                                  //         .replaceAll("]", "") ??
                                  //     "",
                                  '',
                                  style: TextStyle(
                                    color: Color(0xFF353535),
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
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
