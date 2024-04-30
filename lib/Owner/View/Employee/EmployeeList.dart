//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Owner/View/Common/customButton.dart';

class EmployeeList extends StatelessWidget {
  const EmployeeList({super.key});

  @override
  Widget build(BuildContext context) {
    final List tags = [
      {"title": "Name", "flex": 1},
      {"title": "Mobile No.", "flex": 1},
      // {"title": "Employee ID", "flex": 1},
      // {"title": "Category", "flex": 1},
      {"title": "Designation", "flex": 1},
      // {"title": "Timestamp", "flex": 1},
      {"title": "Info", "flex": 1},
      {"title": "icon", "flex": 1},
    ];
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
            //height: 0,
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
            children: List.generate(tags.length, (index) {
              if (tags[index]["title"] == "icon") {
                return IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ));
              }
              if (tags[index]["title"] == "Info") {
                return IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Container());
              }

              return Expanded(
                  flex: tags[index]["flex"],
                  child: Text(
                    tags[index]["title"],
                    style: const TextStyle(
                      color: Color(0xFF5A57FF),
                      fontSize: 12,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.48,
                    ),
                  ));
            }),
          ).paddingSymmetric(horizontal: 12),
          Expanded(child: ListView.builder(itemBuilder: (context, liatIndex) {
            return Container(
              height: 40,
              decoration: ShapeDecoration(
                color: const Color(0xFFFAF9FF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: List.generate(tags.length, (index) {
                  if (tags[index]["title"] == "Info") {
                    return IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/icons/Eye.png",
                          height: 22,
                        ));
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
                          color: Color(0xFF353535),
                          fontSize: 12,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                        ),
                      ));
                }),
              ),
            ).paddingSymmetric(vertical: 4);
          }))
        ],
      ).paddingSymmetric(vertical: 16, horizontal: 12),
    );
  }
}
