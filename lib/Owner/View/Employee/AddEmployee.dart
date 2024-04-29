import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Controller/userController.dart';
import 'package:moolwmsstore/Data/Model/Owner/initiateEmployee.dart';
import 'package:moolwmsstore/Data/Model/User/designation.dart';
import 'package:moolwmsstore/Owner/View/widget/MyButton.dart';
import 'package:moolwmsstore/View/common/myTextField.dart';
import 'package:moolwmsstore/View/common/titleContainer.dart';

class AddEmployee extends StatelessWidget {
  AddEmployee({super.key});
  InitiateEmployee? employee;
  TextEditingController name = TextEditingController();
  TextEditingController mobile = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: context.isPhone
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: MyButton(
                suffixIcon: "assets/icons/submit.png",
                glow: true,
                title: "Submit",
                width: double.infinity,
              ),
            )
          : null,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Form(
          child: Column(
            children: [
              TitleContainer(
                  title: "Employee Details",
                  child: Padding(
                    padding: EdgeInsets.all(context.isPhone ? 12.0 : 24),
                    child: Wrap(
                      runSpacing: 12,
                      children: [
                        RowColumn(
                          children: [
                            const SizedBox(
                              width: 200,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Employee Name ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFFF0000),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            context.isPhone
                                ? MyTextField(
                                    controller: name,
                                  )
                                : Expanded(
                                    child: MyTextField(
                                    controller: name,
                                  ))
                          ],
                        ),
                        RowColumn(
                          children: [
                            const SizedBox(
                              width: 200,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Mobile Number ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFFF0000),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            context.isPhone
                                ? MyTextField(
                                    controller: mobile,
                                  )
                                : Expanded(
                                    child: MyTextField(
                                    controller: mobile,
                                  ))
                          ],
                        ),
                        RowColumn(
                          children: [
                            const SizedBox(
                              width: 200,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Employee Designation ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFFF0000),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 2,
                                    offset: Offset(0, 2),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: GetBuilder<UserController>(
                                  initState: (state) {
                               // Get.find<UserController>().getAllDesignations();
                              }, builder: (userController) {
                                if (userController.designations.isEmpty) {
                                  return const SpinKitThreeBounce(
                                    size: 20,
                                    color: Colors.black,
                                  ).paddingSymmetric(horizontal: 12);
                                }
                                return DropdownMenu<Designation>(
                                  //width: double.infinity,
                                  trailingIcon: const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.black,
                                  ),
                                  hintText: "Select Designation",

                                  onSelected: (Designation? value) {
                                    Logger().i(value?.toJson());

                                    // This is called when the user selects an item.
                                    // setState(() {
                                    //   dropdownValue = value!;
                                    // });
                                  },
                                  dropdownMenuEntries: userController
                                      .designations
                                      .map<DropdownMenuEntry<Designation>>(
                                          (Designation value) {
                                    return DropdownMenuEntry<Designation>(
                                        value: value, label: value.name);
                                  }).toList(),
                                );
                              }),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
              if (!context.isPhone)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      width: 200,
                      title: "Previous",
                      prefixIcon: "assets/icons/Back Button.png",
                    ),
                    MyButton(
                      // glow: true,
                      width: 200,
                      title: "Submit",
                      suffixIcon: "assets/icons/submit.png",
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
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
