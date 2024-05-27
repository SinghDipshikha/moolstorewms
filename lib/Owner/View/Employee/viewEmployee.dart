import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/Model/employee.dart';
import 'package:moolwmsstore/Owner/View/Employee/EmployeeList.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:moolwmsstore/utils/globals.dart';

class ViewEmployee extends StatefulWidget {
  var employeeId;
  Employee? owner;
  int? warehouseId;
  ViewEmployee({super.key, this.employeeId, this.owner, this.warehouseId});

  @override
  State<ViewEmployee> createState() => _ViewEmployeeState();
}

class _ViewEmployeeState extends State<ViewEmployee> {
  bool loading = true;
  bool updatingStatus = false;
  Map userData = {};

  updateStatus() {
    setState(() {
      updatingStatus = true;
    });
    Get.find<OwnerController>().apiClient.postData("hr/staffUpdateStatus", {
      "status": userData["status"] == 1 ? 0 : 1,
      "employee_id": userData["employeeID"]
    }).then((v) {
      getUser();
    });
  }

  getUser() {
    Get.find<OwnerController>()
        .apiClient
        .getData("hr/staffListById/${widget.employeeId}")
        .then((v) {
      if (v.data["message"] == "Staff Data Retrieved Successfully!") {
        setState(() {
          loading = false;
          userData = v.data["result"][0];
          updatingStatus = false;
        });
      }
    });
  }

  @override
  void initState() {
    if (widget.owner == null) {
      getUser();
    }
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.owner != null
          ? Center(
              child: Text(widget.owner?.toJson().toString() ?? ""),
            )
          : loading
              ? const Center(
                  child: SpinKitDoubleBounce(
                    color: Color(0xFF5A57FF),
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      userData["status"] == 1
                          ? Container(
                              alignment: Alignment.center,
                              height: 60,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFCFFFF1),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0x3302A676)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                'Active',
                                style: TextStyle(
                                  color: Color(0xFF02A676),
                                  fontSize: 28,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          : Container(
                              alignment: Alignment.center,
                              height: 60,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFFFCECC),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0x33F94F46)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                'Inactive',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFF94F46),
                                  fontSize: 28,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                      Container(
                          padding: const EdgeInsets.all(14),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0x195A57FF)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      child: ViewEmployeeCard(
                                    title: 'Staff Name',
                                    items: [userData["name"]],
                                  )),
                                  Expanded(
                                      child: ViewEmployeeCard(
                                    title: 'Mobile No',
                                    items: [userData["mobile"]],
                                  )),
                                ],
                              ),
                              const Gap(12),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: ViewEmployeeCard(
                                    title: 'Designation',
                                    items: userData["personType"],
                                  )),
                                  Expanded(
                                      child: ViewEmployeeCard(
                                    title: 'Warehouse',
                                    items: (userData["warehouse"] as List)
                                        .map((e) => e["warehouse_name"])
                                        .toList(),
                                  )),
                                ],
                              ),
                            ],
                          )),
                      const Text(
                        'Change Staff Status',
                        style: TextStyle(
                          color: Color(0xFF848484),
                          fontSize: 12,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ).paddingSymmetric(vertical: 12),
                      updatingStatus
                          ? Center(
                              child: LoadingAnimationWidget.staggeredDotsWave(
                                color: const Color(0xFF5A57FF),
                                size: 80,
                              ),
                            ).paddingSymmetric(vertical: 12)
                          : Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 22, vertical: 11),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0x195A57FF)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Center(
                                        child: Text(
                                          'Active',
                                          style: TextStyle(
                                            color: userData["status"] == 1
                                                ? const Color(0xFF353535)
                                                : const Color(0xFFACACAC),
                                            fontSize: 18,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      )),
                                  InkWell(
                                    onTap: () {
                                      updateStatus();
                                    },
                                    child: Image.asset(
                                      userData["status"] == 1
                                          ? "assets/icons/Group 1000010840.png"
                                          : "assets/icons/Group 1000010841.png",
                                      height: 45,
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Center(
                                        child: Text(
                                          'Inactive',
                                          style: TextStyle(
                                            color: userData["status"] == 0
                                                ? const Color(0xFF353535)
                                                : const Color(0xFFACACAC),
                                            fontSize: 18,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            )
                    ],
                  ),
                ).paddingSymmetric(
                  vertical: Dimensions.vericalBodyPad,
                  horizontal: Dimensions.horizontalBodyPad),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.off(EmployeeList(
              warehouseId: widget.warehouseId,
            ),id: ownerNavigationKey);
          },
          child: Image.asset(
            "assets/icons/appbarabckicon.png",
            height: 20,
          ),
        ),
        title: Text(
          'View Employ ${widget.employeeId}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class ViewEmployeeCard extends StatelessWidget {
  String title;
  List items;
  ViewEmployeeCard({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF848484),
            fontSize: 12,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        const Gap(4),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(items.length, (i) {
            return Text(
              items[i],
              style: const TextStyle(
                color: Color(0xFF353535),
                fontSize: 18,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
            ).paddingSymmetric(vertical: 2);
          }),
        ),
      ],
    );
  }
}
