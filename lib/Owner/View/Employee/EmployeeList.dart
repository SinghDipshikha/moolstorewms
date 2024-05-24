//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/View/Common/customButton.dart';
import 'package:moolwmsstore/Owner/View/Employee/viewEmployee.dart';
import 'package:moolwmsstore/utils/globals.dart';

class EmployeeList extends StatelessWidget {
  const EmployeeList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OwnerController>(initState: (state) {
      Get.find<OwnerController>().getAllEmployeesByOrg();
    }, builder: (ownerController) {
      return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomButton(
          onTap: () {},
          title: 'Add New Staff',
        ).paddingSymmetric(horizontal: 12),
        appBar: AppBar(
          title: const Text(
            'Staff List',
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
                    itemCount: ownerController.employees.length,
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
                                  ownerController.employees[i].name ?? "",
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
                                  ownerController.employees[i].mobile ?? "",
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
                                  ownerController.employees[i].personType
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
                                onPressed: () {
                                  if (ownerController.employees[i].personType
                                          ?.contains("owner") ??
                                      false) {
                                    Get.to(
                                        ViewEmployee(
                                          owner: ownerController.employees[i],
                                        ),
                                        id: ownerNavigationKey);
                                  } else {
                                    Get.to(
                                        ViewEmployee(
                                          employeeId: ownerController
                                              .employees[i].employeeID,
                                        ),
                                        id: ownerNavigationKey);
                                  }
                                },
                                icon: Image.asset(
                                  "assets/icons/Eye.png",
                                  height: 20,
                                )),
                            IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.more_horiz,
                                  color: Colors.black,
                                ))
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
