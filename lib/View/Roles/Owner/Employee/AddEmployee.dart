import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/common/myTextField.dart';
import 'package:moolwmsstore/View/common/titleContainer.dart';
import 'package:moolwmsstore/utils/appConstants.dart';

class AddEmployee extends StatelessWidget {
  AddEmployee({super.key});
  List<String> list = <String>['One', 'Two', 'Three', 'Four'];
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
                              ? MyTextField()
                              : Expanded(child: MyTextField())
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
                              ? MyTextField()
                              : Expanded(child: MyTextField())
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
                            child: DropdownMenu<String>(
                              //width: double.infinity,
                              trailingIcon: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black,
                              ),
                              hintText: "Select Designation",
                              
                              onSelected: (String? value) {
                                // This is called when the user selects an item.
                                // setState(() {
                                //   dropdownValue = value!;
                                // });
                              },
                              dropdownMenuEntries: AppConstants.roles
                                  .map<DropdownMenuEntry<String>>(
                                      (String value) {
                                return DropdownMenuEntry<String>(
                                    value: value, label: value);
                              }).toList(),
                            ),
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

class MyButton extends StatelessWidget {
  String title;
  double? width;
  void Function()? onTap;
  String? suffixIcon;

  String? prefixIcon;
  bool glow;
  MyButton(
      {super.key,
      this.onTap,
      this.width,
      this.suffixIcon,
      this.prefixIcon,
      this.glow = false,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 50,
        alignment: Alignment.center,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: glow ? Colors.black : Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          shadows: glow
              ? null
              : [
                  const BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 2,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null)
              Image.asset(
                prefixIcon!,
                color: glow ? Colors.white : Colors.black,
                height: 14,
              ),
            Text(
              title,
              style: TextStyle(color: glow ? Colors.white : Colors.black),
            ).paddingSymmetric(horizontal: 10),
            if (suffixIcon != null)
              Image.asset(
                suffixIcon!,
                color: glow ? Colors.white : Colors.black,
                height: 14,
              ),
          ],
        ).paddingSymmetric(horizontal: 12),
      ),
    );
  }
}
