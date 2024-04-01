import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/View/Roles/Owner/Employee/AddEmployee.dart';
import 'package:moolwmsstore/View/Roles/Owner/widget/MyButton.dart';
import 'package:moolwmsstore/View/common/myTextField.dart';

class EmployeeList extends StatelessWidget {
  const EmployeeList({super.key});

  @override
  Widget build(BuildContext context) {
    final List tags = [
      {"title": "Name", "flex": 1},
      {"title": "Mobile No.", "flex": 1},
      {"title": "Employee ID", "flex": 1},
      {"title": "Category", "flex": 1},
      {"title": "Designation", "flex": 1},
      {"title": "Timestamp", "flex": 1},
      {"title": "Info", "flex": 1},
      {"title": "icon", "flex": 1},
    ];
    return Scaffold(
      body: Column(
        children: [
          const Gap(40),
          Row(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 300),
                child: MyTextField(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      "assets/icons/Search Icon.png",
                      height: 6,
                    ),
                  ),
                  labelText: "Search",
                ),
              ),
              const Spacer(),
              if (!context.isPhone)
                MyButton(
                  onTap: () {
                  //  context.pushRoute(AddEmployee());
                  },
                  // glow: true,
                  width: 300,
                  title: "Register",
                  suffixIcon: Image.asset(
                    "assets/icons/Add Red.png",
                    height: 22,
                  ),
                ),
            ],
          ),
          const Gap(10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12 * 3),
            height: 60,
            color: Colors.black,
            child: Row(
              children: List.generate(tags.length, (index) {
                if (tags[index]["title"] == "icon") {
                  return IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ));
                }
                if (tags[index]["title"] == "Info") {
                  return Expanded(
                    flex: tags[index]["flex"],
                    child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/icons/Eye.png",
                          height: 22,
                        )),
                  );
                }

                return Expanded(
                    flex: tags[index]["flex"],
                    child: Text(
                      tags[index]["title"],
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ));
              }),
            ),
          ),
          Expanded(child: ListView.builder(itemBuilder: (context, liatIndex) {
            return Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 2,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12 * 3),
              height: 60,
              child: Row(
                children: List.generate(tags.length, (index) {
                  if (tags[index]["title"] == "Info") {
                    return Expanded(
                      flex: tags[index]["flex"],
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/icons/Eye.png",
                            height: 22,
                          )),
                    );
                  }
                  if (tags[index]["title"] == "icon") {
                    return IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                        ));
                  }
                  return Expanded(
                      flex: tags[index]["flex"],
                      child: Text(
                        tags[index]["title"],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ));
                }),
              ),
            ).paddingSymmetric(vertical: 4);
          }))
        ],
      ),
    );
  }
}
