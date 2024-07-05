import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/Controller/ownerController.dart';
import 'package:moolwmsstore/Owner/View/Common/ownerCommon.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:msh_checkbox/msh_checkbox.dart';

class AddEmployee extends StatelessWidget {
  AddEmployee({super.key});

  // InitiateEmployee? employee;
  TextEditingController name = TextEditingController();

  TextEditingController mobile = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add New Staff',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
            //height: 0,
          ),
        ),
      ),
      body: GetBuilder<OwnerController>(initState: (state) {
        Get.find<OwnerController>().getAllWarhouse();
        Get.find<OwnerController>().getRoles();
      }, builder: (ownerController) {
        if (ownerController.loading) {
          return const Center(
            child: SpinKitWave(
              color: Color(0xFF5A57FF),
            ),
          );
        } else {
          return Form(
            key: formKey,
            child: ListView(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(4),
                CommonTextField(
                  labelText: 'Employee Name',
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      {
                        return "required";
                      }
                    } else {
                      return null;
                    }
                  },
                  controller: name,
                  textCapitalization: TextCapitalization.words,
                ),
                const Gap(12),

                CommonTextField(
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                  ],
                  maxLength: 10,
                  labelText: 'Mobile Number',
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      {
                        if (val!.length < 10) {
                          return 'Please enter valid Phone Number.';
                        }
                        return "required";
                      }
                    } else {
                      return null;
                    }
                  },
                  prefixIcon: Image.asset(
                    "assets/icons/india.png",
                    height: 6,
                  ).paddingAll(12),
                  controller: mobile,
                ),
                const Gap(16),

                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Role Access',
                        style: TextStyle(
                          color: Color(0xFF595959),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                // if (showError == true && ownerController.selectedRoles.isEmpty)
                //   const Text(
                //     'At least one Designation is required',
                //     style: TextStyle(
                //       color: Colors.red,
                //       fontSize: 14,
                //       fontFamily: 'SF Pro Display',
                //       fontWeight: FontWeight.w400,
                //       //height: 0,
                //     ),
                //   ),
                const Gap(4),
                GetBuilder<OwnerController>(
                    initState: (state) {},
                    builder: (ownerController) {
                      if (ownerController.roles.isNotEmpty) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(ownerController.roles.length,
                              (index) {
                            return Container(
                              height: 40,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              decoration: BoxDecoration(
                                borderRadius: (index == 0 ||
                                        index ==
                                            (ownerController.roles.length - 1))
                                    ? BorderRadius.only(
                                        topRight: index == 0
                                            ? const Radius.circular(12)
                                            : const Radius.circular(0),
                                        topLeft: index == 0
                                            ? const Radius.circular(12)
                                            : const Radius.circular(0),
                                        bottomLeft: index != 0
                                            ? const Radius.circular(12)
                                            : const Radius.circular(0),
                                        bottomRight: index != 0
                                            ? const Radius.circular(12)
                                            : const Radius.circular(0),
                                      )
                                    : null,
                                color: ownerController.selectedRoles
                                        .contains(ownerController.roles[index])
                                    ? const Color(0xFFFAF9FF)
                                    : Colors.white,
                                border: const Border(
                                  left: BorderSide(
                                      width: 1, color: Color(0x3F353535)),
                                  top: BorderSide(color: Color(0x3F353535)),
                                  right: BorderSide(
                                      width: 1, color: Color(0x3F353535)),
                                  bottom: BorderSide(
                                      width: 1, color: Color(0x3F353535)),
                                ),
                              ),
                              child: InkWell(
                                onTap: () {
                                  if (ownerController.selectedRoles
                                      .contains(ownerController.roles[index])) {
                                    ownerController.selectedRoles
                                        .remove(ownerController.roles[index]);
                                  } else {
                                    ownerController.selectedRoles
                                        .add(ownerController.roles[index]);
                                  }
                                  ownerController.update();
                                  print(ownerController.selectedRoles);
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      ownerController
                                              .roles[index].person_type ??
                                          '',
                                      style: const TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 14,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w300,
                                        // //height: 0,
                                      ),
                                    ),
                                    const Spacer(),
                                    MSHCheckbox(
                                      size: 20,
                                      value: ownerController.selectedRoles
                                          .contains(
                                              ownerController.roles[index]),
                                      colorConfig: MSHColorConfig
                                          .fromCheckedUncheckedDisabled(
                                        checkedColor: const Color(0xFF5A57FF),
                                      ),
                                      style: MSHCheckboxStyle.fillScaleCheck,
                                      onChanged: (selected) {
                                        if (ownerController.selectedRoles
                                            .contains(
                                                ownerController.roles[index])) {
                                          ownerController.selectedRoles.remove(
                                              ownerController.roles[index]);
                                        } else {
                                          ownerController.selectedRoles.add(
                                              ownerController.roles[index]);
                                        }
                                        ownerController.update();
                                        // setState(() {
                                        // //  true = selected;
                                        // });
                                      },
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                        );
                      }
                      return const SpinKitRipple(
                        color: Color(0xFF5A57FF),
                      );
                    }),
                const Gap(14),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Select Warehouse',
                        style: TextStyle(
                          color: Color(0xFF595959),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),

                // if (showError == true &&
                //     ownerController.selectedWarehouses.isEmpty)
                //   const Text(
                //     'At least one Warehouse is required',
                //     style: TextStyle(
                //       color: Colors.red,
                //       fontSize: 14,
                //       fontFamily: 'SF Pro Display',
                //       fontWeight: FontWeight.w400,
                //       //height: 0,
                //     ),
                //   ),
                const Gap(4),
                GetBuilder<OwnerController>(initState: (state) {
                  Get.find<OwnerController>().getAllWarhouse();
                }, builder: (ownerController) {
                  if (ownerController.warehouses.isNotEmpty) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(ownerController.warehouses.length,
                          (index) {
                        return InkWell(
                          onTap: () {
                            if (ownerController.selectedWarehouses
                                .contains(ownerController.warehouses[index])) {
                              ownerController.selectedWarehouses
                                  .remove(ownerController.warehouses[index]);
                            } else {
                              ownerController.selectedWarehouses
                                  .add(ownerController.warehouses[index]);
                            }
                            ownerController.update();
                          },
                          child: Container(
                            height: 40,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 2),
                            decoration: BoxDecoration(
                              borderRadius: (index == 0 ||
                                      index ==
                                          (ownerController.warehouses.length -
                                              1))
                                  ? BorderRadius.only(
                                      topRight: index == 0
                                          ? const Radius.circular(12)
                                          : const Radius.circular(0),
                                      topLeft: index == 0
                                          ? const Radius.circular(12)
                                          : const Radius.circular(0),
                                      bottomLeft: index != 0
                                          ? const Radius.circular(12)
                                          : const Radius.circular(0),
                                      bottomRight: index != 0
                                          ? const Radius.circular(12)
                                          : const Radius.circular(0),
                                    )
                                  : null,
                              color: ownerController.selectedWarehouses
                                      .contains(
                                          ownerController.warehouses[index])
                                  ? const Color(0xFFFAF9FF)
                                  : Colors.white,
                              border: const Border(
                                left: BorderSide(
                                    width: 1, color: Color(0x3F353535)),
                                top: BorderSide(color: Color(0x3F353535)),
                                right: BorderSide(
                                    width: 1, color: Color(0x3F353535)),
                                bottom: BorderSide(
                                    width: 1, color: Color(0x3F353535)),
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  ownerController
                                          .warehouses[index].warehouse_name ??
                                      '',
                                  style: const TextStyle(
                                    color: Color(0xFF595959),
                                    fontSize: 14,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w300,
                                    // //height: 0,
                                  ),
                                ),
                                const Spacer(),
                                MSHCheckbox(
                                  size: 20,
                                  value: ownerController.selectedWarehouses
                                      .contains(
                                          ownerController.warehouses[index]),
                                  colorConfig: MSHColorConfig
                                      .fromCheckedUncheckedDisabled(
                                    checkedColor: const Color(0xFF5A57FF),
                                  ),
                                  style: MSHCheckboxStyle.fillScaleCheck,
                                  onChanged: (selected) {
                                    if (ownerController.selectedWarehouses
                                        .contains(ownerController
                                            .warehouses[index])) {
                                      ownerController.selectedWarehouses.remove(
                                          ownerController.warehouses[index]);
                                    } else {
                                      ownerController.selectedWarehouses.add(
                                          ownerController.warehouses[index]);
                                    }
                                    ownerController.update();
                                    // setState(() {
                                    // //  true = selected;
                                    // });
                                  },
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                    );
                  }
                  return const SpinKitRipple(
                    color: Color(0xFF5A57FF),
                  );
                }),
                const Gap(14),
                CustomButton(
                  onTap: () {
                    if (ownerController.selectedRoles.isEmpty) {
                      Snacks.redSnack("Roles Cannot be empty");
                      return;
                    }
                    if (ownerController.selectedWarehouses.isEmpty) {
                      Snacks.redSnack("Warehouse Cannot be empty");
                      return;
                    }
                    if ((formKey.currentState?.validate() ?? false) &&
                        ownerController.selectedRoles.isNotEmpty &&
                        ownerController.selectedWarehouses.isNotEmpty) {
                      ownerController.addEmployee(
                          name.text, int.parse(mobile.text));
                    }
                  },
                  title: "Submit",
                ),
                const Gap(20),
              ],
            ).paddingSymmetric(horizontal: 12, vertical: 12),
          );
        }
      }),
    );
  }
}

class RowColumn extends StatelessWidget {
  List<Widget> children;
  RowColumn({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return context.isPhone
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: children,
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: children,
          );
  }
}
