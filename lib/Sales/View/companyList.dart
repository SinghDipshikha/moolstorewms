import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:moolwmsstore/Owner/View/Common/customButton.dart';

class CompanyList extends StatelessWidget {
  const CompanyList({super.key});

  @override
  Widget build(BuildContext context) {
    final List tags = [
      {"title": "Company Name", "flex": 1},
      {"title": "Phone No.", "flex": 1},
      // {"title": "Employee ID", "flex": 1},
      // {"title": "Category", "flex": 1},
      {"title": "Date & Time", "flex": 1},
      // {"title": "Timestamp", "flex": 1},
      {"title": "Info", "flex": 1},
      {"title": "icon", "flex": 1},
    ];
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomButton(
        onTap: () {},
        title: 'Add Company',
      ).paddingSymmetric(horizontal: 12),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xFF232323),
        title: const Text(
          'Company List',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w500,
            height: 0,
            letterSpacing: -0.80,
          ),
        ),
      ),
      body: Column(
        children: [
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                      color: const Color(0xFF5A57FF).withOpacity(0.4)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/Filter (R).png',
                      height: 19,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Filter',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFA7A7A7),
                        fontSize: 16,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.64,
                      ),
                    )
                  ],
                ),
              ),
              const Gap(20),
              Container(
                height: 40,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                      width: 1,
                      color: const Color(0xFF5A57FF).withOpacity(0.4)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/search-normal.png',
                      height: 19,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Search',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFA7A7A7),
                        fontSize: 16,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.64,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const Gap(30),
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
          ).paddingSymmetric(horizontal: 20),
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
            ).paddingSymmetric(vertical: 4, horizontal: 10);
          }))
        ],
      ),
    );
  }
}
