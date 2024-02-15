import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:auto_route/auto_route.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:moolwmsstore/View/common/customButton.dart';
import 'package:moolwmsstore/View/common/myTextField.dart';
import 'package:moolwmsstore/View/common/mydropdown.dart';
import 'package:moolwmsstore/utils/appConstants.dart';

@RoutePage()
class AddEmployee extends StatefulWidget {
  const AddEmployee({Key? key}) : super(key: key);

  @override
  State<AddEmployee> createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  bool isMale = true;
  String? dateOfBirth;
  List assignedRoles = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomButton(
        title: "Submit",
        glow: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add Employee",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Theme.of(context).primaryColor),
            ).paddingSymmetric(vertical: 10),
            MyTextField(labelText: 'Name'),
            MyTextField(labelText: 'Email'),
            Row(
              children: [
                InkWell(
                    onTap: () async {
                      await showCalendarDatePicker2Dialog(
                        dialogBackgroundColor: Theme.of(context).cardColor,
                        barrierColor: Theme.of(context).dialogBackgroundColor,
                        context: context,
                        config: CalendarDatePicker2WithActionButtonsConfig(
                            calendarType: CalendarDatePicker2Type.single),
                        dialogSize:
                            Size(MediaQuery.sizeOf(context).width * 0.9, 400),
                        borderRadius: BorderRadius.circular(15),
                      ).then((value) {
                        if (value != null) {
                          setState(() {
                            final DateFormat formatter =
                                DateFormat('yyyy-MM-dd');
                            dateOfBirth = formatter.format(value[0]!);
                          });
                        }
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Theme.of(context).cardColor,
                          boxShadow: ColorConstants.boxShadow(context)),
                      child: Text(
                        dateOfBirth != null
                            ? "DOB : $dateOfBirth"
                            : "Date of Birth",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ).paddingSymmetric(horizontal: 20),
                    )),
                const Gap(10),
                AnimatedToggleSwitch<bool>.dual(
                  current: isMale,
                  first: true,
                  second: false,
                  spacing: 20.0,
                  style: ToggleStyle(
                    borderRadius: BorderRadius.circular(18),
                    borderColor: Colors.transparent,
                    boxShadow: ColorConstants.boxShadow(context),
                  ),
                  borderWidth: 3.0,
                  height: 50,
                  onChanged: (b) => setState(() => isMale = b),
                  styleBuilder: (b) => ToggleStyle(
                      indicatorColor: b ? Colors.blue : Colors.pinkAccent),
                  iconBuilder: (value) => value
                      ? const Icon(
                          Icons.man,
                          size: 40,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.woman,
                          size: 40,
                          color: Colors.white,
                        ),
                  textBuilder: (value) => value
                      ? const Center(child: Text('Male'))
                      : const Center(child: Text('Female')),
                ),
              ],
            ),
            Container(
                    constraints: const BoxConstraints(maxWidth: 180),
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Theme.of(context).cardColor,
                        boxShadow: ColorConstants.boxShadow(context)),
                    child: MyDropdown(
                        shadow: true,
                        list: AppConstants.roles,
                        selectedValue: null,
                        onChanged: (x) {
                          if (!assignedRoles.contains(x)) {
                            setState(() {
                              assignedRoles.add(x);
                            });
                          }
                        },
                        labelText: "Add role"))
                .paddingSymmetric(vertical: 10),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: assignedRoles.length,
              itemBuilder: (context, index) {
                if (assignedRoles[index] == "Security Guard") {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).cardColor,
                        boxShadow: ColorConstants.boxShadow(context)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "security_guard".tr,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        MyTextField(labelText: "gate_id".tr)
                      ],
                    ),
                  );
                } else {
                  return Container();
                }
              },
            )
          ],
        ).paddingSymmetric(horizontal: 12, vertical: 10),
      ),
    );
  }
}
