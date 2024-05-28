//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/View/addEmployeeBankDetails.dart';
import 'package:moolwmsstore/Hr/View/addEmployeeCareerDetails.dart';
import 'package:moolwmsstore/Hr/View/addEmployeeDocuments.dart';
import 'package:moolwmsstore/Hr/View/addEmployeeEducationQualificationDetails.dart';
import 'package:moolwmsstore/Hr/View/addEmployeePersonalDetails.dart';
import 'package:moolwmsstore/Hr/View/addedStaffScreen.dart';
import 'package:moolwmsstore/Hr/View/hrDashboard.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonAppBar.dart';
import 'package:moolwmsstore/utils/globals.dart';

class HrEmployeeList extends StatelessWidget {
  const HrEmployeeList({super.key});

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
          title: 'Staff List',
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
                const Expanded(
                  flex: 1,
                  child: Text(
                    "Mobile No.",
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
                            Expanded(
                                flex: 1,
                                child: Text(
                                  hrController.employees[i].mobile ?? "",
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
                            IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: Image.asset(
                                  "assets/icons/Eye.png",
                                  height: 20,
                                )),

                            hrController.employees[i].isBankDetails == 0 ||
                                    hrController.employees[i].isCareerDetails ==
                                        0 ||
                                    hrController
                                            .employees[i].isDocumentDetails ==
                                        0 ||
                                    hrController.employees[i].isUserDetails ==
                                        0 ||
                                    hrController
                                            .employees[i].isEducationDetails ==
                                        0
                                ? IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      hrController.navigationAccordingStatus
                                          .clear();
                                      hrController.navigationAccordingStatus
                                          .add(const AddedStaffScreen());

                                      if (hrController
                                              .employees[i].isBankDetails ==
                                          0) {
                                        hrController.navigationAccordingStatus
                                            .add(
                                                const AddEmployeeBankDetails());
                                      }
                                      if (hrController
                                              .employees[i].isCareerDetails ==
                                          0) {
                                        hrController.navigationAccordingStatus
                                            .add(
                                                const AddEmployeeCareerDetails());
                                      }
                                      if (hrController
                                              .employees[i].isDocumentDetails ==
                                          0) {
                                        hrController.navigationAccordingStatus.add(
                                            const AddEmployeeDocumentsDetails());
                                      }

                                      if (hrController
                                              .employees[i].isDocumentDetails ==
                                          0) {
                                        hrController.navigationAccordingStatus.add(
                                            const AddEmployeeEducationQualificationDetails());
                                      }
                                      if (hrController
                                              .employees[i].isUserDetails ==
                                          0) {
                                        hrController.navigationAccordingStatus.add(
                                            const AddEmployeePersonalDetails());
                                      }
                                      Logger().i(hrController
                                          .navigationAccordingStatus);

                                      Get.to(
                                          hrController
                                                  .navigationAccordingStatus[
                                              hrController
                                                      .navigationAccordingStatus
                                                      .length -
                                                  1],
                                          id: hrNavigationKey);
                                    },
                                    icon: Image.asset(
                                      "assets/images/hrIcon2.png",
                                      height: 20,
                                    ))
                                : IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    icon: Image.asset(
                                      "assets/images/hrIcon.png",
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
