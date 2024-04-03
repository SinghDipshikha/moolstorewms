import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/Roles/Plant%20Manager/Assets/assetEntry.dart';
import 'package:moolwmsstore/View/common/customButton.dart';
import 'package:moolwmsstore/View/common/myTextField.dart';

@RoutePage()  
class AssetsList extends StatelessWidget {
  const AssetsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List tags = [
      {"title": "S.No.", "flex": 1},
      {"title": "Asset Name", "flex": 2},
      {"title": "Asset Image", "flex": 2},
      {"title": "Category", "flex": 1},
      {"title": "Asset Cost", "flex": 1},
      {"title": "Invoice No.", "flex": 1},
      {"title": "icon", "flex": 1},
    ];
    return context.isPhone
        ? Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: CustomButton2(
                    onTap: () {
                      Get.to(const AssetEntry());
                    },
                    leftIcon: "assets/icons/Add Red2.png",
                    title: "Add New Asset")
                .paddingSymmetric(horizontal: 12),
            body: ListView.builder(itemBuilder: (context, i) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                child: Container(
                    width: 340,
                    height: 100,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0C000000),
                          blurRadius: 2,
                          offset: Offset(0, 1.50),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/icons/Asset Image.png"),
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Asset Name',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF8B8B8B),
                                  fontSize: 10,
                                  //
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(10),
                              Text(
                                'Asset One',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Category',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF8B8B8B),
                                  fontSize: 10,
                                  //
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(10),
                              Text(
                                'Category 1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Asset Cost',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF8B8B8B),
                                  fontSize: 10,
                                  //
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(10),
                              Text(
                                '\$1500',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            }).paddingOnly(bottom: 100),
            appBar: AppBar(
              centerTitle: false,
              backgroundColor: AppColors.primaryColor,
              title: const Text("Asset List",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  )),
            ),
          )
        : Scaffold(
            body: Column(
              children: [
                const Gap(40),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: MyTextField(
                    labelText: "Search",
                  ),
                ),
                const Gap(10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12 * 3),
                  height: 60,
                  color: Colors.black,
                  child: Row(
                    children: List.generate(tags.length, (index) {
                      if (tags[index]["title"] == "icon") {
                        return Expanded(
                          flex: tags[index]["flex"],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_horiz,
                                color: Colors.white,
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
                Expanded(
                  child: ListView.builder(
                      // shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                          child: Container(
                            height: 100,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x11000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 1.50),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12 * 2),
                              child: Row(
                                children: List.generate(tags.length, (index) {
                                  if (tags[index]["title"] == "S.No.") {
                                    return Expanded(
                                      flex: tags[index]["flex"],
                                      child: Text(
                                        i <= 8 ? "0${i + 1}" : "${i + 1}",
                                      ),
                                    );
                                  }
                                  if (tags[index]["title"] == "Asset Image") {
                                    return Expanded(
                                        flex: tags[index]["flex"],
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                  "assets/icons/Asset Image.png"),
                                            )
                                          ],
                                        ));
                                  }
                                  if (tags[index]["title"] == "icon") {
                                    return Expanded(
                                      flex: tags[index]["flex"],
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.more_horiz,
                                            color: Colors.black,
                                          )),
                                    );
                                  }

                                  return Expanded(
                                    flex: tags[index]["flex"],
                                    child: Text(
                                      tags[index]["title"],
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                        );
                      }),
                )
              
              
              
              ],
            ),
          );
  }
}
