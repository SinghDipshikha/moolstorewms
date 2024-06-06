//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';

class HrEmployeeList extends StatelessWidget {
  const HrEmployeeList({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle subHeaderStyle = const TextStyle(
      color: Color(0xFF5A57FF),
      fontSize: 12,
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w400,
    );
    TextStyle headerStyle = const TextStyle(
      color: Color(0xFF353535),
      fontSize: 12,
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w500,
    );

    String? selectedShift;
    return GetBuilder<HRController>(initState: (state) {
      Get.find<HRController>().getAllStaffList();
    }, builder: (hrController) {
      return Scaffold(
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // floatingActionButton: CustomButton(
        //   title: 'Add New Staff',
        // ).paddingSymmetric(horizontal: 12),
        appBar: AppBar(
          title: const Text(
            'Staff List',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
            ),
          ),
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

            Row(children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Name',
                      style: subHeaderStyle,
                    ),
                  )),
              const Gap(3),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      'Mobile no.,',
                      style: subHeaderStyle,
                    ),
                  )),
              const Gap(3),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      'Designation,',
                      style: subHeaderStyle,
                    ),
                  )),
              const Gap(3),
            ]).paddingSymmetric(horizontal: 8),

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
                                    style: headerStyle)),
                            Expanded(
                                flex: 1,
                                child: Text(
                                    hrController.employees[i].mobile ?? "",
                                    style: headerStyle)),
                            // const Gap(4),
                            Expanded(
                                flex: 1,
                                child: Text(
                                    hrController.employees[i].personType
                                            .toString()
                                            .replaceAll("[", "")
                                            .replaceAll("]", "") ??
                                        "",
                                    style: headerStyle)),

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
                                      Get.find<HRController>().selectEmployee(
                                          hrController.employees[i]);
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
